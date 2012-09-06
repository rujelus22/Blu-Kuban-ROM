.class public Lapo;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Lapl;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    array-length v0, p2

    if-gt v0, v1, :cond_40

    move v0, v1

    :goto_9
    const-string v3, "Must have at most one lower bound."

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 452
    array-length v0, p1

    if-ne v0, v1, :cond_42

    move v0, v1

    :goto_12
    const-string v3, "Must have exactly one upper bound."

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 454
    array-length v0, p2

    if-ne v0, v1, :cond_46

    .line 455
    aget-object v0, p2, v2

    const-string v3, "lowerBound"

    invoke-static {v0, v3}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    aget-object v0, p2, v2

    const-string v3, "wildcard bounds"

    invoke-static {v0, v3}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 457
    aget-object v0, p1, v2

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_44

    :goto_2e
    const-string v0, "bounded both ways"

    invoke-static {v1, v0}, LafQ;->a(ZLjava/lang/Object;)V

    .line 458
    aget-object v0, p2, v2

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    .line 459
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lapo;->a:Ljava/lang/reflect/Type;

    .line 467
    :goto_3f
    return-void

    :cond_40
    move v0, v2

    .line 451
    goto :goto_9

    :cond_42
    move v0, v2

    .line 452
    goto :goto_12

    :cond_44
    move v1, v2

    .line 457
    goto :goto_2e

    .line 462
    :cond_46
    aget-object v0, p1, v2

    const-string v1, "upperBound"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    aget-object v0, p1, v2

    const-string v1, "wildcard bounds"

    invoke-static {v0, v1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    .line 465
    aget-object v0, p1, v2

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lapo;->a:Ljava/lang/reflect/Type;

    goto :goto_3f
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lapo;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 483
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .prologue
    .line 474
    iget-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lapo;->b:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lapk;->a:[Ljava/lang/reflect/Type;

    goto :goto_c
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .prologue
    .line 470
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lapo;->a:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_c
    iget-object v1, p0, Lapo;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 494
    iget-object v0, p0, Lapo;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1e

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapo;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_1d
    return-object v0

    .line 496
    :cond_1e
    iget-object v0, p0, Lapo;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_27

    .line 497
    const-string v0, "?"

    goto :goto_1d

    .line 499
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapo;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
