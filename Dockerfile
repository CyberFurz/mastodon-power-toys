FROM python:3.11-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

ENV MASTODON_API_URL="https://mastodon.social"
ENV MASTODON_ACCESS_TOKEN=""
ENV API_KEY="0178b552-0503-450b-b9b0-6fdc8680a258"
ENV PORT=5000

CMD ["python", "./main.py"]