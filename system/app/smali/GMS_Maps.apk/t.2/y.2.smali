.class public final Lt/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/r;

.field private final b:I


# direct methods
.method public constructor <init>(Lt/r;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/y;->a:Lt/r;

    iput p2, p0, Lt/y;->b:I

    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 4

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_8
    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lt/y;->a(Lam/b;)Lt/y;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    move-object v0, v1

    goto :goto_c
.end method

.method public static a(Lam/b;)Lt/y;
    .registers 5

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v2

    const/high16 v0, -0x8000

    invoke-virtual {p0, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v0

    move v1, v0

    :goto_17
    if-eqz v2, :cond_1f

    new-instance v0, Lt/y;

    invoke-direct {v0, v2, v1}, Lt/y;-><init>(Lt/r;I)V

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e

    :cond_21
    move v1, v0

    goto :goto_17
.end method


# virtual methods
.method public a()Lt/r;
    .registers 2

    iget-object v0, p0, Lt/y;->a:Lt/r;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lt/y;->b:I

    return v0
.end method

.method public c()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/dH;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lt/y;->a:Lt/r;

    invoke-virtual {v2}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget v1, p0, Lt/y;->b:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1d

    const/4 v1, 0x3

    iget v2, p0, Lt/y;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_1d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lt/y;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lt/y;->a:Lt/r;

    check-cast p1, Lt/y;

    iget-object v1, p1, Lt/y;->a:Lt/r;

    invoke-virtual {v0, v1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    instance-of v0, p1, Lt/r;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lt/y;->a:Lt/r;

    invoke-virtual {v0, p1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lt/y;->a:Lt/r;

    invoke-virtual {v0}, Lt/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/y;->a:Lt/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLevelNumberE3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/y;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
