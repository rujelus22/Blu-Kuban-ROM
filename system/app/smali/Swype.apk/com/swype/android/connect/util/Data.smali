.class public Lcom/swype/android/connect/util/Data;
.super Ljava/lang/Object;
.source "Data.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serializeObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "objectToSerialize"

    .prologue
    .line 20
    const/4 v3, 0x0

    .line 22
    .local v3, serializedObj:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .local v1, objOut:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/compat/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 31
    .end local v1           #objOut:Ljava/io/ObjectOutputStream;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    :goto_1c
    return-object v3

    .line 28
    :catch_1d
    move-exception v4

    move-object v0, v4

    .line 29
    .local v0, io:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException writing object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static unserializeObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "serializedStr"

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, unserializedObj:Ljava/lang/Object;
    :try_start_1
    invoke-static {p0}, Lcom/swype/android/connect/compat/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    .local v0, data:[B
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 46
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    move-object v3, v2

    .line 50
    .end local v0           #data:[B
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v2           #unserializedObj:Ljava/lang/Object;
    :goto_17
    return-object v3

    :catch_18
    move-exception v3

    move-object v3, v2

    goto :goto_17
.end method
