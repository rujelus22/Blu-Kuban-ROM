.class Ljcifs/smb/TransactNamedPipeInputStream;
.super Ljcifs/smb/SmbFileInputStream;
.source "TransactNamedPipeInputStream.java"


# static fields
.field private static final INIT_PIPE_SIZE:I = 0x1000


# instance fields
.field private beg_idx:I

.field private dcePipe:Z

.field lock:Ljava/lang/Object;

.field private nxt_idx:I

.field private pipe_buf:[B

.field private used:I


# direct methods
.method constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .registers 4
    .parameter "pipe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 38
    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v1, -0xff01

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    .line 30
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 39
    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x600

    const/16 v1, 0x600

    if-eq v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->dcePipe:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    .line 41
    return-void

    .line 39
    :cond_24
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12

    .line 93
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    const-string v1, "Named Pipe available() does not apply to TRANSACT Named Pipes"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 94
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public dce_read([BII)I
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v1, -0x1

    .line 45
    .local v1, result:I
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 47
    :goto_4
    :try_start_4
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-nez v2, :cond_1c

    .line 48
    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_4

    .line 50
    :catch_e
    move-exception v0

    .line 51
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_f
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2

    .line 53
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    aget-byte v2, v2, v4

    and-int/lit16 v1, v2, 0xff

    .line 54
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v4, v4

    rem-int/2addr v2, v4

    iput v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 55
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_19

    .line 56
    return v1
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/TransactNamedPipeInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 11
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v2, -0x1

    .line 65
    .local v2, result:I
    if-gtz p3, :cond_5

    .line 89
    :goto_4
    return v3

    .line 68
    :cond_5
    iget-object v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 70
    :goto_8
    :try_start_8
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-nez v3, :cond_20

    .line 71
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_8

    .line 73
    :catch_12
    move-exception v1

    .line 74
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_13
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1d

    throw v3

    .line 76
    :cond_20
    :try_start_20
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v3, v3

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    sub-int v0, v3, v5

    .line 77
    .local v0, i:I
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-le p3, v3, :cond_54

    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 78
    :goto_2d
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-le v3, v0, :cond_56

    if-le v2, v0, :cond_56

    .line 79
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    invoke-static {v3, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    add-int/2addr p2, v0

    .line 81
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    const/4 v5, 0x0

    sub-int v6, v2, v0

    invoke-static {v3, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :goto_43
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 86
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    add-int/2addr v3, v2

    iget-object v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v5, v5

    rem-int/2addr v3, v5

    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 87
    monitor-exit v4

    move v3, v2

    .line 89
    goto :goto_4

    :cond_54
    move v2, p3

    .line 77
    goto :goto_2d

    .line 83
    :cond_56
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    invoke-static {v3, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5d
    .catchall {:try_start_20 .. :try_end_5d} :catchall_1d

    goto :goto_43
.end method

.method receive([BII)I
    .registers 11
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v3, v3

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr v3, v4

    if-le p3, v3, :cond_3c

    .line 103
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .line 104
    .local v1, new_size:I
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int v3, v1, v3

    if-le p3, v3, :cond_18

    .line 105
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    add-int v1, p3, v3

    .line 107
    :cond_18
    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 108
    .local v2, tmp:[B
    new-array v3, v1, [B

    iput-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 109
    array-length v3, v2

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    sub-int v0, v3, v4

    .line 110
    .local v0, i:I
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-le v3, v0, :cond_63

    .line 111
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    iget-object v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    invoke-static {v2, v3, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr v4, v0

    invoke-static {v2, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :goto_36
    iput v6, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 117
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    .line 121
    .end local v0           #i:I
    .end local v1           #new_size:I
    .end local v2           #tmp:[B
    :cond_3c
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v3, v3

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    sub-int v0, v3, v4

    .line 122
    .restart local v0       #i:I
    if-le p3, v0, :cond_6d

    .line 123
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int/2addr p2, v0

    .line 125
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    sub-int v4, p3, v0

    invoke-static {p1, p2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :goto_54
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    add-int/2addr v3, p3

    iget-object v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    .line 130
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    add-int/2addr v3, p3

    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 131
    return p3

    .line 114
    .restart local v1       #new_size:I
    .restart local v2       #tmp:[B
    :cond_63
    iget v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    iget-object v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_36

    .line 127
    .end local v1           #new_size:I
    .end local v2           #tmp:[B
    :cond_6d
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v4, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_54
.end method
