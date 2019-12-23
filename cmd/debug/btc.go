package main

import (
	"fmt"
	"github.com/btcsuite/btcd/chaincfg/chainhash"
	"github.com/paxosglobal/btcd/rpcclient"
)

func main() {
	fmt.Println("vim-go")
	connCfg := &rpcclient.ConnConfig{
		Host:         "bitcoin.qa.itbitnonprod.com:19348",
		User:         "itbit",
		Pass:         "dNcmjINarwQU75gwdrPj",
		HTTPPostMode: true, // Bitcoin core only supports HTTP POST mode
		DisableTLS:   true, // Bitcoin core does not provide TLS by default
	}
	// Notice the notification parameter is nil since notifications are
	// not supported in HTTP POST mode.
	fmt.Println("connecting to node")

	btcClient, err := rpcclient.New(connCfg, nil)
	if err != nil {
		panic(err)
	}
	fmt.Println("connected")

	h, err := chainhash.NewHashFromStr("0000000000000f46179b523cf5ed1f0e96206592493dc455c0eba2d82b55d2c2")
	if err != nil {
		panic(err)
	}
	fmt.Println("getting block")

	block, err := btcClient.GetBlockVerboseTx(h)
	if err != nil {
		panic(err)
	}
	for _, tx := range block.Tx {
		fmt.Println(tx)
	}
	fmt.Println(block)
}
