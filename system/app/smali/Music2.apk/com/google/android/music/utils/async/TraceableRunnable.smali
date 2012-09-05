.class public Lcom/google/android/music/utils/async/TraceableRunnable;
.super Ljava/lang/Object;
.source "TraceableRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mCalledFrom:Ljava/lang/Throwable;

.field private final mOrigRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "AsyncRunner"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/async/TraceableRunnable;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "origRunnable"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/music/utils/async/TraceableRunnable;->mOrigRunnable:Ljava/lang/Runnable;

    .line 22
    sget-boolean v0, Lcom/google/android/music/utils/async/TraceableRunnable;->LOGV:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :goto_e
    iput-object v0, p0, Lcom/google/android/music/utils/async/TraceableRunnable;->mCalledFrom:Ljava/lang/Throwable;

    .line 23
    return-void

    .line 22
    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/utils/async/TraceableRunnable;->mOrigRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 34
    return-void

    .line 28
    :catch_6
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/music/utils/async/TraceableRunnable;->mCalledFrom:Ljava/lang/Throwable;

    if-eqz v1, :cond_27

    .line 30
    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/utils/async/TraceableRunnable;->mCalledFrom:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/music/utils/ArrayUtils;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 32
    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
