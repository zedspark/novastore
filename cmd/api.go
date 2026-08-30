package main

import (
	"net/http"
	"time"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
)

func (app *application) mount() http.Handler {
	router := chi.NewRouter()

	router.Use(middleware.RequestID)
	router.Use(middleware.ClientIPFromRemoteAddr)
	router.Use(middleware.Logger)
	router.Use(middleware.Recoverer)

	router.Use(middleware.Timeout(60 * time.Second))

	router.Get("/health", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("hi"))
	})

	return router
}

//func (app *application) run(h http.Handler) error {
//	server := &http.Server{
//		Addr:    app.config.address,
//		Handler: h,
//	}
//}

type application struct {
	config config
}

type config struct {
	address  string
	database dbConfig
}

type dbConfig struct {
	dsn string
}
