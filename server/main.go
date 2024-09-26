package main

import (
	"github.com/Xanonymous-GitHub/small_test/handlers"
	"github.com/valyala/fasthttp"
	"log"
	"os"
)

var (
	imgByte []byte
	imgName string
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

	imgName = extractFileNameFromPath(imgPath)

	return image
}

func main() {
	imgByte = prepareImageByte()

	handler := handlers.Handler{
		ImgName:  imgName,
		ImgBytes: imgByte,
	}

	err := fasthttp.ListenAndServe(
		func() string {
			port := os.Getenv("PORT")
			if port == "" {
				port = "8080"
			}
			return ":" + port
		}(),
		handler.RootHandler,
	)

	if err != nil {
		log.Fatalf("listen: %s\n", err)
		return
	}

	log.Println("Stopped serving")
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
