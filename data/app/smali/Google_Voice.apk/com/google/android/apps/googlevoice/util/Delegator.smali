.class public Lcom/google/android/apps/googlevoice/util/Delegator;
.super Ljava/lang/Object;
.source "Delegator.java"


# static fields
.field private static final GET_DELEGATE_METHOD:Ljava/lang/String; = "getDelegate"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter "delegate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_4

    .line 71
    const/4 v1, 0x0

    .line 84
    :goto_3
    return-object v1

    .line 73
    :cond_4
    new-instance v0, Lcom/google/android/apps/googlevoice/util/Delegator$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/googlevoice/util/Delegator$1;-><init>(Lcom/google/android/apps/googlevoice/util/Delegator;Ljava/lang/Object;)V

    .line 84
    .local v0, handler:Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method public checkCanDelegate(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, from:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, to:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_70

    aget-object v4, v0, v2

    .line 45
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getDelegate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2f

    .line 46
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 47
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid return type for getDelegate()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 52
    :cond_2f
    :try_start_2f
    new-instance v5, Lcom/google/android/apps/common/reflect/ReflectionHelper;

    invoke-direct {v5}, Lcom/google/android/apps/common/reflect/ReflectionHelper;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, p2, v6, v7}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3f
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_2f .. :try_end_3f} :catch_42

    .line 44
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 53
    :catch_42
    move-exception v1

    .line 54
    .local v1, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delegate from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v1           #e:Lcom/google/android/apps/common/reflect/ReflectionException;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_70
    return-void
.end method
