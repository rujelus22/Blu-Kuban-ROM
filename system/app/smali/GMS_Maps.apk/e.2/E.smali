.class public Le/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lg/a;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lg/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/E;->a:Ljava/util/Map;

    iput-object p2, p0, Le/E;->b:Lg/a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Le/E;->b:Lg/a;

    invoke-virtual {v0}, Lg/a;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map;)[F
    .registers 4

    invoke-virtual {p0, p1}, Le/E;->b(Ljava/util/Map;)[F

    move-result-object v0

    iget-object v1, p0, Le/E;->b:Lg/a;

    invoke-virtual {v1, v0}, Lg/a;->a([F)[F

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/util/Map;)[F
    .registers 9

    iget-object v0, p0, Le/E;->b:Lg/a;

    iget v0, v0, Lg/a;->a:I

    new-array v2, v0, [F

    iget-object v0, p0, Le/E;->b:Lg/a;

    iget v0, v0, Lg/a;->a:I

    new-array v3, v0, [I

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Le/E;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v2, v5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v6

    aput v0, v2, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v1, v3, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v3, v0

    goto :goto_14

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    array-length v1, v2

    if-ge v0, v1, :cond_61

    aget v1, v3, v0

    if-nez v1, :cond_58

    const/high16 v1, -0x3d38

    aput v1, v2, v0

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_58
    aget v1, v2, v0

    aget v4, v3, v0

    int-to-float v4, v4

    div-float/2addr v1, v4

    aput v1, v2, v0

    goto :goto_55

    :cond_61
    return-object v2
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
    instance-of v2, p1, Le/E;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Le/E;

    iget-object v2, p0, Le/E;->a:Ljava/util/Map;

    iget-object v3, p1, Le/E;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Le/E;->b:Lg/a;

    iget-object v3, p1, Le/E;->b:Lg/a;

    invoke-virtual {v2, v3}, Lg/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Le/E;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/E;->b:Lg/a;

    invoke-virtual {v1}, Lg/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
