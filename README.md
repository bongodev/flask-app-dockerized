# Flask App Dockerized

This project contains a simple Flask application that runs inside a Docker container.

## Deployment on AWS EC2
<hr>

Follow these steps to deploy this app on an AWS EC2 instance.

### Step 1: Launch an EC2 Instance
1. Go to the **AWS Management Console** → **EC2 Dashboard**.
2. Click on **Launch Instance**.
3. **Choose an Amazon Machine Image (AMI):**
    - Select **Ubuntu** or **Amazon Linux 2**.
4. **Select an Instance Type:**
    - Choose **t2.micro** (Free Tier) or a larger instance if needed.
5. **Configure Security Group:**
    - Add a rule to allow **SSH (port 22)** from your IP.
    - Add a rule to allow **HTTP (port 80)** or **Custom TCP (port 5000)** from anywhere (**0.0.0.0/0**).
6. **Launch the instance** and download the private key (`.pem`).

### Step 2: Connect to the EC2 Instance
```sh
ssh -i your-key.pem ubuntu@your-ec2-public-ip
```

### Step 3: Install Docker on EC2
```sh
sudo apt update -y
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
```

### Step 4: Clone the Repository
```sh
git clone https://github.com/mamunurrashid1010/flask-app-dockerized.git
cd flask-app-dockerized
```

### Step 5: Build and Run the Docker Container
```sh
sudo docker build -t flask-app .
sudo docker run -d -p 5000:5000 flask-app
```

### Step 6: Access the Flask App
- Open your browser and visit: `http://your-ec2-public-ip:5000`

## Stopping and Removing the Container
```sh
sudo docker ps   # List running containers
sudo docker stop <container_id>  # Stop the container
sudo docker rm <container_id>    # Remove the container
```

## Cleaning Up
```sh
sudo docker image prune -a   # Remove unused Docker images
```


