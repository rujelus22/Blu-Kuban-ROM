.class public abstract Lcom/google/commerce/wireless/topiary/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/google/commerce/wireless/topiary/j;->a:Ljava/lang/reflect/Method;

    .line 27
    sput-object v0, Lcom/google/commerce/wireless/topiary/j;->b:Ljava/util/concurrent/Executor;

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_38

    .line 37
    :try_start_b
    const-class v0, Landroid/os/AsyncTask;

    .line 38
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

    move-result-object v1

    sput-object v1, Lcom/google/commerce/wireless/topiary/j;->a:Ljava/lang/reflect/Method;

    .line 40
    const-string v1, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/commerce/wireless/topiary/j;->b:Ljava/util/concurrent/Executor;

    .line 43
    const-string v0, "BackgroundTask"

    const-string v1, "Using thread pool executor for BackgroundTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_38} :catch_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_38} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_38} :catch_47

    .line 52
    :cond_38
    return-void

    .line 44
    :catch_39
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 46
    :catch_40
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 48
    :catch_47
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/commerce/wireless/topiary/k;

    invoke-direct {v0, p0}, Lcom/google/commerce/wireless/topiary/k;-><init>(Lcom/google/commerce/wireless/topiary/j;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/j;->c:Landroid/os/AsyncTask;

    .line 62
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 65
    sget-object v0, Lcom/google/commerce/wireless/topiary/j;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 67
    :try_start_5
    sget-object v0, Lcom/google/commerce/wireless/topiary/j;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/j;->c:Landroid/os/AsyncTask;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/commerce/wireless/topiary/j;->b:Ljava/util/concurrent/Executor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_18} :catch_20

    .line 76
    :goto_18
    return-void

    .line 68
    :catch_19
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :catch_20
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :cond_27
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/j;->c:Landroid/os/AsyncTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_18
.end method
