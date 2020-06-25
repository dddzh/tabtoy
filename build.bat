echo("build windows tabtoy")
go build -o ./tabtoy.exe ./

echo("build mac tabtoy")
SET CGO_ENABLED=0
SET GOOS=darwin
SET GOARCH=amd64
go build -o ./tabtoy_mac ./

echo("build linux tabtoy")
SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build -o ./tabtoy ./

pause