# 🐍 Base Python image
FROM python:3.11-slim

# 📁 Set working directory
WORKDIR /app

# 📄 Copy dependencies file
COPY requirements.txt .

# 📦 Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 📂 Copy the application code
COPY ./app ./app

# 🚀 Run the app using Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
