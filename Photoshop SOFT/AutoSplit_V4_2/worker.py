# -*- coding: utf-8 -*-
"""One-click AutoSplit worker, invoked from Photoshop JSX on Windows."""
from pathlib import Path
import os
import sys
import traceback

ROOT = Path(__file__).resolve().parent
STATUS = ROOT / 'status.txt'


def report(state, message, count=''):
    tmp = ROOT / 'status.tmp'
    tmp.write_text(state + '\n' + str(message).replace('\n', ' ') + '\n' + str(count) + '\n', encoding='utf-8-sig')
    os.replace(str(tmp), str(STATUS))


def main():
    try:
        fields = (ROOT / 'job.txt').read_text(encoding='utf-8-sig').splitlines()
        if len(fields) < 2:
            raise ValueError('Invalid job.txt')
        input_png, result_dir = fields[:2]
        from autosplit import split_image
        out, total = split_image(input_png, output=result_dir)
        report('OK', str(out), total)
    except Exception as e:
        report('ERROR', str(e))
        traceback.print_exc()
        return 1
    return 0


if __name__ == '__main__':
    sys.exit(main())
