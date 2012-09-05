.class final Lcom/google/android/youtube/app/honeycomb/tablet/j;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

.field private final b:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Landroid/app/Activity;Lcom/google/android/youtube/core/e;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    .line 369
    invoke-direct {p0, p3}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 370
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/k;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/k;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->b:Lcom/google/android/youtube/core/async/g;

    .line 371
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->b(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->f(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 380
    :goto_1e
    return-void

    .line 378
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1e
.end method
