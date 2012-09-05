.class Lai/i;
.super Lai/f;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Lah/f;

.field private i:Lai/f;


# direct methods
.method public constructor <init>(Lai/f;IIIIII)V
    .registers 9

    invoke-direct {p0}, Lai/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lai/i;->i:Lai/f;

    invoke-virtual {p1}, Lai/f;->e()Lah/f;

    move-result-object v0

    iput-object v0, p0, Lai/i;->h:Lah/f;

    iput p2, p0, Lai/i;->b:I

    iput p3, p0, Lai/i;->c:I

    iput p4, p0, Lai/i;->d:I

    iput p5, p0, Lai/i;->e:I

    iput p6, p0, Lai/i;->f:I

    iput p7, p0, Lai/i;->g:I

    return-void
.end method

.method private i()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lai/i;->h:Lah/f;

    const/4 v1, 0x0

    iput-object v1, p0, Lai/i;->h:Lah/f;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lah/f;->f()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method private j()Lai/f;
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lai/i;->i:Lai/f;

    if-nez v0, :cond_4a

    new-instance v0, Lai/f;

    iget v1, p0, Lai/i;->b:I

    iget v3, p0, Lai/i;->c:I

    invoke-direct {v0, v1, v3}, Lai/f;-><init>(II)V

    iput-object v0, p0, Lai/i;->i:Lai/f;

    iget-object v0, p0, Lai/i;->i:Lai/f;

    invoke-virtual {v0}, Lai/f;->c()Lah/e;

    move-result-object v0

    iget-object v1, p0, Lai/i;->h:Lah/f;

    iget v4, p0, Lai/i;->b:I

    iget v5, p0, Lai/i;->c:I

    iget v6, p0, Lai/i;->d:I

    iget v7, p0, Lai/i;->e:I

    iget v8, p0, Lai/i;->f:I

    iget v9, p0, Lai/i;->g:I

    move v3, v2

    invoke-interface/range {v0 .. v9}, Lah/e;->a(Lah/f;IIIIIIII)Z

    move-result v0

    if-nez v0, :cond_4a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graphics cannot scale image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lai/i;->i:Lai/f;

    invoke-virtual {v2}, Lai/f;->c()Lah/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    iget-object v0, p0, Lai/i;->i:Lai/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lai/i;->b:I

    return v0
.end method

.method public a(II)Lah/f;
    .registers 4

    invoke-direct {p0}, Lai/i;->j()Lai/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lai/f;->a(II)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIII)Lah/f;
    .registers 14

    invoke-direct {p0}, Lai/i;->j()Lai/f;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lai/f;->a(IIIIII)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lah/e;II)V
    .registers 14

    iget-object v0, p0, Lai/i;->i:Lai/f;

    if-nez v0, :cond_19

    iget-object v1, p0, Lai/i;->h:Lah/f;

    iget v4, p0, Lai/i;->b:I

    iget v5, p0, Lai/i;->c:I

    iget v6, p0, Lai/i;->d:I

    iget v7, p0, Lai/i;->e:I

    iget v8, p0, Lai/i;->f:I

    iget v9, p0, Lai/i;->g:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v9}, Lah/e;->a(Lah/f;IIIIIIII)Z

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lai/i;->i:Lai/f;

    invoke-virtual {v0, p1, p2, p3}, Lai/f;->a(Lah/e;II)V

    goto :goto_18
.end method

.method public a([IIIIIII)V
    .registers 16

    invoke-direct {p0}, Lai/i;->j()Lai/f;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lai/f;->a([IIIIIII)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lai/i;->c:I

    return v0
.end method

.method public c()Lah/e;
    .registers 2

    invoke-direct {p0}, Lai/i;->j()Lai/f;

    move-result-object v0

    invoke-virtual {v0}, Lai/f;->c()Lah/e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lai/i;->a:I

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lai/i;->i()V

    :cond_7
    invoke-super {p0}, Lai/f;->d()V

    return-void
.end method

.method protected finalize()V
    .registers 1

    invoke-direct {p0}, Lai/i;->i()V

    invoke-super {p0}, Lai/f;->finalize()V

    return-void
.end method

.method public g()I
    .registers 3

    const/16 v0, 0x20

    iget-object v1, p0, Lai/i;->i:Lai/f;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lai/i;->i:Lai/f;

    invoke-virtual {v1}, Lai/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0}, Lai/i;->j()Lai/f;

    move-result-object v0

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
