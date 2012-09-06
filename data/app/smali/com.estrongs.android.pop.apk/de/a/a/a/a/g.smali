.class public Lde/a/a/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lde/a/a/a/a/h;

.field protected b:J

.field protected c:Z

.field protected d:Z

.field protected e:S

.field protected f:J

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:S

.field protected j:S

.field protected k:J

.field protected l:I

.field protected m:I

.field protected n:B

.field protected o:S


# direct methods
.method public constructor <init>(Lde/a/a/a/a/h;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lde/a/a/a/a/g;->o:S

    iput-object p1, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iput-wide p2, p0, Lde/a/a/a/a/g;->b:J

    invoke-virtual {p0}, Lde/a/a/a/a/g;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 12

    const-wide/16 v7, 0x1c

    const/4 v10, 0x2

    const/16 v9, -0x67

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x2014b50

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "expected CENSIC not found in central directory (at end of zip file)"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    iput-short v0, p0, Lde/a/a/a/a/g;->o:S

    iget-short v0, p0, Lde/a/a/a/a/g;->o:S

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_dc

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lde/a/a/a/a/g;->c:Z

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    const-wide/16 v5, 0xa

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    iput-short v0, p0, Lde/a/a/a/a/g;->i:S

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    const-wide/16 v5, 0x14

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    iput v0, p0, Lde/a/a/a/a/g;->l:I

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    const-wide/16 v5, 0x18

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    iput v0, p0, Lde/a/a/a/a/g;->m:I

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    add-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    iput-short v0, p0, Lde/a/a/a/a/g;->e:S

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    add-long/2addr v3, v7

    const-wide/16 v5, 0xe

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lde/a/a/a/a/g;->k:J

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->b:J

    const-wide/16 v5, 0x2e

    add-long/2addr v3, v5

    iget-short v5, p0, Lde/a/a/a/a/g;->e:S

    invoke-virtual {v0, v3, v4, v5}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lde/a/a/a/a/g;->g:Ljava/lang/String;

    iget-wide v3, p0, Lde/a/a/a/a/g;->k:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    iget-short v0, p0, Lde/a/a/a/a/g;->e:S

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lde/a/a/a/a/g;->f:J

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->k:J

    add-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    iput-short v0, p0, Lde/a/a/a/a/g;->j:S

    iget-boolean v0, p0, Lde/a/a/a/a/g;->c:Z

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lde/a/a/a/a/g;->f:J

    invoke-virtual {v0, v3, v4, v10}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v3

    aget-byte v0, v3, v2

    if-ne v0, v1, :cond_df

    aget-byte v0, v3, v1

    if-ne v0, v9, :cond_df

    iput-boolean v1, p0, Lde/a/a/a/a/g;->d:Z

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lde/a/a/a/a/g;->f:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->c(J)B

    move-result v0

    iput-byte v0, p0, Lde/a/a/a/a/g;->n:B

    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lde/a/a/a/a/g;->f:J

    const-wide/16 v3, 0x9

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    iput-short v0, p0, Lde/a/a/a/a/g;->i:S

    :cond_d2
    :goto_d2
    iget-short v0, p0, Lde/a/a/a/a/g;->j:S

    add-int/lit8 v0, v0, 0x1e

    iget-short v1, p0, Lde/a/a/a/a/g;->e:S

    add-int/2addr v0, v1

    iput v0, p0, Lde/a/a/a/a/g;->h:I

    return-void

    :cond_dc
    move v0, v2

    goto/16 :goto_33

    :cond_df
    iget-short v0, p0, Lde/a/a/a/a/g;->j:S

    if-nez v0, :cond_eb

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "extra field is of length 0 - this is probably not a WinZip AES encrypted entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_eb
    iget-object v0, p0, Lde/a/a/a/a/g;->a:Lde/a/a/a/a/h;

    iget-wide v4, p0, Lde/a/a/a/a/g;->f:J

    iget-short v6, p0, Lde/a/a/a/a/g;->j:S

    invoke-virtual {v0, v4, v5, v6}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_f7
    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_105

    aget-byte v6, v4, v0

    if-eq v6, v1, :cond_105

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v4, v6

    if-ne v6, v9, :cond_138

    :cond_105
    add-int/lit8 v5, v5, -0x2

    if-gt v0, v5, :cond_d2

    aget-byte v5, v4, v0

    aput-byte v5, v3, v2

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    aput-byte v5, v3, v1

    aget-byte v5, v3, v2

    if-ne v5, v1, :cond_d2

    aget-byte v3, v3, v1

    if-ne v3, v9, :cond_d2

    iput-boolean v1, p0, Lde/a/a/a/a/g;->d:Z

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, v4, v3

    iput-byte v3, p0, Lde/a/a/a/a/g;->n:B

    new-array v3, v10, [B

    add-int/lit8 v5, v0, 0x9

    aget-byte v5, v4, v5

    aput-byte v5, v3, v2

    add-int/lit8 v0, v0, 0xa

    aget-byte v0, v4, v0

    aput-byte v0, v3, v1

    invoke-static {v3}, Lde/a/a/a/a/f;->b([B)S

    move-result v0

    iput-short v0, p0, Lde/a/a/a/a/g;->i:S

    goto :goto_d2

    :cond_138
    new-array v6, v10, [B

    add-int/lit8 v7, v0, 0x2

    array-length v8, v6

    invoke-static {v4, v7, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Lde/a/a/a/a/f;->b([B)S

    move-result v6

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v0, v6

    goto :goto_f7
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lde/a/a/a/a/g;->l:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lde/a/a/a/a/g;->m:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lde/a/a/a/a/g;->c:Z

    return v0
.end method

.method public e()S
    .registers 2

    iget-short v0, p0, Lde/a/a/a/a/g;->j:S

    return v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lde/a/a/a/a/g;->k:J

    return-wide v0
.end method

.method protected g()J
    .registers 3

    iget-wide v0, p0, Lde/a/a/a/a/g;->f:J

    return-wide v0
.end method

.method public h()I
    .registers 5

    invoke-virtual {p0}, Lde/a/a/a/a/g;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lde/a/a/a/a/g;->k()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lde/a/a/a/a/g;->l()S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public i()S
    .registers 2

    iget-short v0, p0, Lde/a/a/a/a/g;->i:S

    return v0
.end method

.method public j()B
    .registers 2

    iget-byte v0, p0, Lde/a/a/a/a/g;->n:B

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lde/a/a/a/a/g;->h:I

    return v0
.end method

.method public l()S
    .registers 2

    iget-boolean v0, p0, Lde/a/a/a/a/g;->d:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lde/a/a/a/a/g;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/16 v4, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileName\t\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/a/a/a/a/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "uncompressedSize\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "compressedSize\t\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "encryptionStrength\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->j()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "extraFieldOffset\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "extraFieldLength\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->e()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "localHeaderOffset\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "localHeaderSize\t\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "offset\t\t\t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/g;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
