## Movies Fronted

Based on [this tutorial](https://www.youtube.com/watch?v=5PdEmeopJVQ&t=7731s)

### Development
+ Pre-requisites : Node, nginx

1. Create a `.env` file (similar to `.env.example`) to provide the API URL.

2. Run 
```bash
npm install
npm build
```

3. Copy the result of `dist` directory into tour nginx entrypoint.

4. Run nginx!