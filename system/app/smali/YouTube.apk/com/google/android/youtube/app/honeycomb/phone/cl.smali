.class final Lcom/google/android/youtube/app/honeycomb/phone/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/model/Video;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->a:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->a:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->c(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    const v1, 0x7f0b01cb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cl;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    return-void
.end method
