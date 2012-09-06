.class public Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;
.super Ljava/io/PipedOutputStream;


# instance fields
.field private in:Ljava/io/InputStream;

.field private succ:Z

.field private task:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->in:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->succ:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1d

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2f

    :cond_1d
    invoke-super {p0}, Ljava/io/PipedOutputStream;->close()V

    :cond_20
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_3e

    :cond_25
    :goto_25
    iget-boolean v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->succ:Z

    if-nez v0, :cond_43

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2f
    :try_start_2f
    const-string v1, "EEE"

    const-string v2, "close before sleep 1s"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_44

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    :cond_43
    return-void

    :catch_44
    move-exception v1

    goto :goto_9
.end method

.method public forceClose()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_16

    :cond_12
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    return-void

    :catch_16
    move-exception v0

    goto :goto_12
.end method

.method public setResult(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->succ:Z

    return-void
.end method

.method public setTask(Ljava/lang/Thread;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->task:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->in:Ljava/io/InputStream;

    return-void
.end method
