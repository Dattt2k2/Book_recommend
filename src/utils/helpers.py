def load_config(file_path):
    import json
    with open(file_path, 'r') as file:
        config = json.load(file)
    return config

def log_message(message):
    import logging
    logging.basicConfig(level=logging.INFO)
    logging.info(message)

def validate_data(data):
    if not data:
        raise ValueError("Data cannot be empty")
    # Additional validation logic can be added here

def save_results(results, file_path):
    import json
    with open(file_path, 'w') as file:
        json.dump(results, file)