.class final Lcom/google/zxing/client/android/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/util/concurrent/ScheduledFuture;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/zxing/client/android/e;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/e;-><init>(B)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    new-instance v0, Lcom/google/zxing/client/android/f;

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/f;-><init>(Lcom/google/zxing/client/android/d;B)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->d:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/google/zxing/client/android/d;->b:Landroid/app/Activity;

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/client/android/d;->a()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/zxing/client/android/d;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/zxing/client/android/d;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    if-eqz v0, :cond_b

    .line 77
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 80
    :cond_b
    return-void
.end method


# virtual methods
.method final a()V
    .registers 6

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/client/android/d;->e()V

    .line 52
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 54
    :try_start_b
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/zxing/client/android/c;

    iget-object v2, p0, Lcom/google/zxing/client/android/d;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/c;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_b .. :try_end_1e} :catch_1f

    .line 62
    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/zxing/client/android/d;->e()V

    .line 66
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/zxing/client/android/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method public final c()V
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/zxing/client/android/d;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/client/android/d;->a()V

    .line 72
    return-void
.end method

.method final d()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/zxing/client/android/d;->e()V

    .line 84
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 85
    return-void
.end method
