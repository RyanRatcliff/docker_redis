# Docker Redis
A very basic Docker Redis container.

### To build the container
```
docker build -t ryanratcliff/redis .
```

### Alternatively, the container can be pulled from Docker Registry
```
docker pull ryanratcliff/redis
```

# Example usages

### To startup as is
```
docker run -d ryanratcliff/redis
```

### To startup with all ports exposed to host
```
docker run -d -P ryanratcliff/redis
```

### To startup with specific port exposed
```
docker run -d p 6379:6379 ryanratcliff/redis
```
