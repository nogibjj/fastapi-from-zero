[![CI](https://github.com/nogibjj/fastapi-from-zero/actions/workflows/main.yml/badge.svg)](https://github.com/nogibjj/fastapi-from-zero/actions/workflows/main.yml)

# fastapi-from-zero
A repository to demonstrate FastAPI

/docs get to swagger

![fastapi](https://user-images.githubusercontent.com/58792/192342466-e043cce7-c4f4-4811-9d0c-68fb884daadf.png)



## Docker

`docker build .`
`docker image ls` #find image
`docker run -p 127.0.0.1:8080:8080 93fa55efa692` <replace with your image>

### Cloud9 + ECR + App Runner
  
* Clone repo into Cloud9 (pick a machine with decent size CPU and RAM if possible, but students should use micro)
* Add ssh keys to GitHub
* [resize to bigger disk](https://gist.github.com/wongcyrus/a4e726b961260395efa7811cab0b4516)
* Create virtualenv and add to bashrc and source
`python3 -m venv ~/.venv && echo 'source ~/.venv/bin/activate' >> ~/.bashrc && source ~/.bashrc`
* cd into checkout and run `make install`
* Preview running FastAPI app after running:  python main.py

<img width="1835" alt="Screen Shot 2022-09-28 at 12 32 52 PM" src="https://user-images.githubusercontent.com/58792/192836641-cd7ef757-4a4b-4722-bb17-d88980f4e9d4.png">

  

  
## References

* [FastAPI Docker docs](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker)
