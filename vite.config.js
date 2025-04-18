import { defineConfig, loadEnv } from 'vite'
import react from '@vitejs/plugin-react'
// https://vite.dev/config/
export default ({mode})=>{

  process.env = {...process.env, ...loadEnv(mode, process.cwd())};
  const {VITE_SERVER_PORT} = process.env;
  return defineConfig({
    plugins: [react()],
    server: {
      port: VITE_SERVER_PORT,
      host: true,
      origin: `http://localhost:${VITE_SERVER_PORT}`,
    }
  })
}
