.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;


# instance fields
.field a:[B

.field final synthetic b:Lcom/jcraft/jsch/Channel;

.field final synthetic c:Lcom/jcraft/jsch/Channel;

.field private d:I

.field private e:Lcom/jcraft/jsch/Buffer;

.field private f:Lcom/jcraft/jsch/Packet;

.field private g:Z


# direct methods
.method private declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 v0, v0, -0x14

    if-gtz v0, :cond_33

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Packet;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_7

    :try_start_4
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_1c

    :cond_7
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->g:Z

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->g:Z

    goto :goto_b

    :catch_1c
    move-exception v0

    goto :goto_b
.end method

.method public flush()V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    :try_start_34
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Packet;

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_46} :catch_47

    goto :goto_10

    :catch_47
    move-exception v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->a:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 9

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->a()V

    :cond_7
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->g:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v3, v2

    move v1, p3

    :goto_19
    if-lez v1, :cond_46

    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    add-int/lit8 v0, v0, 0xe

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 v0, v0, -0x14

    if-le v1, v0, :cond_47

    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    add-int/lit8 v0, v0, 0xe

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 v0, v0, -0x14

    :goto_31
    if-gtz v0, :cond_37

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_19

    :cond_37
    iget v4, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    add-int/lit8 v4, v4, 0xe

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/jcraft/jsch/Channel$1;->d:I

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    goto :goto_19

    :cond_46
    return-void

    :cond_47
    move v0, v1

    goto :goto_31
.end method
