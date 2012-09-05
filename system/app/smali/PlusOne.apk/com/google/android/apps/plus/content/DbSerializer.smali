.class public Lcom/google/android/apps/plus/content/DbSerializer;
.super Ljava/lang/Object;
.source "DbSerializer.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static decodeUtf8([B)Ljava/lang/String;
    .registers 4
    .parameter "buf"

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 158
    :catch_8
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static deserializeShortStringList([B)Ljava/util/List;
    .registers 6
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, returnList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 49
    .local v2, items:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_1a

    .line 50
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbSerializer;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 53
    :cond_1a
    return-object v3
.end method

.method private static encodeUtf8(Ljava/lang/String;)[B
    .registers 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .parameter "bb"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 142
    .local v1, length:I
    if-lez v1, :cond_10

    .line 143
    new-array v0, v1, [B

    .line 144
    .local v0, buf:[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 145
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbSerializer;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 147
    .end local v0           #buf:[B
    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method protected static getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .parameter "bb"

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 124
    .local v1, length:S
    if-lez v1, :cond_10

    .line 125
    new-array v0, v1, [B

    .line 126
    .local v0, buf:[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbSerializer;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 129
    .end local v0           #buf:[B
    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method protected static putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_e

    .line 107
    invoke-static {p1}, Lcom/google/android/apps/plus/content/DbSerializer;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 113
    .end local v0           #bytes:[B
    :goto_d
    return-void

    .line 111
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_d
.end method

.method protected static putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p1, :cond_e

    .line 91
    invoke-static {p1}, Lcom/google/android/apps/plus/content/DbSerializer;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 97
    .end local v0           #bytes:[B
    :goto_d
    return-void

    .line 95
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_d
.end method

.method static putShortStringList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter "values"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    .local p2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/google/android/apps/plus/content/DbSerializer;->serializeShortStringList(Ljava/util/List;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 69
    return-void
.end method

.method private static putShortStringList(Ljava/io/DataOutputStream;Ljava/util/List;)V
    .registers 5
    .parameter "dos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, value:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/content/DbSerializer;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_b

    .line 63
    .end local v1           #value:Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method public static serializeShortStringList(Ljava/util/List;)[B
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .local v1, dos:Ljava/io/DataOutputStream;
    if-nez p0, :cond_e

    .line 32
    const/4 v2, 0x0

    .line 37
    :goto_d
    return-object v2

    .line 35
    :cond_e
    :try_start_e
    invoke-static {v1, p0}, Lcom/google/android/apps/plus/content/DbSerializer;->putShortStringList(Ljava/io/DataOutputStream;Ljava/util/List;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_19

    move-result-object v2

    .line 39
    .local v2, result:[B
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto :goto_d

    .end local v2           #result:[B
    :catchall_19
    move-exception v3

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v3
.end method
