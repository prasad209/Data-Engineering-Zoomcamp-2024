FROM python:3.9

RUN command pip install pandas



ENTRYPOINT [ "python", "pipeline.py"  ]

