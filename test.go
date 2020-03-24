package main

import (
	"time"
)

func main() {
	for i := 1; i <= 4; i++ {
		go func() {
			for {
			}
		}()
	}
	time.Sleep(60 * time.Second)
}
