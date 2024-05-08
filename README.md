![20240508_222414 (1)](https://github.com/askadityapandey/termicture/assets/144938685/b65c3591-a444-4eb7-9785-fe5e082b73bb)


## Overview

The script iterates through each file in the input folder, checks if the file is an image (jpg, jpeg, or png), and then compresses it using ImageMagick. The compression process involves resizing the image to 50% of its original size and setting the quality to 85%. The compressed image is saved with the same filename but with `_compressed` appended to the filename.

## Check Compressed File Size

After compressing each image, the script calculates the compressed file size using the `stat` command. It then checks if the compressed file size is within the target size specified. If the compressed file size is larger than the target size, the script displays a warning message.

## Output

The script displays the following output:

- A message indicating the processing of each image, including the original and compressed filenames.
- A message indicating the compressed file size for each image.
- A warning message if the compressed file size is larger than the target size.
- A final message indicating the completion of the compression process.
## Installation

### Ubuntu/Debian:

```bash
$ sudo apt-get install imagemagick
```

### macOS
```bash 
$ brew install imagemagick
```

### Windows
Download and install ImageMagick from the official website: ImageMagick Download

### Fedora
```bash
$ sudo pacman -S imagemagick
```



## Troubleshooting

### Common Issues

- **Invalid Input Folder:** Ensure the input folder exists and contains the images to be compressed.
- **Invalid Target Size:** Ensure the target size is a valid number in kilobytes (KB).
- **Image Compression Failure:** Check the ImageMagick installation and ensure it is functioning correctly.

## License

This script is licensed under the MIT License. You are free to use, modify, and distribute it as you see fit.

## Acknowledgments

This script was developed using the ImageMagick library and the Bash programming language. The script's functionality is inspired by various online resources and tutorials on image compression and Bash scripting.

## Contact

If you have any questions or need assistance with the script, please feel free to reach out to me.
