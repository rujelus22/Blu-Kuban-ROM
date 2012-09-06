.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;


# instance fields
.field a:[B

.field final synthetic b:[B

.field final synthetic c:[J

.field final synthetic d:Lcom/jcraft/jsch/SftpProgressMonitor;

.field final synthetic e:Lcom/jcraft/jsch/ChannelSftp;

.field private f:Z

.field private g:Z

.field private h:[I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/jcraft/jsch/ChannelSftp$Header;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->c:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->g:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->h:[I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->i:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->l:I

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->m:Lcom/jcraft/jsch/ChannelSftp$Header;

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->a()V

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->m:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->g:Z

    goto :goto_4

    :catch_1e
    move-exception v0

    throw v0

    :catch_20
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:Z

    if-nez v0, :cond_21

    :goto_10
    :try_start_10
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->l:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:I

    if-le v0, v1, :cond_21

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->m:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    return-void

    :cond_22
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:I
    :try_end_28
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_10 .. :try_end_28} :catch_29

    goto :goto_10

    :catch_29
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 13

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->i:I

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j:I

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:Z

    :cond_17
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->g:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v6, p3

    move v5, p2

    :cond_25
    if-lez v6, :cond_ae

    :try_start_27
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->c:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->l:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->c:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    int-to-long v7, v0

    add-long/2addr v3, v7

    aput-wide v3, v1, v2

    add-int/2addr v5, v0

    sub-int/2addr v6, v0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->i:I

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_25

    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->h:[I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->m:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->h:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->i:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j:I

    if-gt v0, v1, :cond_91

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_9c

    :cond_91
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_9a} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_9a} :catch_a3

    :catch_9a
    move-exception v0

    throw v0

    :cond_9c
    :try_start_9c
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a2} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a2} :catch_a3

    goto :goto_60

    :catch_a3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(J)Z

    move-result v0

    if-nez v0, :cond_c6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c6} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_c6} :catch_a3

    :cond_c6
    return-void
.end method
