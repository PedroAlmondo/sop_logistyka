FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN python -m amplpy.modules install highs gurobi

COPY . .

EXPOSE 5000

CMD ["python", "server.py"]