package main

import (
	"fmt"
)

func main() {
	configuration := config{
		address:  ":8080",
		database: dbConfig{},
	}

	api := application{
		config: configuration,
	}

	fmt.Println(api)

}
