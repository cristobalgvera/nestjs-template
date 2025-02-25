FROM node:22-alpine AS base_image

FROM base_image AS build
WORKDIR /app
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
COPY package.json pnpm-lock.yaml ./
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile
COPY . .
RUN pnpm build
RUN pnpm prune --prod --config.ignore-scripts=true

FROM base_image
WORKDIR /app
ARG PORT
COPY --from=build /app/app .
COPY --from=build /app/node_modules ./node_modules
EXPOSE $PORT
USER node
CMD ["node", "src/main.js"]
