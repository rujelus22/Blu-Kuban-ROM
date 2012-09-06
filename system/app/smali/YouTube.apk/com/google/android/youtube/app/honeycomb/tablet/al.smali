.class final Lcom/google/android/youtube/app/honeycomb/tablet/al;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/al;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1000
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->i(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1004
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1008
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 1009
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1010
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    .line 1012
    :cond_18
    return-void
.end method
