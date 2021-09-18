from pathlib import Path
import sys
import pandas as pd
from random import shuffle
import random
import numpy as np
import os
import re
import shutil
from tqdm import tqdm
import argparse

ftef = 'quicKlip.txt'
targetfile = r'D:\Developed\Automation\Batch\instaIndian\heartQueens.txt'

def main():
    with open(ftef,'r') as fp:
        content = fp.readlines()
        content1 = content[:]
    for fpline in content:
        line = fpline.strip('\n')
        if 'https://www.instagram.com/' in line: 
            extractUserId = line.split('/')[3] + '\n'
            if extractUserId in content:
                with open(targetfile,'a+') as tp:
                    tp.write(extractUserId)
                content1.remove(extractUserId)    
    with open(ftef,'w') as fp:
        fp.writelines(content1)


if __name__ == '__main__':
    main()