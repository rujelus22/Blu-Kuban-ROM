.class Lcom/estrongs/android/pop/fs/n;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Ljava/io/PipedInputStream;

.field private final synthetic b:J

.field private final synthetic c:Lde/aflx/sardine/Sardine;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;


# direct methods
.method constructor <init>(Ljava/io/PipedInputStream;JLde/aflx/sardine/Sardine;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/n;->a:Ljava/io/PipedInputStream;

    iput-wide p2, p0, Lcom/estrongs/android/pop/fs/n;->b:J

    iput-object p4, p0, Lcom/estrongs/android/pop/fs/n;->c:Lde/aflx/sardine/Sardine;

    iput-object p5, p0, Lcom/estrongs/android/pop/fs/n;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/pop/fs/n;->e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/n;->a:Ljava/io/PipedInputStream;

    iget-wide v2, p0, Lcom/estrongs/android/pop/fs/n;->b:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/n;->c:Lde/aflx/sardine/Sardine;

    iget-object v2, p0, Lcom/estrongs/android/pop/fs/n;->d:Ljava/lang/String;

    const-string v3, "application/octet-stream"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lde/aflx/sardine/Sardine;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/n;->e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/n;->e:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/n;->a:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_19

    :catch_2a
    move-exception v0

    goto :goto_19
.end method
