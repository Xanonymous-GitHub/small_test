package handlers

import (
	"fmt"
	"github.com/valyala/fasthttp"
	"log"
)

type Handler struct {
	ImgName  string
	ImgBytes []byte
}

const (
	rootPath      = "/"
	imgServerPath = "/test-img"
)

func (h *Handler) RootHandler(ctx *fasthttp.RequestCtx) {
	switch string(ctx.Path()) {
	case rootPath:
		h.handleRootOk(ctx)
	case imgServerPath:
		h.imgHandler(ctx)
	}
}

func (h *Handler) handleRootOk(ctx *fasthttp.RequestCtx) {
	_, err := ctx.WriteString(fmt.Sprintf("The server is running. Send a GET request to %v to get the image.", imgServerPath))
	if err != nil {
		panic(err)
	}
	return
}

func (h *Handler) imgHandler(ctx *fasthttp.RequestCtx) {
	log.Println("Image Request received, ip:", ctx.RemoteIP())

	ctx.SetContentType("application/octet-stream")
	ctx.Response.Header.Set("Content-Disposition", "attachment; filename="+h.ImgName)

	_, err := ctx.Write(h.ImgBytes)
	if err != nil {
		panic(err)
	}

	log.Println("Image sent.")
	return
}
