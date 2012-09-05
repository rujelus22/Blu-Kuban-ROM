.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadInfoProto"
.end annotation


# instance fields
.field private additionalFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation
.end field

.field private apkSize_:J

.field private cachedSize:I

.field private hasApkSize:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->apkSize_:J

    .line 1806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    .line 1862
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    .line 1785
    return-void
.end method


# virtual methods
.method public addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 1823
    if-nez p1, :cond_8

    .line 1824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1826
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    .line 1829
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1830
    return-object p0
.end method

.method public getAdditionalFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    return-object v0
.end method

.method public getApkSize()J
    .registers 3

    .prologue
    .line 1791
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->apkSize_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1864
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 1866
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getSerializedSize()I

    .line 1868
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1872
    const/4 v2, 0x0

    .line 1873
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1874
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getApkSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1877
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getAdditionalFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 1878
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_19

    .line 1881
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_2c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    .line 1882
    return v2
.end method

.method public hasApkSize()Z
    .registers 2

    .prologue
    .line 1792
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1889
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1890
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_22

    .line 1894
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1895
    :sswitch_d
    return-object p0

    .line 1900
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->setApkSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    goto :goto_0

    .line 1904
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;-><init>()V

    .line 1905
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1906
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    goto :goto_0

    .line 1890
    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1783
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setApkSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 1794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize:Z

    .line 1795
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->apkSize_:J

    .line 1796
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1855
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getApkSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1857
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getAdditionalFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 1858
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_16

    .line 1860
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_27
    return-void
.end method
