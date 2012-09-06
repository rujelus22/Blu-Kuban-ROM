.class final Lcom/google/android/youtube/app/honeycomb/phone/cd;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cd;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/cd;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cd;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 968
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cd;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 972
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 976
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 977
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cd;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 978
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cd;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    .line 980
    :cond_18
    return-void
.end method
