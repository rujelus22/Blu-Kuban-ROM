.class public Lah/q;
.super Ljava/lang/Object;

# interfaces
.implements Lah/e;


# instance fields
.field private a:Lah/e;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lah/e;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lah/q;->a(Lah/e;IIII)V

    return-void
.end method

.method private c(I)I
    .registers 4

    iget v0, p0, Lah/q;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lah/q;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)I
    .registers 4

    iget v0, p0, Lah/q;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lah/q;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method private e(I)I
    .registers 4

    iget v0, p0, Lah/q;->b:I

    sub-int v0, p1, v0

    iget v1, p0, Lah/q;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private f(I)I
    .registers 4

    iget v0, p0, Lah/q;->c:I

    sub-int v0, p1, v0

    iget v1, p0, Lah/q;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private f()Z
    .registers 6

    iget v0, p0, Lah/q;->l:I

    if-lez v0, :cond_8

    iget v0, p0, Lah/q;->m:I

    if-gtz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0}, Lah/e;->a()I

    move-result v0

    iput v0, p0, Lah/q;->n:I

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0}, Lah/e;->b()I

    move-result v0

    iput v0, p0, Lah/q;->o:I

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0}, Lah/e;->c()I

    move-result v0

    iput v0, p0, Lah/q;->p:I

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0}, Lah/e;->d()I

    move-result v0

    iput v0, p0, Lah/q;->q:I

    iget-object v0, p0, Lah/q;->a:Lah/e;

    iget v1, p0, Lah/q;->j:I

    iget v2, p0, Lah/q;->k:I

    iget v3, p0, Lah/q;->l:I

    iget v4, p0, Lah/q;->m:I

    invoke-interface {v0, v1, v2, v3, v4}, Lah/e;->a(IIII)V

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private g()V
    .registers 6

    iget-object v0, p0, Lah/q;->a:Lah/e;

    iget v1, p0, Lah/q;->n:I

    iget v2, p0, Lah/q;->o:I

    iget v3, p0, Lah/q;->p:I

    iget v4, p0, Lah/q;->q:I

    invoke-interface {v0, v1, v2, v3, v4}, Lah/e;->a(IIII)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lah/q;->j:I

    invoke-direct {p0, v0}, Lah/q;->e(I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0, p1}, Lah/e;->a(I)V

    return-void
.end method

.method public a(IIII)V
    .registers 8

    invoke-direct {p0, p1}, Lah/q;->c(I)I

    move-result v0

    iput v0, p0, Lah/q;->j:I

    invoke-direct {p0, p2}, Lah/q;->d(I)I

    move-result v0

    iput v0, p0, Lah/q;->k:I

    iput p3, p0, Lah/q;->l:I

    iput p4, p0, Lah/q;->m:I

    iget v0, p0, Lah/q;->b:I

    iget v1, p0, Lah/q;->j:I

    if-le v0, v1, :cond_24

    iget v0, p0, Lah/q;->l:I

    iget v1, p0, Lah/q;->b:I

    iget v2, p0, Lah/q;->j:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lah/q;->l:I

    iget v0, p0, Lah/q;->b:I

    iput v0, p0, Lah/q;->j:I

    :cond_24
    iget v0, p0, Lah/q;->c:I

    iget v1, p0, Lah/q;->k:I

    if-le v0, v1, :cond_38

    iget v0, p0, Lah/q;->m:I

    iget v1, p0, Lah/q;->c:I

    iget v2, p0, Lah/q;->k:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lah/q;->m:I

    iget v0, p0, Lah/q;->c:I

    iput v0, p0, Lah/q;->k:I

    :cond_38
    iget v0, p0, Lah/q;->j:I

    iget v1, p0, Lah/q;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lah/q;->f:I

    if-le v0, v1, :cond_48

    iget v0, p0, Lah/q;->f:I

    iget v1, p0, Lah/q;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lah/q;->l:I

    :cond_48
    iget v0, p0, Lah/q;->k:I

    iget v1, p0, Lah/q;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lah/q;->g:I

    if-le v0, v1, :cond_58

    iget v0, p0, Lah/q;->g:I

    iget v1, p0, Lah/q;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lah/q;->m:I

    :cond_58
    return-void
.end method

.method public a(IIIIII)V
    .registers 14

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p1}, Lah/q;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lah/q;->d(I)I

    move-result v2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lah/e;->a(IIIIII)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    invoke-direct {p0}, Lah/q;->g()V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0
.end method

.method public a(Lah/d;)V
    .registers 3

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0, p1}, Lah/e;->a(Lah/d;)V

    return-void
.end method

.method public a(Lah/e;IIII)V
    .registers 9

    const/4 v2, 0x0

    iput-object p1, p0, Lah/q;->a:Lah/e;

    iput p2, p0, Lah/q;->b:I

    iput p3, p0, Lah/q;->c:I

    iput p4, p0, Lah/q;->d:I

    iput p5, p0, Lah/q;->e:I

    iget v0, p0, Lah/q;->b:I

    iget v1, p0, Lah/q;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lah/q;->f:I

    iget v0, p0, Lah/q;->c:I

    iget v1, p0, Lah/q;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lah/q;->g:I

    iget v0, p0, Lah/q;->b:I

    iput v0, p0, Lah/q;->j:I

    iget v0, p0, Lah/q;->c:I

    iput v0, p0, Lah/q;->k:I

    iput p4, p0, Lah/q;->l:I

    iput p5, p0, Lah/q;->m:I

    iput v2, p0, Lah/q;->h:I

    iput v2, p0, Lah/q;->i:I

    return-void
.end method

.method public a(Lah/f;II)V
    .registers 7

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_15

    :try_start_8
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p2}, Lah/q;->c(I)I

    move-result v1

    invoke-direct {p0, p3}, Lah/q;->d(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lah/e;->a(Lah/f;II)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_19

    :cond_15
    invoke-direct {p0}, Lah/q;->g()V

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0
.end method

.method public a(Ljava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p2}, Lah/q;->c(I)I

    move-result v1

    invoke-direct {p0, p3}, Lah/q;->d(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lah/e;->a(Ljava/lang/String;II)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    invoke-direct {p0}, Lah/q;->g()V

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0
.end method

.method public a(Lah/f;IIIIIIII)Z
    .registers 20

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    :try_start_6
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p2}, Lah/q;->c(I)I

    move-result v2

    invoke-direct {p0, p3}, Lah/q;->d(I)I

    move-result v3

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lah/e;->a(Lah/f;IIIIIIII)Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_23

    move-result v0

    invoke-direct {p0}, Lah/q;->g()V

    :goto_22
    return v0

    :catchall_23
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_22
.end method

.method public a(Z)Z
    .registers 3

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0, p1}, Lah/e;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lah/q;->k:I

    invoke-direct {p0, v0}, Lah/q;->f(I)I

    move-result v0

    return v0
.end method

.method public b(IIII)V
    .registers 8

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p1}, Lah/q;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lah/q;->d(I)I

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lah/e;->b(IIII)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    invoke-direct {p0}, Lah/q;->g()V

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0
.end method

.method public b(IIIIII)V
    .registers 14

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p1}, Lah/q;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lah/q;->d(I)I

    move-result v2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lah/e;->b(IIIIII)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    invoke-direct {p0}, Lah/q;->g()V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0, p1}, Lah/e;->b(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lah/q;->l:I

    return v0
.end method

.method public c(IIII)V
    .registers 8

    invoke-direct {p0}, Lah/q;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-direct {p0, p1}, Lah/q;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lah/q;->d(I)I

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lah/e;->c(IIII)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    invoke-direct {p0}, Lah/q;->g()V

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    invoke-direct {p0}, Lah/q;->g()V

    throw v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lah/q;->m:I

    return v0
.end method

.method public e()Lah/d;
    .registers 2

    iget-object v0, p0, Lah/q;->a:Lah/e;

    invoke-interface {v0}, Lah/e;->e()Lah/d;

    move-result-object v0

    return-object v0
.end method
