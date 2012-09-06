.class public Lcom/estrongs/android/pop/fs/p;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Lde/aflx/sardine/Sardine;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lde/aflx/sardine/Sardine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/fs/p;->f:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/estrongs/android/pop/fs/p;->a:Lde/aflx/sardine/Sardine;

    iput-object p3, p0, Lcom/estrongs/android/pop/fs/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/fs/p;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/fs/p;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    check-cast v0, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public close()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/fs/p;->f:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/fs/p;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/fs/p;->a:Lde/aflx/sardine/Sardine;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v0}, Lde/aflx/sardine/Sardine;->abort()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_14

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/p;->a:Lde/aflx/sardine/Sardine;

    invoke-interface {v1}, Lde/aflx/sardine/Sardine;->abort()V

    throw v0
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/p;->f:Z

    throw v0
.end method

.method public write(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/p;->f:Z

    throw v0
.end method

.method public write([B)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/p;->f:Z

    throw v0
.end method

.method public write([BII)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/p;->f:Z

    throw v0
.end method
