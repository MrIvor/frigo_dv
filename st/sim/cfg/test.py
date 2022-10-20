#!/usr/bin/env python

import os
import ssl
import sys
import getopt
import re
import datetime
import json
from optparse import OptionParser
from pathlib import Path

current_path          = os.getcwd()
run_log_info          = {}
run_log_file          = current_path+'/make_workspace.log'
run_log_fr            = open(run_log_file, 'w')

def print_func(i_str, print_flg=1):
    if print_flg == 1:
        print(i_str)
    run_log_fr.write(i_str+'\n')
    print("run_log_fr:",run_log_fr)

if __name__== "__main__":
    print_func("----------------------------------")
    syscmd = 'git pull'
    print_func(syscmd+'......')
    print_func("----------------------------------")
    


