.class final Lcom/google/android/youtube/app/honeycomb/phone/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/model/Video;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ci;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ci;->a:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ci;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ci;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;)Lcom/google/android/youtube/core/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ci;->a:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ci;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;

    const v1, 0x7f0b01cd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method