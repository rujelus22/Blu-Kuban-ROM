.class final Lcom/google/android/youtube/app/honeycomb/phone/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/bk;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/cb;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/cb;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/bb;)V
    .registers 6
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/bb;Ljava/lang/String;J)V

    .line 587
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ca;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ca;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method
