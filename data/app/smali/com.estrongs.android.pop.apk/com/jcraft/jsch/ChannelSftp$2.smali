.class Lcom/jcraft/jsch/ChannelSftp$2;
.super Ljava/io/InputStream;


# instance fields
.field a:J

.field b:Z

.field c:I

.field d:[B

.field e:[B

.field f:Lcom/jcraft/jsch/ChannelSftp$Header;

.field final synthetic g:J

.field final synthetic h:Lcom/jcraft/jsch/SftpProgressMonitor;

.field final synthetic i:[B

.field final synthetic j:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    .registers 9

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    iput-object p5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:[B

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:J

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->a()V

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_4

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_6
.end method

.method public read([B)I
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v0

    goto :goto_5
.end method

.method public read([BII)I
    .registers 12

    const/16 v0, 0x400

    const/16 v7, 0x65

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v1, :cond_c

    move p3, v2

    :cond_b
    :goto_b
    return p3

    :cond_c
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_14
    if-ltz p2, :cond_1d

    if-ltz p3, :cond_1d

    add-int v1, p2, p3

    array-length v4, p1

    if-le v1, v4, :cond_23

    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_23
    if-nez p3, :cond_27

    move p3, v3

    goto :goto_b

    :cond_27
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-lez v1, :cond_5a

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-le v0, p3, :cond_170

    :goto_2f
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    invoke-static {v0, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-eq p3, v0, :cond_42

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    iget v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    sub-int/2addr v4, p3

    invoke-static {v0, p3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v3, p3

    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(J)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    move p3, v2

    goto :goto_b

    :cond_54
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    goto :goto_b

    :cond_5a
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0xd

    if-ge v1, p3, :cond_72

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    add-int/lit8 p3, v1, -0xd

    :cond_72
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->d(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    if-nez v1, :cond_16d

    if-le p3, v0, :cond_16d

    :goto_7c
    :try_start_7c
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:[B

    iget-wide v5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    invoke-static {v1, v4, v5, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BJI)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_85} :catch_b1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v1, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    if-eq v1, v7, :cond_ba

    const/16 v4, 0x67

    if-eq v1, v4, :cond_ba

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    if-ne v1, v7, :cond_e6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    invoke-static {v0, v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_de

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    move p3, v2

    goto/16 :goto_b

    :cond_de
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e6
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v5, 0x4

    invoke-static {v1, v4, v3, v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BII)I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    iget v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    add-int/lit8 v4, v4, -0x4

    iput v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    iget-wide v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    iget v6, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    if-lez v1, :cond_168

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-le v1, v0, :cond_16b

    :goto_11b
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-gez p3, :cond_12a

    move p3, v2

    goto/16 :goto_b

    :cond_12a
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-lez v0, :cond_152

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-ge v0, v1, :cond_140

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    :cond_140
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    :goto_142
    if-lez v0, :cond_152

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    invoke-virtual {v1, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_165

    :cond_152
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v3, p3

    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(J)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    move p3, v2

    goto/16 :goto_b

    :cond_165
    add-int/2addr v3, v1

    sub-int/2addr v0, v1

    goto :goto_142

    :cond_168
    move p3, v3

    goto/16 :goto_b

    :cond_16b
    move v0, v1

    goto :goto_11b

    :cond_16d
    move v0, p3

    goto/16 :goto_7c

    :cond_170
    move p3, v0

    goto/16 :goto_2f
.end method
