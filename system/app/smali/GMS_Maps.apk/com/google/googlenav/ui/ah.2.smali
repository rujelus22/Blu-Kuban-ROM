.class public abstract Lcom/google/googlenav/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/af;


# instance fields
.field protected a:LaJ/V;

.field protected b:Lcom/google/googlenav/ui/bc;

.field protected final c:LaJ/R;

.field private d:Z

.field private e:I

.field private final f:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ah;->d:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ah;->f:Ljava/util/Vector;

    new-instance v0, LaJ/R;

    invoke-direct {v0}, LaJ/R;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ah;->c:LaJ/R;

    return-void
.end method

.method private a(LaJ/I;)I
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/ah;->d:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v2

    invoke-virtual {v2}, LaJ/P;->i()LaJ/P;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LaJ/V;->a(LaJ/P;Z)LaJ/X;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, LaJ/X;->b()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, LaJ/X;->f()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v1}, LaJ/X;->d()J

    move-result-wide v2

    long-to-int v0, v2

    :cond_26
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LaJ/X;->a(J)V

    :cond_35
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/googlenav/ui/ah;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method private a(LaJ/I;LaJ/X;I)V
    .registers 6

    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/bc;

    if-eqz v0, :cond_24

    :cond_6
    invoke-virtual {p1}, LaJ/I;->l()I

    move-result v0

    if-nez v0, :cond_24

    if-eqz p2, :cond_15

    invoke-virtual {p2}, LaJ/X;->b()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p2, 0x0

    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/ah;->a(LaJ/I;LaJ/X;)Lah/f;

    move-result-object v0

    if-nez v0, :cond_1f

    invoke-virtual {p1, p3}, LaJ/I;->a(I)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, LaJ/I;->a(Lah/f;IZ)V

    goto :goto_1e

    :cond_24
    invoke-virtual {p1}, LaJ/I;->l()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, LaJ/I;->l()I

    move-result v0

    if-eq v0, p3, :cond_1e

    invoke-virtual {p1}, LaJ/I;->k()V

    invoke-virtual {p1}, LaJ/I;->o()V

    goto :goto_1e
.end method

.method private b(LaJ/I;Z)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/googlenav/ui/ah;->d:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, LaJ/P;->e()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2f

    invoke-virtual {v1}, LaJ/P;->e()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    const/16 v2, 0x16

    if-gt v1, v2, :cond_2f

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v0

    invoke-virtual {v0}, LaJ/P;->i()LaJ/P;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    invoke-virtual {v1, v0, p2}, LaJ/V;->a(LaJ/P;Z)LaJ/X;

    move-result-object v0

    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/ah;->a(LaJ/I;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ah;->f()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {p1}, LaJ/I;->f()Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_3f
    invoke-virtual {p1}, LaJ/I;->m()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p1}, LaJ/I;->l()I

    move-result v2

    if-eq v2, v1, :cond_50

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/ah;->a(LaJ/I;LaJ/X;I)V

    const/4 v0, 0x1

    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method


# virtual methods
.method protected abstract a(LaJ/I;LaJ/X;)Lah/f;
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/bc;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/bc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bc;->a()I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/google/googlenav/ui/ah;->e:I

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(LaJ/V;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/ag;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/ah;->d:Z

    return-void
.end method

.method public a(LaJ/I;Z)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/ah;->b(LaJ/I;Z)Z

    move-result v0

    return v0
.end method

.method public a(LaJ/p;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, LaJ/p;->g()[LaJ/P;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    array-length v3, v2

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_2a

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, LaJ/p;->a(LaJ/P;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_17
    iget-object v5, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    invoke-virtual {v4}, LaJ/P;->i()LaJ/P;

    move-result-object v4

    invoke-virtual {v5, v4, v0}, LaJ/V;->a(LaJ/P;Z)LaJ/X;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, LaJ/X;->b()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_7

    :cond_2a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    invoke-virtual {v0}, LaJ/V;->b()V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/ag;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(LaJ/p;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, LaJ/p;->g()[LaJ/P;

    move-result-object v3

    if-nez v3, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    array-length v4, v3

    move v2, v1

    :goto_b
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    invoke-virtual {p1, v5}, LaJ/p;->a(LaJ/P;)Z

    move-result v6

    if-nez v6, :cond_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    iget-object v6, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    invoke-virtual {v5}, LaJ/P;->i()LaJ/P;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, LaJ/V;->a(LaJ/P;Z)LaJ/X;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, LaJ/X;->b()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, LaJ/X;->f()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5}, LaJ/X;->d()J

    move-result-wide v5

    const-wide/high16 v7, -0x8000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_15

    :cond_3a
    move v0, v1

    goto :goto_8
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:LaJ/V;

    invoke-virtual {v0}, LaJ/V;->a()V

    return-void
.end method

.method public d()Lcom/google/googlenav/ui/bc;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/bc;

    return-object v0
.end method

.method public e()V
    .registers 13

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v8, v0, [[Lcom/google/googlenav/ui/aR;

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v9

    move v7, v5

    move v4, v5

    :goto_11
    if-ge v7, v9, :cond_52

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->f:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ag;

    invoke-interface {v0}, Lcom/google/googlenav/ui/ag;->d()[Lcom/google/googlenav/ui/aR;

    move-result-object v3

    if-eqz v3, :cond_7e

    array-length v2, v3

    move v1, v5

    move v0, v5

    :goto_24
    if-ge v1, v2, :cond_2f

    aget-object v6, v3, v1

    if-eqz v6, :cond_2c

    add-int/lit8 v0, v0, 0x1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2f
    array-length v1, v3

    if-eq v1, v0, :cond_7c

    new-array v2, v0, [Lcom/google/googlenav/ui/aR;

    array-length v10, v3

    move v6, v5

    move v1, v5

    :goto_37
    if-ge v6, v10, :cond_48

    aget-object v0, v3, v6

    if-eqz v0, :cond_7a

    add-int/lit8 v0, v1, 0x1

    aget-object v11, v3, v6

    aput-object v11, v2, v1

    :goto_43
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_37

    :cond_48
    move-object v0, v2

    :goto_49
    aput-object v0, v8, v7

    array-length v0, v0

    add-int/2addr v0, v4

    :goto_4d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v4, v0

    goto :goto_11

    :cond_52
    if-nez v4, :cond_58

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/bc;

    :goto_57
    return-void

    :cond_58
    new-array v2, v4, [Lcom/google/googlenav/ui/aR;

    move v0, v5

    move v1, v5

    :goto_5c
    array-length v3, v8

    if-ge v0, v3, :cond_72

    aget-object v3, v8, v0

    if-eqz v3, :cond_6f

    aget-object v3, v8, v0

    aget-object v4, v8, v0

    array-length v4, v4

    invoke-static {v3, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v8, v0

    array-length v3, v3

    add-int/2addr v1, v3

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_72
    new-instance v0, Lcom/google/googlenav/ui/bc;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/bc;-><init>([Lcom/google/googlenav/ui/aR;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/bc;

    goto :goto_57

    :cond_7a
    move v0, v1

    goto :goto_43

    :cond_7c
    move-object v0, v3

    goto :goto_49

    :cond_7e
    move v0, v4

    goto :goto_4d
.end method

.method protected abstract f()Z
.end method
