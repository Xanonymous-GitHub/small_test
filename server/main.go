package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"
)

const (
	rootPath      = "/"
	imgServerPath = "/test-img"
)

var (
	imgByte       []byte
	imgByteLenStr string
	imgName       string
)

func prepareImageByte() []byte {
	imgPath := os.Getenv("IMG_PATH")
	if imgPath == "" {
		panic("IMG_PATH env variable not set")
	}

	image, err := os.ReadFile(imgPath)
	if err != nil {
		panic(err)
	}

	imgByteLenStr = strconv.Itoa(len(image))
	imgName = extractFileNameFromPath(imgPath)

	return image
}

func main() {
	srv := &http.Server{
		Addr: func() string {
			port := os.Getenv("PORT")
			if port == "" {
				port = "8080"
			}
			return ":" + port
		}(),
	}

	http.HandleFunc(rootPath, handleRootOk)
	http.HandleFunc(imgServerPath, handleImgRequest)

	imgByte = prepareImageByte()

	if err := srv.ListenAndServe(); err != nil {
		log.Fatalf("listen: %s\n", err)
	}

	log.Println("Stopped serving")
}

func handleImgRequest(w http.ResponseWriter, r *http.Request) {
	log.Println("Image Request received, ip:", r.RemoteAddr)

	w.Header().Set("Content-Type", "application/octet-stream")
	w.Header().Set("Content-Length", imgByteLenStr)
	w.Header().Set("Content-Disposition", "attachment; filename="+imgName)

	_, err := w.Write(imgByte)
	if err != nil {
		panic(err)
	}

	log.Println("Image sent.")
	return
}

func handleRootOk(w http.ResponseWriter, r *http.Request) {
	if r.URL.Path != rootPath {
		http.NotFound(w, r)
		return
	}

	_, err := w.Write([]byte(fmt.Sprintf("The server is running. Send a GET request to %v to get the image.", imgServerPath)))
	if err != nil {
		panic(err)
	}

	return
}

func extractFileNameFromPath(path string) string {
	lastIndex := len(path) - 1
	for i := lastIndex; i >= 0; i-- {
		if path[i] == '/' {
			return path[i+1:]
		}
	}
	return path
}
