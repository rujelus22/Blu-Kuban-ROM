.class public LXe;
.super Ljava/lang/Object;
.source "Keys.java"


# direct methods
.method public static a(Lant;)Lant;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    .line 30
    const-class v1, LanD;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 31
    const/4 v0, 0x0

    .line 56
    :goto_13
    return-object v0

    .line 34
    :cond_14
    invoke-virtual {p0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 35
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider must be a parameterized type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LafQ;->a(ZLjava/lang/Object;)V

    move-object v0, v1

    .line 38
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 39
    array-length v0, v0

    if-ne v0, v2, :cond_57

    move v0, v2

    :goto_3f
    const-string v2, "Provider must have exactly one type argument."

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 42
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    .line 43
    invoke-virtual {p0}, Lant;->a()Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_59

    .line 46
    invoke-static {v0, v1}, Lant;->a(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    goto :goto_13

    :cond_57
    move v0, v3

    .line 39
    goto :goto_3f

    .line 48
    :cond_59
    invoke-virtual {p0}, Lant;->a()Ljava/lang/Class;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_64

    .line 50
    invoke-static {v0, v1}, Lant;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lant;

    move-result-object v0

    goto :goto_13

    .line 52
    :cond_64
    invoke-static {v0}, Lant;->a(Ljava/lang/reflect/Type;)Lant;

    move-result-object v0

    goto :goto_13
.end method
