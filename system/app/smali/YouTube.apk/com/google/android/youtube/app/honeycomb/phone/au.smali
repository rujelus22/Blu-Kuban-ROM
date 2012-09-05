.class final Lcom/google/android/youtube/app/honeycomb/phone/au;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

.field private b:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/au;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 768
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 769
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 772
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Landroid/os/Handler;

    .line 773
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 777
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 781
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 782
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->b()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->c()I

    move-result v0

    if-lez v0, :cond_31

    .line 786
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/av;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/av;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/au;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    :cond_31
    :goto_31
    return-void

    .line 796
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_31
.end method
