.class public Lcom/sec/android/app/music/common/richinfo/crypto/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    .line 21
    return-void
.end method


# virtual methods
.method public copy(Lcom/sec/android/app/music/common/richinfo/crypto/Block;)V
    .registers 5
    .parameter "src"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    iget-object v2, p1, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_10
    return-void
.end method

.method public pad(ILcom/sec/android/app/music/common/richinfo/crypto/Block;)V
    .registers 6
    .parameter "n"
    .parameter "pad"

    .prologue
    .line 85
    move v0, p1

    .local v0, i:I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    iget-object v2, p2, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_10
    return-void
.end method

.method public read(Ljava/io/InputStream;)I
    .registers 6
    .parameter "f"

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 55
    .local v1, tot:I
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_f

    .line 56
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    rsub-int/lit8 v3, v1, 0x8

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_12

    move-result v0

    .line 57
    .local v0, n:I
    if-gtz v0, :cond_10

    .line 64
    .end local v0           #n:I
    :cond_f
    :goto_f
    return v1

    .line 59
    .restart local v0       #n:I
    :cond_10
    add-int/2addr v1, v0

    goto :goto_1

    .line 61
    .end local v0           #n:I
    :catch_12
    move-exception v2

    goto :goto_f
.end method

.method public write(Ljava/io/OutputStream;)Z
    .registers 7
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 26
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_b

    .line 32
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 27
    :catch_b
    move-exception v0

    .line 28
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to write output"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a
.end method
