FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /home/app

## Step 2:
# Copy source code to working directory
COPY requirements.txt .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
		pip install -r requirements.txt

COPY . .

## Step 4:
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
