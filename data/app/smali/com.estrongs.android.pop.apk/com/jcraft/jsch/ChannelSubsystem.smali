.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;


# instance fields
.field E:Z

.field F:Z

.field G:Ljava/lang/String;

.field t:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->t:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->F:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->G:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method b()V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->d:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public d()V
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    :try_start_4
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->t:Z

    if-eqz v0, :cond_10

    new-instance v0, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_10
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->E:Z

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1c
    new-instance v0, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    check-cast v0, Lcom/jcraft/jsch/RequestSubsystem;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSubsystem;->G:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->F:Z

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/jcraft/jsch/RequestSubsystem;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_62

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->j:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->k:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->k:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subsystem for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->k:Ljava/lang/Thread;

    iget-boolean v1, v1, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_5c
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_61
    return-void

    :catch_62
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_6a

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_6a
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_76

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelSubsystem"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_76
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ChannelSubsystem"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method
