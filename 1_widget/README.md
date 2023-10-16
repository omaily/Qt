# Qt
устанавливаем g++ >= 5 some OpenGL
sudo apt-get -y install build-essential libglu1-mesa-dev libpulse-dev libglib2.0-dev  

https://pkuwwt.github.io/programming/2020-04-05-usage-of-go-binding-for-qt/     

>export GO111MODULE=off;  
go get -v github.com/therecipe/qt/cmd/...  
$(go env GOPATH)/bin/qtsetup -test=false  