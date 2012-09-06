.class public Lcom/jcraft/jsch/ChannelExec;
.super Lcom/jcraft/jsch/ChannelSession;


# instance fields
.field t:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->t:[B

    return-void
.end method


# virtual methods
.method b()V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->d:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public d()V
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->n()V

    new-instance v1, Lcom/jcraft/jsch/RequestExec;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelExec;->t:[B

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/RequestExec;-><init>([B)V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_4b

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->k:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->k:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exec thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->k:Ljava/lang/Thread;

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_45
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4a
    return-void

    :catch_4b
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_53

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_53
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_5f

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelExec"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ChannelExec"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method
