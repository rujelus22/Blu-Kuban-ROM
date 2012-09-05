.class public Lbc/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stages cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lbc/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lbc/g;
    .registers 3

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    return-object v0
.end method

.method public a(II)Lbc/h;
    .registers 4

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0, p2}, Lbc/g;->a(I)Lbc/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbc/t;)Lbc/h;
    .registers 4

    iget v0, p1, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->b:I

    invoke-virtual {p0, v0, v1}, Lbc/d;->a(II)Lbc/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbc/a;)Z
    .registers 4

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v0}, Lbc/d;->b(Lbc/t;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v0}, Lbc/d;->e(Lbc/t;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p1, Lbc/a;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public b(I)I
    .registers 3

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0}, Lbc/g;->a()I

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0}, Lbc/g;->a()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lbc/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0, v1}, Lbc/g;->a(I)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->b()Lbc/q;

    move-result-object v0

    sget-object v2, Lbc/q;->a:Lbc/q;

    if-ne v0, v2, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    goto :goto_2c

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method

.method b(II)Z
    .registers 4

    invoke-virtual {p0, p1}, Lbc/d;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lbc/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Lbc/t;)Z
    .registers 4

    iget v0, p1, Lbc/t;->a:I

    invoke-virtual {p0}, Lbc/d;->a()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget v0, p1, Lbc/t;->a:I

    if-ltz v0, :cond_1c

    iget v0, p1, Lbc/t;->b:I

    iget v1, p1, Lbc/t;->a:I

    invoke-virtual {p0, v1}, Lbc/d;->b(I)I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget v0, p1, Lbc/t;->b:I

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public c()F
    .registers 4

    new-instance v1, Lbc/v;

    invoke-direct {v1, p0}, Lbc/v;-><init>(Lbc/d;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1}, Lbc/v;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lbc/v;->a()Lbc/t;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    invoke-virtual {v2}, Lbc/h;->w()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_6

    :cond_1a
    return v0
.end method

.method c(I)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method c(II)Z
    .registers 4

    invoke-virtual {p0, p1}, Lbc/d;->e(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lbc/d;->d(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(Lbc/t;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lbc/t;->a:I

    invoke-virtual {p0}, Lbc/d;->a()I

    move-result v3

    if-lt v0, v3, :cond_b

    :goto_a
    return v2

    :cond_b
    invoke-virtual {p0, p1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v3

    iget v0, p1, Lbc/t;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lbc/d;->a(I)Lbc/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbc/g;->a(I)Lbc/h;

    move-result-object v4

    invoke-virtual {v3}, Lbc/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {v4}, Lbc/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {v3}, Lbc/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lbc/h;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    move v0, v1

    :goto_3e
    invoke-virtual {v3}, Lbc/h;->b()Lbc/q;

    move-result-object v5

    sget-object v6, Lbc/q;->d:Lbc/q;

    if-ne v5, v6, :cond_62

    invoke-virtual {v4}, Lbc/h;->b()Lbc/q;

    move-result-object v5

    sget-object v6, Lbc/q;->b:Lbc/q;

    if-ne v5, v6, :cond_62

    invoke-virtual {v3}, Lbc/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lbc/h;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    if-nez v0, :cond_62

    :goto_5e
    move v2, v1

    goto :goto_a

    :cond_60
    move v0, v2

    goto :goto_3e

    :cond_62
    move v1, v2

    goto :goto_5e
.end method

.method d(I)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method d(II)Z
    .registers 4

    invoke-virtual {p0, p1}, Lbc/d;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d(Lbc/t;)Z
    .registers 3

    iget v0, p1, Lbc/t;->a:I

    invoke-virtual {p0, v0}, Lbc/d;->c(I)Z

    move-result v0

    return v0
.end method

.method e(I)Z
    .registers 3

    invoke-virtual {p0}, Lbc/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e(Lbc/t;)Z
    .registers 4

    iget v0, p1, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->b:I

    invoke-virtual {p0, v0, v1}, Lbc/d;->c(II)Z

    move-result v0

    return v0
.end method

.method public f(Lbc/t;)Z
    .registers 3

    iget v0, p1, Lbc/t;->a:I

    invoke-virtual {p0, v0}, Lbc/d;->e(I)Z

    move-result v0

    return v0
.end method

.method public g(Lbc/t;)Z
    .registers 4

    iget v0, p1, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->b:I

    invoke-virtual {p0, v0, v1}, Lbc/d;->d(II)Z

    move-result v0

    return v0
.end method
