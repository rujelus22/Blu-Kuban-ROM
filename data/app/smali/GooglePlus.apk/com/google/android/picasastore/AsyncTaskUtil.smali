.class public Lcom/google/android/picasastore/AsyncTaskUtil;
.super Ljava/lang/Object;
.source "AsyncTaskUtil.java"


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static sMethodExecuteOnExecutor:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2e

    .line 35
    :try_start_6
    const-class v1, Landroid/os/AsyncTask;

    const-string v2, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/google/android/picasastore/AsyncTaskUtil;->sExecutor:Ljava/util/concurrent/Executor;

    .line 37
    const-class v1, Landroid/os/AsyncTask;

    const-string v2, "executeOnExecutor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/concurrent/Executor;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/picasastore/AsyncTaskUtil;->sMethodExecuteOnExecutor:Ljava/lang/reflect/Method;
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_2e} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_2e} :catch_3d

    .line 47
    :cond_2e
    return-void

    .line 39
    :catch_2f
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_3d
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TParam;**>;[TParam;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<TParam;**>;"
    .local p1, params:[Ljava/lang/Object;,"[TParam;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_a

    .line 51
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :goto_9
    return-void

    .line 54
    :cond_a
    :try_start_a
    sget-object v1, Lcom/google/android/picasastore/AsyncTaskUtil;->sMethodExecuteOnExecutor:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/picasastore/AsyncTaskUtil;->sExecutor:Ljava/util/concurrent/Executor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1a} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1a} :catch_22

    goto :goto_9

    .line 55
    :catch_1b
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_22
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
