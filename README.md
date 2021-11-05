Docker wrapping of https://github.com/tahomi-idq/spleeter

Use `docker build --tag [your-image-name] [path-to-dockerfile-directory]` to build image.

Use `docker run -d -v [your-directory]:/app/temp -p 9966:9966 --cpus=0.5 [your-image-name]` to run your docker image and mount directory which will be used by spleeter (must be empty).

Then go to `localhost:9966` where is UI of app.
Pass duration of media in seconds and mediafile.
