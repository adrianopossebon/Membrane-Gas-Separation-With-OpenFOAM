import os

# These functions are used to copy the initial condition
# files in folder 0 to the latest folder.
def is_time_folder(name):
    try:
        return float(name) != 0.0  # Exclude folder "0"
    except ValueError:
        return False
        
def copy_field_files(from_folder, to_folder, fields):
    for field in fields:
        for candidate in [field, f"{field}.orig"]:
            src = os.path.join(from_folder, candidate)
            if os.path.isfile(src):
                dst = os.path.join(to_folder, candidate)
                os.system(f'cp "{src}" "{dst}"')
                print(f"Copied '{candidate}' to '{to_folder}'")
                break
        else:
            print(f"Warning: neither '{field}' nor '{field}.orig' found in '{from_folder}'")

