FROM jupyter/pyspark-notebook:latest

USER root

# Cài đặt các thư viện Python bổ sung
RUN pip install --no-cache-dir \
    matplotlib \
    seaborn \
    pandas \
    scikit-learn \
    findspark \
    pyarrow \
    hdfs

# Xóa các bước cài đặt Hadoop gây lỗi
# RUN wget https://downloads.apache.org/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz && \
#     tar -xzf hadoop-3.2.2.tar.gz -C /opt/ && \
#     rm hadoop-3.2.2.tar.gz

# Thay vào đó, chỉ cần tạo thư mục notebooks
RUN mkdir -p /home/jovyan/work/notebooks
WORKDIR /home/jovyan/work/notebooks

# Điều chỉnh quyền
RUN chown -R jovyan:users /home/jovyan/work

USER jovyan