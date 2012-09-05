.class public Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;
.super Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;


# instance fields
.field payloadHeader:[B

.field payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->setBlockType(I)V

    invoke-direct {p0, p3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->setPayloadProvider(Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p3}, Lcom/google/android/apps/uploader/googlemobile/masf/ByteArrayInputStreamProvider;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;ILcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V

    return-void
.end method

.method private generateBlockData()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->generatePayloadHeader()V

    :cond_7
    return-void
.end method

.method private generatePayloadHeader()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->getServiceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B

    return-void

    :cond_39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2c
.end method

.method private setPayloadProvider(Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBodyInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBodyStreamLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getStreamLength()I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;I)[B
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;->setId(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadHeader:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->payloadProvider:Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
