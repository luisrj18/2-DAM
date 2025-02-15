import subprocess

def stop_apache():
    try:
        # Detener Apache en XAMPP (modifica la ruta si es necesario)
        subprocess.run(r'"C:\xampp\xampp_stop.exe"', check=True)
        print("Apache server stopped successfully.")
    except subprocess.CalledProcessError:
        print("Failed to stop Apache server.")

if __name__ == "__main__":
    stop_apache()
