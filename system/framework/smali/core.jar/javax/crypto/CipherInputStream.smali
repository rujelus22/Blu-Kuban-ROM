.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# static fields
.field private static final I_BUFFER_SIZE:I = 0x14


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private index:I

.field private final inputBuffer:[B

.field private outputBuffer:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"

    .prologue
    .line 74
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .registers 4
    .parameter "is"
    .parameter "c"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    .line 61
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 62
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 166
    :try_start_5
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_a} :catch_b

    .line 171
    :goto_a
    return-void

    .line 167
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 86
    iget-boolean v3, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    if-eqz v3, :cond_1f

    .line 87
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-eqz v3, :cond_11

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    array-length v4, v4

    if-ne v3, v4, :cond_12

    .line 109
    :cond_11
    :goto_11
    return v2

    .line 87
    :cond_12
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/crypto/CipherInputStream;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_11

    .line 91
    :cond_1f
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-eqz v3, :cond_37

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    array-length v4, v4

    if-ge v3, v4, :cond_37

    .line 92
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/crypto/CipherInputStream;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_11

    .line 94
    :cond_37
    iput v5, p0, Ljavax/crypto/CipherInputStream;->index:I

    .line 95
    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    .line 97
    :goto_3c
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-nez v3, :cond_55

    .line 98
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, byteCount:I
    if-ne v0, v2, :cond_65

    .line 100
    :try_start_4a
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_5a

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    .line 109
    .end local v0           #byteCount:I
    :cond_55
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v2

    goto :goto_11

    .line 101
    .restart local v0       #byteCount:I
    :catch_5a
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v1           #e:Ljava/lang/Exception;
    :cond_65
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v3, v4, v5, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    goto :goto_3c
.end method

.method public read([BII)I
    .registers 9
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 128
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    if-nez v3, :cond_d

    .line 129
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Underlying input stream is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, p3, :cond_19

    .line 134
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    .line 135
    .local v0, b:I
    if-ne v0, v2, :cond_1a

    .line 136
    if-nez v1, :cond_19

    move v1, v2

    .line 142
    .end local v0           #b:I
    .end local v1           #i:I
    :cond_19
    return v1

    .line 138
    .restart local v0       #b:I
    .restart local v1       #i:I
    :cond_1a
    if-eqz p1, :cond_21

    .line 139
    add-int v3, p2, v1

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    .line 133
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public skip(J)J
    .registers 5
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
