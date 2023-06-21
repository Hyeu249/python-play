FROM python:3.9-slim

WORKDIR /app

COPY package.txt ./

RUN pip install --no-cache-dir -r package.txt

COPY . .

EXPOSE 8000

# Start the FastAPI application
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]