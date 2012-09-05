.class final Lcom/google/android/youtube/app/honeycomb/tablet/x;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/g;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/v;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->b:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->a:Lcom/google/android/youtube/core/async/g;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->b:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->m(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->b:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a(Lcom/google/android/youtube/app/honeycomb/tablet/v;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->a:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->h(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 600
    return-void
.end method
