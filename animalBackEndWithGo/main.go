package main

import (
	"fmt"
	"log"
	"net/http"
)

// import "github.com/google/uuid"

func homePage(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "welcome to the home page")
	fmt.Printf("Hit the home page endpoint")
}

func main() {
	http.HandleFunc("/", homePage)
	log.Fatal((http.ListenAndServe(":8080", nil)))
	// fmt.Println(" hello word")
}

type Thread struct {
	// ID uuid.UUID db:"id"

}
