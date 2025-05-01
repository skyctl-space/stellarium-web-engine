ARG TARGETARCH
FROM emscripten/emsdk:4.0.8 AS amd64
FROM emscripten/emsdk:4.0.8-arm64 AS arm64

# Use the correct base image depending on architecture
FROM amd64 AS final-amd64
FROM arm64 AS final-arm64

# Install scons
RUN apt-get update && \
    apt-get install -y scons
