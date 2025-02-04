# Segger IDE
# Featured tags
- `5.40` - Segger 5.40, gcc-arm-none-eabi-10.3-2021.10, nrf5_sdk_17.1.0_ddde560, nrfutil, BMI270_SensorAPI, BMP3_SensorAPI, micro-ecc

**Note: This repo does not have pre-built images, this is the only example. Your libraries, deps and sdk versions may (and definitely will) differ.**

# Description

Dockerized Segger IDE with some deps for building projects from CLI or inside CI pipelines (`emBuild` command)

Linux container:
```bash
docker run -it --rm -v <path>:/sdk/examples/projects local/segger bash -c "cd projectName/path/to/emProject  && emBuild -config Release projectName.emProject"
```
