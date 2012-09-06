.class public Ljcifs/smb/bc;
.super Ljava/io/InputStream;


# instance fields
.field a:Ljcifs/smb/ba;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljcifs/smb/ba;

    invoke-direct {v0, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljcifs/smb/bc;-><init>(Ljcifs/smb/ba;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/ba;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljcifs/smb/bc;-><init>(Ljcifs/smb/ba;I)V

    return-void
.end method

.method constructor <init>(Ljcifs/smb/ba;I)V
    .registers 6

    const v1, 0xffff

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/bc;->f:[B

    iput-object p1, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    and-int v0, p2, v1

    iput v0, p0, Ljcifs/smb/bc;->d:I

    ushr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/bc;->e:I

    iget v0, p1, Ljcifs/smb/ba;->k:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_47

    iget v0, p0, Ljcifs/smb/bc;->e:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/ba;->b(IIII)V

    iget v0, p0, Ljcifs/smb/bc;->d:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, Ljcifs/smb/bc;->d:I

    :goto_2a
    iget-object v0, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->w:I

    add-int/lit8 v0, v0, -0x46

    iget-object v1, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v1, v1, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v1, v1, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->b:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/bc;->c:I

    return-void

    :cond_47
    invoke-virtual {p1}, Ljcifs/smb/ba;->e()V

    goto :goto_2a
.end method


# virtual methods
.method public a([BII)I
    .registers 15

    if-gtz p3, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-wide v6, p0, Ljcifs/smb/bc;->b:J

    iget-object v0, p0, Ljcifs/smb/bc;->f:[B

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v1, p0, Ljcifs/smb/bc;->d:I

    iget v2, p0, Ljcifs/smb/bc;->e:I

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/ba;->b(IIII)V

    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_59

    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v2, v2, Ljcifs/smb/ba;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_59
    new-instance v8, Ljcifs/smb/am;

    invoke-direct {v8, p1, p2}, Ljcifs/smb/am;-><init>([BI)V

    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v0, v0, Ljcifs/smb/ba;->k:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6a

    const-wide/16 v0, 0x0

    iput-wide v0, v8, Ljcifs/smb/am;->w:J

    :cond_6a
    iget v0, p0, Ljcifs/smb/bc;->c:I

    if-le p3, v0, :cond_dd

    iget v4, p0, Ljcifs/smb/bc;->c:I

    :goto_70
    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a9

    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read: len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/bc;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_a9
    :try_start_a9
    new-instance v0, Ljcifs/smb/al;

    iget-object v1, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->j:I

    iget-wide v2, p0, Ljcifs/smb/bc;->b:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/al;-><init>(IJILjcifs/smb/t;)V

    iget-object v1, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->k:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_c5

    const/16 v1, 0x400

    iput v1, v0, Ljcifs/smb/al;->d:I

    iput v1, v0, Ljcifs/smb/al;->b:I

    iput v1, v0, Ljcifs/smb/al;->c:I

    :cond_c5
    iget-object v1, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    invoke-virtual {v1, v0, v8}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_ca
    .catch Ljcifs/smb/SmbException; {:try_start_a9 .. :try_end_ca} :catch_df

    iget v0, v8, Ljcifs/smb/am;->D:I

    if-gtz v0, :cond_fc

    iget-wide v0, p0, Ljcifs/smb/bc;->b:J

    sub-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f9

    iget-wide v0, p0, Ljcifs/smb/bc;->b:J

    sub-long/2addr v0, v6

    :goto_da
    long-to-int v0, v0

    goto/16 :goto_3

    :cond_dd
    move v4, p3

    goto :goto_70

    :catch_df
    move-exception v0

    iget-object v1, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->k:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_f4

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffeb5

    if-ne v1, v2, :cond_f4

    const/4 v0, -0x1

    goto/16 :goto_3

    :cond_f4
    invoke-virtual {p0, v0}, Ljcifs/smb/bc;->a(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f9
    const-wide/16 v0, -0x1

    goto :goto_da

    :cond_fc
    iget-wide v1, p0, Ljcifs/smb/bc;->b:J

    int-to-long v9, v0

    add-long/2addr v1, v9

    iput-wide v1, p0, Ljcifs/smb/bc;->b:J

    sub-int/2addr p3, v0

    iget v1, v8, Ljcifs/smb/am;->c:I

    add-int/2addr v1, v0

    iput v1, v8, Ljcifs/smb/am;->c:I

    if-lez p3, :cond_10c

    if-eq v0, v4, :cond_6a

    :cond_10c
    iget-wide v0, p0, Ljcifs/smb/bc;->b:J

    sub-long/2addr v0, v6

    long-to-int v0, v0

    goto/16 :goto_3
.end method

.method protected a(Ljcifs/smb/SmbException;)Ljava/io/IOException;
    .registers 4

    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljcifs/util/transport/TransportException;

    if-eqz v1, :cond_13

    check-cast v0, Ljcifs/util/transport/TransportException;

    move-object v1, v0

    check-cast v1, Ljcifs/util/transport/TransportException;

    invoke-virtual {v1}, Ljcifs/util/transport/TransportException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object p1, v0

    move-object v0, v1

    :cond_13
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_23

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_23
    return-object p1
.end method

.method public available()I
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v0, v0, Ljcifs/smb/ba;->k:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    check-cast v0, Ljcifs/smb/bf;

    iget-object v2, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    const/16 v3, 0x20

    iget v4, v0, Ljcifs/smb/bf;->r:I

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljcifs/smb/ba;->b(IIII)V

    new-instance v2, Ljcifs/smb/ce;

    iget-object v3, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget-object v3, v3, Ljcifs/smb/ba;->i:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    iget v4, v4, Ljcifs/smb/ba;->j:I

    invoke-direct {v2, v3, v4}, Ljcifs/smb/ce;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljcifs/smb/cf;

    invoke-direct {v3, v0}, Ljcifs/smb/cf;-><init>(Ljcifs/smb/bf;)V

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/bf;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v0, v3, Ljcifs/smb/cf;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    iget v0, v3, Ljcifs/smb/cf;->a:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_44

    :cond_3d
    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    const/4 v2, 0x0

    iput-boolean v2, v0, Ljcifs/smb/ba;->l:Z

    move v0, v1

    goto :goto_a

    :cond_44
    iget v0, v3, Ljcifs/smb/cf;->S:I
    :try_end_46
    .catch Ljcifs/smb/SmbException; {:try_start_b .. :try_end_46} :catch_47

    goto :goto_a

    :catch_47
    move-exception v0

    invoke-virtual {p0, v0}, Ljcifs/smb/bc;->a(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/bc;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/bc;->f:[B
    :try_end_8
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {p0, v0}, Ljcifs/smb/bc;->a(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Ljcifs/smb/bc;->f:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljcifs/smb/bc;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Ljcifs/smb/bc;->f:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/bc;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/bc;->a([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_c

    iget-wide v0, p0, Ljcifs/smb/bc;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljcifs/smb/bc;->b:J

    :goto_b
    return-wide p1

    :cond_c
    move-wide p1, v0

    goto :goto_b
.end method
