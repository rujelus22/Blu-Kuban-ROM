.class final Lcom/google/android/youtube/app/ui/dy;
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
    .line 540
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    .line 541
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 542
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->e(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 546
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 537
    const-string v0, "GData"

    const-string v1, "InvalidEntryException"

    const/4 v2, 0x0

    const-string v3, "Video already in playlist"

    invoke-static {p2, v0, v1, v2, v3}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    const v1, 0x7f0b01c9

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;I)V

    :goto_15
    return-void

    :cond_16
    const-string v0, "Error adding to watch later"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dy;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    const v1, 0x7f0b01c8

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dy;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    return-void
.end method
