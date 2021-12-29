https://itzone.com.vn/vi/article/ap-dung-docker-cho-ruby-on-rails-app

build image 
	-> docker build -t rails-base --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f Dockerfile.rails .
taoj project 
	-> docker run -it -v $PWD:/opt/app rails-base rails new --skip-bundle base_project
