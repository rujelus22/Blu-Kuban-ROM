.class final Lcom/google/android/youtube/app/honeycomb/phone/at;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/at;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 743
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 747
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 752
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 753
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    .line 755
    :cond_18
    return-void
.end method
