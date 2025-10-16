FROM python:3.11-slim
WORKDIR /mock
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
RUN mkdir -p /etc/pip && printf "[global]\ntrusted-host = pypi.org\n\tfiles.pythonhosted.org\nindex-url = https://pypi.org/simple\n" > /etc/pip.conf
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt --trusted-host pypi.org --trusted-host files.pythonhosted.org
COPY mock.py .
EXPOSE 11435
CMD ["uvicorn","mock:app","--host","0.0.0.0","--port","11435"]
