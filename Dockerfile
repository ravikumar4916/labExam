FROM python  
COPY . /src  
CMD ["python", "/src/hello.py"]  