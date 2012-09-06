.class Lcom/estrongs/android/pop/fs/k;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Lcom/estrongs/android/pop/fs/l;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/fs/k;->f:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    iput-object p3, p0, Lcom/estrongs/android/pop/fs/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/fs/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/fs/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/fs/k;->f:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/k;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/fs/k;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1e

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    iget-object v1, v1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp;->j()V

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/k;->a:Lcom/estrongs/android/pop/fs/l;

    iget-object v1, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->b()V

    throw v0
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/k;->f:Z

    throw v0
.end method

.method public write(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/k;->f:Z

    throw v0
.end method

.method public write([B)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/k;->f:Z

    throw v0
.end method

.method public write([BII)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/fs/k;->f:Z

    throw v0
.end method
