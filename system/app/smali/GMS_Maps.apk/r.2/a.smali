.class public Lr/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/r;

.field private final b:Lt/V;

.field private final c:Lt/L;

.field private final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lt/r;Lt/V;Lt/L;[Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/a;->a:Lt/r;

    iput-object p2, p0, Lr/a;->b:Lt/V;

    if-nez p3, :cond_d

    invoke-virtual {p2}, Lt/V;->f()Lt/L;

    move-result-object p3

    :cond_d
    iput-object p3, p0, Lr/a;->c:Lt/L;

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lr/a;->d:Ljava/util/Set;

    iget-object v0, p0, Lr/a;->c:Lt/L;

    invoke-virtual {p2, v0}, Lt/V;->a(Lt/L;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lr/a;->c:Lt/L;

    invoke-virtual {p2}, Lt/V;->f()Lt/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/L;->b(Lt/L;)V

    :cond_26
    array-length v1, p4

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_38

    aget-object v2, p4, v0

    iget-object v3, p0, Lr/a;->d:Ljava/util/Set;

    invoke-static {v2}, Lt/m;->a(Ljava/lang/String;)Lt/m;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_38
    return-void
.end method

.method public static a(Ljava/util/Collection;Lt/W;)Ljava/util/Collection;
    .registers 6

    invoke-static {}, LK/bR;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    invoke-virtual {v0, p1}, Lr/a;->a(Lt/W;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lr/a;
    .registers 10

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    :goto_d
    return-object v1

    :cond_e
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lt v3, v0, :cond_d

    aget-object v3, v2, v8

    invoke-static {v3}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, LaJ/B;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, LaJ/B;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v5

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    array-length v6, v2

    if-le v6, v0, :cond_3d

    aget-object v1, v2, v0

    invoke-static {v1}, Lr/a;->b(Ljava/lang/String;)Lt/L;

    move-result-object v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x4

    :cond_3d
    invoke-virtual {v4}, LaJ/B;->c()I

    move-result v6

    invoke-virtual {v4}, LaJ/B;->e()I

    move-result v4

    invoke-static {v6, v4}, Lt/L;->b(II)Lt/L;

    move-result-object v4

    invoke-virtual {v5}, LaJ/B;->c()I

    move-result v6

    invoke-virtual {v5}, LaJ/B;->e()I

    move-result v5

    invoke-static {v6, v5}, Lt/L;->b(II)Lt/L;

    move-result-object v5

    array-length v6, v2

    sub-int/2addr v6, v0

    new-array v6, v6, [Ljava/lang/String;

    array-length v7, v6

    invoke-static {v2, v0, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lr/a;

    invoke-static {v4, v5}, Lt/V;->a(Lt/L;Lt/L;)Lt/V;

    move-result-object v2

    invoke-direct {v0, v3, v2, v1, v6}, Lr/a;-><init>(Lt/r;Lt/V;Lt/L;[Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_d
.end method

.method public static a(Ljava/util/Collection;Lt/L;)Lt/r;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    invoke-virtual {v0, p1}, Lr/a;->a(Lt/L;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lr/a;->c()Lt/L;

    move-result-object v3

    invoke-virtual {v3, p1}, Lt/L;->d(Lt/L;)F

    move-result v3

    if-eqz v1, :cond_26

    cmpg-float v5, v3, v2

    if-gez v5, :cond_2f

    :cond_26
    invoke-virtual {v0}, Lr/a;->a()Lt/r;

    move-result-object v0

    move v1, v3

    :goto_2b
    move v2, v1

    move-object v1, v0

    goto :goto_6

    :cond_2e
    return-object v1

    :cond_2f
    move-object v0, v1

    move v1, v2

    goto :goto_2b
.end method

.method static b(Ljava/lang/String;)Lt/L;
    .registers 5

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {p0}, LaJ/B;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v0

    invoke-static {v1, v0}, Lt/L;->b(II)Lt/L;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const-string v0, "0x1:0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-gt v0, v2, :cond_3c

    const-string v2, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    :try_start_2b
    invoke-static {v2}, Laf/k;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Laf/k;->b(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Lt/L;

    invoke-direct {v0, v2, v3}, Lt/L;-><init>(II)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_14

    :catch_39
    move-exception v0

    move-object v0, v1

    goto :goto_14

    :cond_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_51
    move-object v0, v1

    goto :goto_14
.end method


# virtual methods
.method public a()Lt/r;
    .registers 2

    iget-object v0, p0, Lr/a;->a:Lt/r;

    return-object v0
.end method

.method a(Ljava/util/Set;)V
    .registers 3

    iget-object v0, p0, Lr/a;->d:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lr/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public a(Lt/L;)Z
    .registers 3

    iget-object v0, p0, Lr/a;->b:Lt/V;

    invoke-virtual {v0, p1}, Lt/V;->a(Lt/L;)Z

    move-result v0

    return v0
.end method

.method public a(Lt/W;)Z
    .registers 3

    iget-object v0, p0, Lr/a;->b:Lt/V;

    invoke-virtual {v0, p1}, Lt/V;->a(Lt/W;)Z

    move-result v0

    return v0
.end method

.method public b()Lt/V;
    .registers 2

    iget-object v0, p0, Lr/a;->b:Lt/V;

    return-object v0
.end method

.method public c()Lt/L;
    .registers 2

    iget-object v0, p0, Lr/a;->c:Lt/L;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lr/a;

    if-eqz v2, :cond_35

    check-cast p1, Lr/a;

    iget-object v2, p1, Lr/a;->a:Lt/r;

    iget-object v3, p0, Lr/a;->a:Lt/r;

    invoke-virtual {v2, v3}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p1, Lr/a;->b:Lt/V;

    iget-object v3, p0, Lr/a;->b:Lt/V;

    invoke-virtual {v2, v3}, Lt/V;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p1, Lr/a;->c:Lt/L;

    iget-object v3, p0, Lr/a;->c:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p1, Lr/a;->d:Ljava/util/Set;

    iget-object v3, p0, Lr/a;->d:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4

    :cond_35
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lr/a;->b:Lt/V;

    invoke-virtual {v0}, Lt/V;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr/a;->c:Lt/L;

    invoke-virtual {v1}, Lt/L;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr/a;->d:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr/a;->a:Lt/r;

    invoke-virtual {v1}, Lt/r;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/a;->a:Lt/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/a;->b:Lt/V;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/a;->c:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/a;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
