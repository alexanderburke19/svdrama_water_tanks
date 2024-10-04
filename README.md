# Water Tanks Monitoring System

This project is designed to monitor and manage water levels in multiple tanks using a Raspberry Pi and Python. The system provides real-time data and alerts to ensure efficient water usage and prevent overflow or dry conditions.

## Features

- **Real-time Monitoring**: Continuously tracks water levels in multiple tanks.
- **Alerts**: Sends notifications when water levels are too high or too low.
- **Data Logging**: Records historical data for analysis and reporting.
- **User Interface**: Provides a web-based dashboard for easy monitoring and control.

## Components

- **Raspberry Pi**: The central controller for the system.
- **Water Flow Sensors**: Measure the inflow and outflow to determine water usage.
- **Python Scripts**: Handle data collection, processing, and alerts.
- **Web Dashboard**: Displays real-time data and historical trends.

## Installation

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/alexburke19/svdrama_water_tanks.git
    cd water_tanks
    ```

2. **Install Dependencies**:
    ```bash
    pip install -r requirements.txt
    ```

3. **Configure Sensors**: Connect the water flow sensors to the Raspberry Pi GPIO pins as per the wiring diagram.

4. **Run the Application**:
    ```bash
    python main.py
    ```

## Usage

- Access the web dashboard at `http://<raspberry_pi_ip>:5000` to monitor water levels.
- Configure alert thresholds and notification settings in the `config.json` file.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License.

## Contact

For any questions or suggestions, please open an issue or contact the project maintainer at `your.email@example.com`.

