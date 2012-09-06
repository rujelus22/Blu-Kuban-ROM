.class public LaP/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_d

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stages cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_d
    iput-object p1, p0, LaP/d;->a:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)LaP/g;
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    return-object v0
.end method

.method public a(II)LaP/h;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0, p2}, LaP/g;->a(I)LaP/h;

    move-result-object v0

    return-object v0
.end method

.method public a(LaP/t;)LaP/h;
    .registers 4
    .parameter

    .prologue
    .line 49
    iget v0, p1, LaP/t;->a:I

    iget v1, p1, LaP/t;->b:I

    invoke-virtual {p0, v0, v1}, LaP/d;->a(II)LaP/h;

    move-result-object v0

    return-object v0
.end method

.method public a(LaP/a;)Z
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p1, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v0}, LaP/d;->b(LaP/t;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v0}, LaP/d;->e(LaP/t;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p1, LaP/a;->b:F

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
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0}, LaP/g;->a()I

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0}, LaP/g;->a()I

    move-result v0

    if-lez v0, :cond_2f

    .line 192
    iget-object v0, p0, LaP/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0, v1}, LaP/g;->a(I)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->b()LaP/q;

    move-result-object v0

    sget-object v2, LaP/q;->a:LaP/q;

    if-ne v0, v2, :cond_2d

    const/4 v0, 0x1

    .line 194
    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    .line 192
    goto :goto_2c

    :cond_2f
    move v0, v1

    .line 194
    goto :goto_2c
.end method

.method b(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1}, LaP/d;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, LaP/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(LaP/t;)Z
    .registers 4
    .parameter

    .prologue
    .line 104
    iget v0, p1, LaP/t;->a:I

    invoke-virtual {p0}, LaP/d;->a()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget v0, p1, LaP/t;->a:I

    if-ltz v0, :cond_1c

    iget v0, p1, LaP/t;->b:I

    iget v1, p1, LaP/t;->a:I

    invoke-virtual {p0, v1}, LaP/d;->b(I)I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget v0, p1, LaP/t;->b:I

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

    .prologue
    .line 201
    new-instance v1, LaP/v;

    invoke-direct {v1, p0}, LaP/v;-><init>(LaP/d;)V

    .line 202
    const/4 v0, 0x0

    .line 203
    :goto_6
    invoke-virtual {v1}, LaP/v;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 204
    invoke-virtual {v1}, LaP/v;->a()LaP/t;

    move-result-object v2

    .line 205
    invoke-virtual {p0, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    invoke-virtual {v2}, LaP/h;->w()F

    move-result v2

    add-float/2addr v0, v2

    .line 206
    goto :goto_6

    .line 207
    :cond_1a
    return v0
.end method

.method c(I)Z
    .registers 3
    .parameter

    .prologue
    .line 148
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
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1}, LaP/d;->e(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, LaP/d;->d(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(LaP/t;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget v0, p1, LaP/t;->a:I

    invoke-virtual {p0}, LaP/d;->a()I

    move-result v3

    if-lt v0, v3, :cond_b

    .line 127
    :goto_a
    return v2

    .line 120
    :cond_b
    invoke-virtual {p0, p1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v3

    .line 121
    iget v0, p1, LaP/t;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, LaP/d;->a(I)LaP/g;

    move-result-object v0

    invoke-virtual {v0, v2}, LaP/g;->a(I)LaP/h;

    move-result-object v4

    .line 124
    invoke-virtual {v3}, LaP/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {v4}, LaP/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {v3}, LaP/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, LaP/h;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    move v0, v1

    .line 127
    :goto_3e
    invoke-virtual {v3}, LaP/h;->b()LaP/q;

    move-result-object v5

    sget-object v6, LaP/q;->d:LaP/q;

    if-ne v5, v6, :cond_62

    invoke-virtual {v4}, LaP/h;->b()LaP/q;

    move-result-object v5

    sget-object v6, LaP/q;->b:LaP/q;

    if-ne v5, v6, :cond_62

    invoke-virtual {v3}, LaP/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LaP/h;->i()Ljava/lang/String;

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

    .line 124
    goto :goto_3e

    :cond_62
    move v1, v2

    .line 127
    goto :goto_5e
.end method

.method d(I)Z
    .registers 3
    .parameter

    .prologue
    .line 157
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
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0, p1}, LaP/d;->b(I)I

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

.method public d(LaP/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    iget v0, p1, LaP/t;->a:I

    invoke-virtual {p0, v0}, LaP/d;->c(I)Z

    move-result v0

    return v0
.end method

.method e(I)Z
    .registers 3
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, LaP/d;->a()I

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

.method public e(LaP/t;)Z
    .registers 4
    .parameter

    .prologue
    .line 161
    iget v0, p1, LaP/t;->a:I

    iget v1, p1, LaP/t;->b:I

    invoke-virtual {p0, v0, v1}, LaP/d;->c(II)Z

    move-result v0

    return v0
.end method

.method public f(LaP/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 170
    iget v0, p1, LaP/t;->a:I

    invoke-virtual {p0, v0}, LaP/d;->e(I)Z

    move-result v0

    return v0
.end method

.method public g(LaP/t;)Z
    .registers 4
    .parameter

    .prologue
    .line 179
    iget v0, p1, LaP/t;->a:I

    iget v1, p1, LaP/t;->b:I

    invoke-virtual {p0, v0, v1}, LaP/d;->d(II)Z

    move-result v0

    return v0
.end method
