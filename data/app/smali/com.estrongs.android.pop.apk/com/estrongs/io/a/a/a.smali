.class public Lcom/estrongs/io/a/a/a;
.super Lcom/estrongs/io/a/a/b;

# interfaces
.implements Lcom/estrongs/io/a/b;


# instance fields
.field private a:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/io/archive/d;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/io/a/a/b;-><init>(Lcom/estrongs/io/archive/d;)V

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/a;->a:Z

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/a;->j:Z

    iput-object p2, p0, Lcom/estrongs/io/a/a/a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/io/a/a/a;->a:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/a;->a:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->d:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/io/a/a/a;->d:Lcom/estrongs/io/archive/d;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    :try_start_10
    monitor-enter p0
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_11} :catch_1b

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/estrongs/io/a/a/a;->j:Z

    return v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/io/a/a/a;->j:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->k:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/a/a/a;->k:Ljava/lang/String;

    :cond_21
    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->k:Ljava/lang/String;

    return-object v0
.end method
