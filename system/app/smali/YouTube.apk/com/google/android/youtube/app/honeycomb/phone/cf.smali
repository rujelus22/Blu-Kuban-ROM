.class final Lcom/google/android/youtube/app/honeycomb/phone/cf;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/cf;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 993
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 994
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 997
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->b:Landroid/os/Handler;

    .line 998
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1002
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1006
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1007
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v0

    if-lez v0, :cond_31

    .line 1011
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/cg;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/cg;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/cf;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1023
    :cond_31
    :goto_31
    return-void

    .line 1021
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_31
.end method
