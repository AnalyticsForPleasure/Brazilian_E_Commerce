import pandas as pd
import numpy as np
import os
from colorama import Style, Fore

if __name__ == '__main__':
    pd.set_option('display.max_rows', 500)  # To see all rows
    pd.set_option('display.max_columns', 500)  # To see all columns
    pd.set_option('display.width', 1000)

    res = os.listdir('data')

    for file in res:
        data = pd.read_csv(f'data/{file}')
        print(Fore.GREEN + file + "#" * 50 + Style.RESET_ALL)
        print(data.head())
        print(Fore.GREEN + "#" * 50 + Style.RESET_ALL)
