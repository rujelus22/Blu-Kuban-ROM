.class public abstract Ljcifs/dcerpc/f;
.super Ljcifs/dcerpc/ndr/d;

# interfaces
.implements Ljcifs/dcerpc/c;


# instance fields
.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/dcerpc/f;->f:I

    iput v1, p0, Ljcifs/dcerpc/f;->g:I

    iput v1, p0, Ljcifs/dcerpc/f;->h:I

    iput v1, p0, Ljcifs/dcerpc/f;->i:I

    iput v1, p0, Ljcifs/dcerpc/f;->j:I

    iput v1, p0, Ljcifs/dcerpc/f;->k:I

    return-void
.end method


# virtual methods
.method public a()Ljcifs/dcerpc/DcerpcException;
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/f;->k:I

    if-eqz v0, :cond_c

    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/f;->k:I

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(I)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public abstract a(Ljcifs/dcerpc/ndr/a;)V
.end method

.method public abstract b()I
.end method

.method public abstract b(Ljcifs/dcerpc/ndr/a;)V
.end method

.method public b(I)Z
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/f;->g:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method c(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->f(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->f(I)V

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->f(I)V

    iget v0, p0, Ljcifs/dcerpc/f;->g:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->f(I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget v0, p0, Ljcifs/dcerpc/f;->h:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->g(I)V

    iget v0, p0, Ljcifs/dcerpc/f;->i:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    return-void
.end method

.method d(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v0

    if-eqz v0, :cond_15

    :cond_d
    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v1, "DCERPC version not supported"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/f;->f:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/f;->g:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_31

    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v1, "Data representation not supported"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/f;->h:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v1, "DCERPC authentication not supported"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/f;->i:I

    return-void
.end method

.method public e(Ljcifs/dcerpc/ndr/a;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->b()I

    move-result v2

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->d(I)V

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-nez v0, :cond_48

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->b()I

    move-result v0

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->h(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->g(I)V

    invoke-virtual {p0}, Ljcifs/dcerpc/f;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->g(I)V

    :goto_1f
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/f;->a(Ljcifs/dcerpc/ndr/a;)V

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->b()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/dcerpc/f;->h:I

    iget v1, p0, Ljcifs/dcerpc/f;->f:I

    if-nez v1, :cond_3b

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->b(I)V

    iget v1, p0, Ljcifs/dcerpc/f;->h:I

    sub-int v0, v1, v0

    iput v0, p0, Ljcifs/dcerpc/f;->j:I

    iget v0, p0, Ljcifs/dcerpc/f;->j:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    :cond_3b
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/a;->b(I)V

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/f;->c(Ljcifs/dcerpc/ndr/a;)V

    iget v0, p0, Ljcifs/dcerpc/f;->h:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->b(I)V

    return-void

    :cond_48
    move v0, v1

    goto :goto_1f
.end method

.method public f(Ljcifs/dcerpc/ndr/a;)V
    .registers 7

    const/16 v4, 0xd

    const/4 v3, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/f;->d(Ljcifs/dcerpc/ndr/a;)V

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_34

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-eq v0, v3, :cond_34

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-eq v0, v2, :cond_34

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-eq v0, v4, :cond_34

    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/dcerpc/f;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-eq v0, v3, :cond_3c

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-ne v0, v2, :cond_48

    :cond_3c
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/f;->j:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    :cond_48
    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-eq v0, v2, :cond_50

    iget v0, p0, Ljcifs/dcerpc/f;->f:I

    if-ne v0, v4, :cond_57

    :cond_50
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/f;->k:I

    :goto_56
    return-void

    :cond_57
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/f;->b(Ljcifs/dcerpc/ndr/a;)V

    goto :goto_56
.end method
