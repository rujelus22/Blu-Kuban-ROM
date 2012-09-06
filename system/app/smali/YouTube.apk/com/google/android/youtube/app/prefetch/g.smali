.class final Lcom/google/android/youtube/app/prefetch/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/prefetch/d;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/prefetch/d;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/youtube/app/prefetch/g;->a:Lcom/google/android/youtube/app/prefetch/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/prefetch/d;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/prefetch/g;-><init>(Lcom/google/android/youtube/app/prefetch/d;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/g;->a:Lcom/google/android/youtube/app/prefetch/d;

    invoke-static {v1}, Lcom/google/android/youtube/app/prefetch/d;->a(Lcom/google/android/youtube/app/prefetch/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 359
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/g;->a:Lcom/google/android/youtube/app/prefetch/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/d;->b(Lcom/google/android/youtube/app/prefetch/d;)V

    .line 364
    :cond_22
    :goto_22
    return-void

    .line 361
    :cond_23
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/g;->a:Lcom/google/android/youtube/app/prefetch/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/d;->c(Lcom/google/android/youtube/app/prefetch/d;)V

    goto :goto_22
.end method
