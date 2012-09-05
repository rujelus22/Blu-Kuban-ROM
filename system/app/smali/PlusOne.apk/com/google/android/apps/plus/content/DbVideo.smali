.class public Lcom/google/android/apps/plus/content/DbVideo;
.super Lcom/google/android/apps/plus/content/DbSerializer;
.source "DbVideo.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/DbSerializer;-><init>()V

    return-void
.end method

.method public static deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 6
    .parameter "blob"

    .prologue
    .line 38
    if-eqz p0, :cond_14

    .line 39
    :try_start_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 41
    .local v1, byteLength:I
    new-array v4, v1, [B

    .line 42
    .local v4, rectBytes:[B
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    invoke-static {v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_12} :catch_16

    move-result-object v2

    .line 51
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #byteLength:I
    .end local v4           #rectBytes:[B
    :goto_13
    return-object v2

    .line 45
    :cond_14
    const/4 v2, 0x0

    .local v2, data:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    goto :goto_13

    .line 47
    .end local v2           #data:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :catch_16
    move-exception v3

    .line 48
    .local v3, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static serialize(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)[B
    .registers 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->toByteArray()[B

    move-result-object v1

    .line 25
    .local v1, dataBytes:[B
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 26
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 28
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 28
    .end local v1           #dataBytes:[B
    :catchall_1d
    move-exception v3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v3
.end method
