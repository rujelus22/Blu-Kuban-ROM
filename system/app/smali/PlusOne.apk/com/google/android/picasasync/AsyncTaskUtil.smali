.class Lcom/google/android/picasasync/AsyncTaskUtil;
.super Ljava/lang/Object;
.source "AsyncTaskUtil.java"


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static sMethodExecuteOnExecutor:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2e

    .line 35
    :try_start_6
    const-class v0, Landroid/os/AsyncTask;

    const-string v1, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/android/picasasync/AsyncTaskUtil;->sExecutor:Ljava/util/concurrent/Executor;

    .line 37
    const-class v0, Landroid/os/AsyncTask;

    const-string v1, "executeOnExecutor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/concurrent/Executor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/AsyncTaskUtil;->sMethodExecuteOnExecutor:Ljava/lang/reflect/Method;
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
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catch_36
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_3d
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
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
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<TParam;**>;"
    .local p1, params:[Ljava/lang/Object;,"[TParam;"
    const/4 v3, 0x0

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_d

    .line 51
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :goto_c
    return-void

    .line 54
    :cond_d
    :try_start_d
    sget-object v1, Lcom/google/android/picasasync/AsyncTaskUtil;->sMethodExecuteOnExecutor:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/picasasync/AsyncTaskUtil;->sExecutor:Ljava/util/concurrent/Executor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_1d} :catch_25

    goto :goto_c

    .line 55
    :catch_1e
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_25
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
