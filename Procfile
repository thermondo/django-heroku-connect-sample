release: python manage.py migrate --no-input
web: waitress-serve --port=${PORT:-5000} --threads=${WAITRESS_THREADS:-4} example.wsgi:application
