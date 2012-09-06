.class final Lcom/google/android/youtube/app/honeycomb/phone/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/bm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/br;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    const-string v0, "Error downloading video data"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 141
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/br;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/adapter/ay;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/br;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/adapter/ay;->a(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/br;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->g(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/br;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->j(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/async/l;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/br;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ay;->notifyDataSetChanged()V

    return-void
.end method
