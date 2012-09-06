.class public Lcom/google/android/apps/plus/content/DbRect;
.super Lcom/google/android/apps/plus/content/DbSerializer;
.source "DbRect.java"


# direct methods
.method public static deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 5
    .parameter "blob"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p0, :cond_14

    .line 38
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 40
    .local v1, byteLength:I
    new-array v3, v1, [B

    .line 41
    .local v3, rectBytes:[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 42
    invoke-static {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v2

    .line 46
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #byteLength:I
    .end local v3           #rectBytes:[B
    .local v2, rect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    :goto_13
    return-object v2

    .line 44
    .end local v2           #rect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #rect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    goto :goto_13
.end method

.method static serialize(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)[B
    .registers 5
    .parameter "rect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->toByteArray()[B

    move-result-object v2

    .line 26
    .local v2, rectBytes:[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 27
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 29
    .end local v2           #rectBytes:[B
    :catchall_1d
    move-exception v3

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v3
.end method
