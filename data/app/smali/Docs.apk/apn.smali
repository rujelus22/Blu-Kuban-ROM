.class public Lapn;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Lapl;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final a:[Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_30

    move-object v0, p2

    .line 333
    check-cast v0, Ljava/lang/Class;

    .line 334
    if-nez p1, :cond_14

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_69

    :cond_14
    move v1, v3

    :goto_15
    const-string v4, "No owner type for enclosed %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-static {v1, v4, v5}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 336
    if-eqz p1, :cond_26

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6b

    :cond_26
    move v0, v3

    :goto_27
    const-string v1, "Owner type for unenclosed %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {v0, v1, v3}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_30
    if-nez p1, :cond_6d

    const/4 v0, 0x0

    :goto_33
    iput-object v0, p0, Lapn;->a:Ljava/lang/reflect/Type;

    .line 341
    invoke-static {p2}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lapn;->b:Ljava/lang/reflect/Type;

    .line 342
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    .line 343
    :goto_43
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v2, v0, :cond_72

    .line 344
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    const-string v1, "type parameter"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    const-string v1, "type parameters"

    invoke-static {v0, v1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    iget-object v1, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v2

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, v0, v2

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_69
    move v1, v2

    .line 334
    goto :goto_15

    :cond_6b
    move v0, v2

    .line 336
    goto :goto_27

    .line 340
    :cond_6d
    invoke-static {p1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_33

    .line 348
    :cond_72
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-object v1, p0, Lapn;->a:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lapn;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 377
    :cond_d
    :goto_d
    return v0

    .line 367
    :cond_e
    iget-object v1, p0, Lapn;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 371
    iget-object v2, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    array-length v3, v2

    move v1, v0

    :goto_1a
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 372
    invoke-static {v4}, Lapk;->a(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 377
    :cond_27
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 381
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

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

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lapn;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lapn;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lapn;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lapn;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lapk;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 393
    iget-object v0, p0, Lapn;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v0, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_1f

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_1e
    return-object v0

    .line 399
    :cond_1f
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const/4 v0, 0x1

    :goto_32
    iget-object v2, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    .line 401
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lapn;->a:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 403
    :cond_4b
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
