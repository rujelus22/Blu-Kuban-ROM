.class public Lcom/jcraft/jsch/ChannelDirectTCPIP;
.super Lcom/jcraft/jsch/Channel;


# instance fields
.field t:Ljava/lang/String;

.field u:I

.field v:Ljava/lang/String;

.field w:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/high16 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->e(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method b()V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->t:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1}, Lcom/jcraft/jsch/IO;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_e6

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_25
    :try_start_25
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x96

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    const-string v3, "direct-tcpip"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->f:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->g:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->t:Ljava/lang/String;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->u:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_70} :catch_12

    const/16 v0, 0x3e8

    :goto_72
    :try_start_72
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8e

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_8e

    if-lez v0, :cond_8e

    iget-boolean v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->m:Z

    if-nez v2, :cond_8e

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8a} :catch_8d

    add-int/lit8 v0, v0, -0x1

    goto :goto_72

    :catch_8d
    move-exception v2

    :cond_8e
    :try_start_8e
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v2

    if-nez v2, :cond_9c

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    if-eqz v0, :cond_a2

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->m:Z

    if-eqz v0, :cond_aa

    :cond_a2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_aa
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->o:Z

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_e6

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectTCPIP thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    iget-boolean v1, v1, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_e1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_e6} :catch_12

    :cond_e6
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    return-void
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->u:I

    return-void
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    return-void
.end method

.method public run()V
    .registers 8

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_c
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->l()Lcom/jcraft/jsch/Session;

    move-result-object v2

    :goto_10
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k()Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/16 v5, 0xe

    iget-object v6, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0xe

    add-int/lit8 v6, v6, -0x20

    add-int/lit8 v6, v6, -0x14

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_42

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->g()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3e} :catch_5d

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j()V

    return-void

    :cond_42
    :try_start_42
    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->n:Z

    if-nez v4, :cond_3e

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5c} :catch_5d

    goto :goto_10

    :catch_5d
    move-exception v0

    goto :goto_3e
.end method
