.class abstract Ljcifs/smb/b;
.super Ljcifs/smb/t;


# instance fields
.field a:Ljcifs/smb/t;

.field private b:B

.field private c:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljcifs/smb/b;->b:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    return-void
.end method

.method constructor <init>(Ljcifs/smb/t;)V
    .registers 3

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljcifs/smb/b;->b:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    if-eqz p1, :cond_14

    iput-object p1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-byte v0, p1, Ljcifs/smb/t;->g:B

    iput-byte v0, p0, Ljcifs/smb/b;->b:B

    :cond_14
    return-void
.end method


# virtual methods
.method a(B)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method a([BI)I
    .registers 9

    iput p2, p0, Ljcifs/smb/b;->i:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/b;->l([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/b;->c([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/b;->j:I

    iget-object v0, p0, Ljcifs/smb/b;->B:Ljcifs/smb/u;

    if-eqz v0, :cond_20

    iget-object v0, p0, Ljcifs/smb/b;->B:Ljcifs/smb/u;

    iget v2, p0, Ljcifs/smb/b;->i:I

    iget v3, p0, Ljcifs/smb/b;->j:I

    iget-object v5, p0, Ljcifs/smb/b;->C:Ljcifs/smb/t;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/u;->a([BIILjcifs/smb/t;Ljcifs/smb/t;)V

    :cond_20
    iget v0, p0, Ljcifs/smb/b;->j:I

    return v0
.end method

.method b([BI)I
    .registers 5

    iput p2, p0, Ljcifs/smb/b;->i:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/b;->m([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/b;->d([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/b;->j:I

    iget v0, p0, Ljcifs/smb/b;->j:I

    return v0
.end method

.method c([BI)I
    .registers 9

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, -0x22

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/b;->n([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/b;->r:I

    iget v0, p0, Ljcifs/smb/b;->r:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/b;->r:I

    iget v0, p0, Ljcifs/smb/b;->r:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/b;->r:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/b;->r:I

    iget v1, p0, Ljcifs/smb/b;->r:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/b;->o([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/b;->s:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/b;->s:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Ljcifs/smb/b;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget v1, p0, Ljcifs/smb/b;->s:I

    add-int/2addr v1, v0

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    if-eqz v0, :cond_59

    sget-boolean v0, Ljcifs/smb/b;->al:Z

    if-eqz v0, :cond_59

    iget v0, p0, Ljcifs/smb/b;->k:I

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-byte v2, v2, Ljcifs/smb/t;->g:B

    invoke-virtual {p0, v2}, Ljcifs/smb/b;->a(B)I

    move-result v2

    if-lt v0, v2, :cond_73

    :cond_59
    iput-byte v4, p0, Ljcifs/smb/b;->b:B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    add-int/lit8 v0, p2, 0x1

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    aput-byte v5, p1, v0

    add-int/lit8 v0, p2, 0x3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    aput-byte v3, p1, v0

    sub-int v0, v1, p2

    :goto_72
    return v0

    :cond_73
    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ljcifs/smb/t;->k:I

    add-int/lit8 v0, p2, 0x1

    iget-byte v2, p0, Ljcifs/smb/b;->b:B

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x2

    aput-byte v5, p1, v0

    iget v0, p0, Ljcifs/smb/b;->i:I

    sub-int v0, v1, v0

    iput v0, p0, Ljcifs/smb/b;->c:I

    iget v0, p0, Ljcifs/smb/b;->c:I

    int-to-long v2, v0

    add-int/lit8 v0, p2, 0x3

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/b;->a(J[BI)V

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-boolean v2, p0, Ljcifs/smb/b;->t:Z

    iput-boolean v2, v0, Ljcifs/smb/t;->t:Z

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    instance-of v0, v0, Ljcifs/smb/b;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->p:I

    iput v2, v0, Ljcifs/smb/t;->p:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    check-cast v0, Ljcifs/smb/b;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/b;->c([BI)I

    move-result v0

    add-int/2addr v0, v1

    :goto_ae
    sub-int/2addr v0, p2

    goto :goto_72

    :cond_b0
    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    invoke-virtual {v2, p1, v1}, Ljcifs/smb/t;->n([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/t;->r:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v0, v0, Ljcifs/smb/t;->r:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v3, v2, Ljcifs/smb/t;->r:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljcifs/smb/t;->r:I

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, v2, Ljcifs/smb/t;->r:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, p1, v3}, Ljcifs/smb/t;->o([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/t;->s:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, v2, Ljcifs/smb/t;->s:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, v2, Ljcifs/smb/t;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v1, v1, Ljcifs/smb/t;->s:I

    add-int/2addr v0, v1

    goto :goto_ae
.end method

.method d([BI)I
    .registers 7

    const/4 v3, 0x2

    const/4 v2, -0x1

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput v1, p0, Ljcifs/smb/b;->r:I

    iget v1, p0, Ljcifs/smb/b;->r:I

    if-eqz v1, :cond_41

    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljcifs/smb/b;->b:B

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Ljcifs/smb/b;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/b;->c:I

    iget v1, p0, Ljcifs/smb/b;->c:I

    if-nez v1, :cond_1e

    iput-byte v2, p0, Ljcifs/smb/b;->b:B

    :cond_1e
    iget v1, p0, Ljcifs/smb/b;->r:I

    if-le v1, v3, :cond_3a

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/b;->p([BI)I

    iget-byte v0, p0, Ljcifs/smb/b;->g:B

    const/16 v1, -0x5e

    if-ne v0, v1, :cond_3a

    move-object v0, p0

    check-cast v0, Ljcifs/smb/ad;

    iget-boolean v0, v0, Ljcifs/smb/ad;->N:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Ljcifs/smb/b;->r:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljcifs/smb/b;->r:I

    :cond_3a
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ljcifs/smb/b;->r:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_41
    invoke-static {p1, v0}, Ljcifs/smb/b;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/b;->s:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/b;->s:I

    if-eqz v1, :cond_53

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/b;->q([BI)I

    iget v1, p0, Ljcifs/smb/b;->s:I

    add-int/2addr v0, v1

    :cond_53
    iget v1, p0, Ljcifs/smb/b;->l:I

    if-nez v1, :cond_5b

    iget-byte v1, p0, Ljcifs/smb/b;->b:B

    if-ne v1, v2, :cond_62

    :cond_5b
    iput-byte v2, p0, Ljcifs/smb/b;->b:B

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    :goto_60
    sub-int/2addr v0, p2

    return v0

    :cond_62
    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    if-nez v0, :cond_70

    iput-byte v2, p0, Ljcifs/smb/b;->b:B

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no andx command supplied with response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    iget v0, p0, Ljcifs/smb/b;->i:I

    iget v1, p0, Ljcifs/smb/b;->c:I

    add-int/2addr v1, v0

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->i:I

    iput v2, v0, Ljcifs/smb/t;->i:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-byte v2, p0, Ljcifs/smb/b;->b:B

    iput-byte v2, v0, Ljcifs/smb/t;->g:B

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->l:I

    iput v2, v0, Ljcifs/smb/t;->l:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-byte v2, p0, Ljcifs/smb/b;->h:B

    iput-byte v2, v0, Ljcifs/smb/t;->h:B

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->m:I

    iput v2, v0, Ljcifs/smb/t;->m:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->n:I

    iput v2, v0, Ljcifs/smb/t;->n:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->o:I

    iput v2, v0, Ljcifs/smb/t;->o:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->p:I

    iput v2, v0, Ljcifs/smb/t;->p:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, p0, Ljcifs/smb/b;->q:I

    iput v2, v0, Ljcifs/smb/t;->q:I

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget-boolean v2, p0, Ljcifs/smb/b;->t:Z

    iput-boolean v2, v0, Ljcifs/smb/t;->t:Z

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    instance-of v0, v0, Ljcifs/smb/b;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    check-cast v0, Ljcifs/smb/b;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/b;->d([BI)I

    move-result v0

    add-int/2addr v0, v1

    :cond_c0
    :goto_c0
    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljcifs/smb/t;->u:Z

    goto :goto_60

    :cond_c6
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v2, v2, Ljcifs/smb/t;->r:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v1, v1, Ljcifs/smb/t;->r:I

    if-eqz v1, :cond_e4

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v1, v1, Ljcifs/smb/t;->r:I

    if-le v1, v3, :cond_e4

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    invoke-virtual {v1, p1, v0}, Ljcifs/smb/t;->p([BI)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e4
    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    invoke-static {p1, v0}, Ljcifs/smb/b;->f([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/t;->s:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v1, v1, Ljcifs/smb/t;->s:I

    if-eqz v1, :cond_c0

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    invoke-virtual {v1, p1, v0}, Ljcifs/smb/t;->q([BI)I

    iget-object v1, p0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    iget v1, v1, Ljcifs/smb/t;->s:I

    add-int/2addr v0, v1

    goto :goto_c0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",andxCommand=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/b;->b:B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",andxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
