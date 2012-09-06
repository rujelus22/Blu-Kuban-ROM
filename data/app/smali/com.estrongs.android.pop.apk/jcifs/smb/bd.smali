.class public Ljcifs/smb/bd;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljcifs/smb/ba;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:[B

.field private i:Ljcifs/smb/aw;

.field private j:Ljcifs/smb/ax;

.field private k:Ljcifs/smb/av;

.field private l:Ljcifs/smb/ay;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/bd;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Ljcifs/smb/ba;

    invoke-direct {v0, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/bd;-><init>(Ljcifs/smb/ba;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/ba;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/bd;-><init>(Ljcifs/smb/ba;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/ba;Z)V
    .registers 4

    if-eqz p2, :cond_8

    const/16 v0, 0x16

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Ljcifs/smb/bd;-><init>(Ljcifs/smb/ba;ZI)V

    return-void

    :cond_8
    const/16 v0, 0x52

    goto :goto_4
.end method

.method constructor <init>(Ljcifs/smb/ba;ZI)V
    .registers 7

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/bd;->h:[B

    iput-object p1, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iput-boolean p2, p0, Ljcifs/smb/bd;->b:Z

    iput p3, p0, Ljcifs/smb/bd;->d:I

    ushr-int/lit8 v0, p3, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/bd;->e:I

    if-eqz p2, :cond_1e

    :try_start_18
    invoke-virtual {p1}, Ljcifs/smb/ba;->F()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/bd;->g:J
    :try_end_1e
    .catch Ljcifs/smb/SmbAuthException; {:try_start_18 .. :try_end_1e} :catch_94
    .catch Ljcifs/smb/SmbException; {:try_start_18 .. :try_end_1e} :catch_96

    :cond_1e
    :goto_1e
    instance-of v0, p1, Ljcifs/smb/bf;

    if-eqz v0, :cond_57

    iget-object v0, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    const-string v1, "\\pipe\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    new-instance v0, Ljcifs/smb/ci;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\pipe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/ci;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljcifs/smb/cj;

    invoke-direct {v1}, Ljcifs/smb/cj;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    :cond_57
    iget v0, p0, Ljcifs/smb/bd;->e:I

    or-int/lit8 v0, v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Ljcifs/smb/ba;->b(IIII)V

    iget v0, p0, Ljcifs/smb/bd;->d:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, Ljcifs/smb/bd;->d:I

    iget-object v0, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->v:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/bd;->f:I

    iget-object v0, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/bj;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/smb/bd;->c:Z

    iget-boolean v0, p0, Ljcifs/smb/bd;->c:Z

    if-eqz v0, :cond_9c

    new-instance v0, Ljcifs/smb/aw;

    invoke-direct {v0}, Ljcifs/smb/aw;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bd;->i:Ljcifs/smb/aw;

    new-instance v0, Ljcifs/smb/ax;

    invoke-direct {v0}, Ljcifs/smb/ax;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bd;->j:Ljcifs/smb/ax;

    :goto_93
    return-void

    :catch_94
    move-exception v0

    throw v0

    :catch_96
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/bd;->g:J

    goto :goto_1e

    :cond_9c
    new-instance v0, Ljcifs/smb/av;

    invoke-direct {v0}, Ljcifs/smb/av;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bd;->k:Ljcifs/smb/av;

    new-instance v0, Ljcifs/smb/ay;

    invoke-direct {v0}, Ljcifs/smb/ay;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bd;->l:Ljcifs/smb/ay;

    goto :goto_93
.end method


# virtual methods
.method public a([BIII)V
    .registers 13

    if-gtz p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Ljcifs/smb/bd;->h:[B

    if-nez v0, :cond_f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Ljcifs/smb/bd;->b()V

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4d

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

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

    :cond_4d
    move v6, p2

    iget v0, p0, Ljcifs/smb/bd;->f:I

    if-le p3, v0, :cond_a1

    iget v7, p0, Ljcifs/smb/bd;->f:I

    :goto_54
    iget-boolean v0, p0, Ljcifs/smb/bd;->c:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Ljcifs/smb/bd;->i:Ljcifs/smb/aw;

    iget-object v1, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->j:I

    iget-wide v2, p0, Ljcifs/smb/bd;->g:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/aw;->a(IJI[BII)V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a3

    iget-object v0, p0, Ljcifs/smb/bd;->i:Ljcifs/smb/aw;

    iget-object v1, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->j:I

    iget-wide v2, p0, Ljcifs/smb/bd;->g:J

    move v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/aw;->a(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/bd;->i:Ljcifs/smb/aw;

    const/16 v1, 0x8

    iput v1, v0, Ljcifs/smb/aw;->b:I

    :goto_7d
    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget-object v1, p0, Ljcifs/smb/bd;->i:Ljcifs/smb/aw;

    iget-object v2, p0, Ljcifs/smb/bd;->j:Ljcifs/smb/ax;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget-wide v0, p0, Ljcifs/smb/bd;->g:J

    iget-object v2, p0, Ljcifs/smb/bd;->j:Ljcifs/smb/ax;

    iget-wide v2, v2, Ljcifs/smb/ax;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/bd;->g:J

    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/bd;->j:Ljcifs/smb/ax;

    iget-wide v2, v2, Ljcifs/smb/ax;->b:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, Ljcifs/smb/bd;->j:Ljcifs/smb/ax;

    iget-wide v2, v2, Ljcifs/smb/ax;->b:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    :goto_9d
    if-gtz p3, :cond_4d

    goto/16 :goto_2

    :cond_a1
    move v7, p3

    goto :goto_54

    :cond_a3
    iget-object v0, p0, Ljcifs/smb/bd;->i:Ljcifs/smb/aw;

    const/4 v1, 0x0

    iput v1, v0, Ljcifs/smb/aw;->b:I

    goto :goto_7d

    :cond_a9
    iget-object v0, p0, Ljcifs/smb/bd;->k:Ljcifs/smb/av;

    iget-object v1, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->j:I

    iget-wide v2, p0, Ljcifs/smb/bd;->g:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/av;->a(IJI[BII)V

    iget-wide v0, p0, Ljcifs/smb/bd;->g:J

    iget-object v2, p0, Ljcifs/smb/bd;->l:Ljcifs/smb/ay;

    iget-wide v2, v2, Ljcifs/smb/ay;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/bd;->g:J

    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/bd;->l:Ljcifs/smb/ay;

    iget-wide v2, v2, Ljcifs/smb/ay;->a:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, Ljcifs/smb/bd;->l:Ljcifs/smb/ay;

    iget-wide v2, v2, Ljcifs/smb/ay;->a:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget-object v1, p0, Ljcifs/smb/bd;->k:Ljcifs/smb/av;

    iget-object v2, p0, Ljcifs/smb/bd;->l:Ljcifs/smb/ay;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto :goto_9d
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->h()Z

    move-result v0

    return v0
.end method

.method b()V
    .registers 6

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->h()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget v1, p0, Ljcifs/smb/bd;->d:I

    iget v2, p0, Ljcifs/smb/bd;->e:I

    or-int/lit8 v2, v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/ba;->b(IIII)V

    iget-boolean v0, p0, Ljcifs/smb/bd;->b:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->F()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/bd;->g:J

    :cond_22
    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/bd;->h:[B

    return-void
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bd;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/bd;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bd;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/bd;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->h()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    instance-of v0, v0, Ljcifs/smb/bf;

    if-eqz v0, :cond_34

    iget-object v0, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    new-instance v1, Ljcifs/smb/ci;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\pipe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/bd;->a:Ljcifs/smb/ba;

    iget-object v3, v3, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/ci;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/cj;

    invoke-direct {v2}, Ljcifs/smb/cj;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    :cond_34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/bd;->a([BIII)V

    return-void
.end method
