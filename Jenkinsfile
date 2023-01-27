/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'python manage.py test'
            }
        }
        stage('Build') {
            steps {
                sh 'python manage.py collectstatic --noinput'
                sh 'python manage.py makemigrations'
                sh 'python manage.py migrate'
            }
        }
        stage('Deploy') {
            steps {
                sh 'python manage.py runserver'
            }
        }
    }
}