.class final Lcom/google/android/youtube/app/ui/dp;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    .line 497
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 498
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->h(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Favorite"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->d(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 503
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/e;->a(Ljava/lang/Exception;)V

    .line 513
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 493
    const-string v0, "GData"

    const-string v1, "InvalidEntryException"

    const/4 v2, 0x0

    const-string v3, "Favorite already exists."

    invoke-static {p2, v0, v1, v2, v3}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    const v1, 0x7f0b01c6

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;I)V

    :goto_15
    return-void

    :cond_16
    const-string v0, "Error adding to favorites"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 493
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    const v1, 0x7f0b01c5

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;I)V

    return-void
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 507
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/e;->e_()V

    .line 508
    return-void
.end method
