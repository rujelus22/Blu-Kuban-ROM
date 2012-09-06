.class public Lcom/google/android/apps/common/reflect/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 90
    :catch_5
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Throwable;
    new-instance v1, Lcom/google/android/apps/common/reflect/ReflectionException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/common/reflect/ReflectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/google/android/apps/common/reflect/ReflectionHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/common/reflect/ReflectionHelper$1;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 35
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "clazz"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method

.method public varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v1, "clazz"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/google/android/apps/common/reflect/ReflectionHelper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/common/reflect/ReflectionHelper$6;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/Class;[Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 128
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    const-string v1, "constructor"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "clazz"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 59
    .local v0, field:Ljava/lang/reflect/Field;
    const-string v1, "field"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "object"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 41
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v1, "clazz"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v1, "methodName"

    invoke-static {p2, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 47
    .local v0, method:Ljava/lang/reflect/Method;
    const-string v1, "method"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "field"
    .end parameter
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    const-string v0, "field"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 6
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_0 .. :try_end_3} :catch_5

    .line 114
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 111
    :catch_5
    move-exception v0

    .line 112
    .local v0, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "method"
    .end parameter
    .parameter "instance"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "args"
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    const-string v0, "constructor"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;-><init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->wrapAllThrowablesAsReflectionException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
