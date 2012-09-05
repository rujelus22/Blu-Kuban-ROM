.class Ljcifs/netbios/SocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketOutputStream.java"


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized write([BII)V
    .registers 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    monitor-enter p0

    const v0, 0xffff

    if-le p3, v0, :cond_1e

    .line 33
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1b

    .line 32
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 34
    :cond_1e
    const/4 v0, 0x4

    if-ge p2, v0, :cond_29

    .line 35
    :try_start_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NetBIOS socket output buffer requires 4 bytes available before off"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_29
    add-int/lit8 p2, p2, -0x4

    .line 40
    add-int/lit8 v0, p2, 0x0

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 41
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 42
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 43
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 45
    iget-object v0, p0, Ljcifs/netbios/SocketOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4c
    .catchall {:try_start_21 .. :try_end_4c} :catchall_1b

    .line 46
    monitor-exit p0

    return-void
.end method
