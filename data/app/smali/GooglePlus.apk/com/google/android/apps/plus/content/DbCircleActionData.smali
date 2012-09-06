.class public Lcom/google/android/apps/plus/content/DbCircleActionData;
.super Lcom/google/android/apps/plus/content/DbSerializer;
.source "DbCircleActionData.java"


# direct methods
.method public static deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 7
    .parameter "array"

    .prologue
    .line 59
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 62
    .local v3, items:S
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v1

    .line 63
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    const/4 v2, 0x0

    .local v2, i:S
    :goto_d
    if-ge v2, v3, :cond_26

    .line 64
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbCircleActionData;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->addGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    .line 65
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbCircleActionData;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_23

    .end local v4           #name:Ljava/lang/String;
    :goto_1c
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->addName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    .line 63
    add-int/lit8 v5, v2, 0x1

    int-to-short v2, v5

    goto :goto_d

    .line 66
    .restart local v4       #name:Ljava/lang/String;
    :cond_23
    const-string v4, ""

    goto :goto_1c

    .line 69
    .end local v4           #name:Ljava/lang/String;
    :cond_26
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v5

    return-object v5
.end method

.method public static serialize(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)[B
    .registers 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v1

    .line 33
    .local v1, items:I
    if-nez v1, :cond_8

    .line 34
    const/4 v3, 0x0

    .line 48
    :goto_7
    return-object v3

    .line 37
    :cond_8
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 38
    .local v4, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .local v2, os:Ljava/io/DataOutputStream;
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v1, :cond_2b

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/content/DbCircleActionData;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/content/DbCircleActionData;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 46
    :cond_2b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 47
    .local v3, result:[B
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_7
.end method
