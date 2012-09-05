.class public Lcom/sprint/w/installer/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "target"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, defaultValue:Ljava/lang/Object;,"TE;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object p2

    .line 52
    .end local p2           #defaultValue:Ljava/lang/Object;,"TE;"
    :goto_12
    return-object p2

    .line 49
    .restart local p2       #defaultValue:Ljava/lang/Object;,"TE;"
    :catch_13
    move-exception v0

    goto :goto_12

    .line 48
    :catch_15
    move-exception v0

    goto :goto_12

    .line 47
    :catch_17
    move-exception v0

    goto :goto_12
.end method

.method public static varargs tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "target"
    .parameter "methodName"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 40
    :goto_c
    return-object v0

    .line 37
    :catch_d
    move-exception v0

    .line 40
    :goto_e
    const/4 v0, 0x0

    goto :goto_c

    .line 36
    :catch_10
    move-exception v0

    goto :goto_e

    .line 35
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public static varargs tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "target"
    .parameter "methodName"
    .parameter "args"

    .prologue
    .line 24
    array-length v2, p2

    new-array v0, v2, [Ljava/lang/Class;

    .line 25
    .local v0, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    .line 26
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 29
    :cond_12
    invoke-static {p0, p1, v0, p2}, Lcom/sprint/w/installer/util/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
