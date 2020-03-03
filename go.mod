module github.com/paxosglobal/btcd

replace github.com/btcsuite/btcd => github.com/paxosglobal/btcd v0.20.1-beta.0.20200206213050-d0903b768de2

require (
	github.com/aead/siphash v1.0.1 // indirect
	github.com/btcsuite/btcd v0.20.1-beta
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f
	github.com/btcsuite/btcutil v0.0.0-20190425235716-9e5f4b9a998d
	github.com/btcsuite/go-socks v0.0.0-20170105172521-4720035b7bfd
	github.com/btcsuite/goleveldb v0.0.0-20160330041536-7834afc9e8cd
	github.com/btcsuite/snappy-go v1.0.0 // indirect
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/btcsuite/winsvc v1.0.0
	github.com/davecgh/go-spew v0.0.0-20171005155431-ecdeabc65495
	github.com/jessevdk/go-flags v0.0.0-20141203071132-1679536dcc89
	github.com/jrick/logrotate v1.0.0
	github.com/kkdai/bstream v1.0.0 // indirect
	github.com/onsi/ginkgo v1.12.0 // indirect
	github.com/onsi/gomega v1.9.0 // indirect
	golang.org/x/crypto v0.0.0-20170930174604-9419663f5a44
)

go 1.12
