.class final Lcom/google/android/youtube/app/honeycomb/tablet/al;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)V
    .registers 3
    .parameter

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/al;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 796
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->f(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 800
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 804
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 805
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 806
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    .line 808
    :cond_18
    return-void
.end method
