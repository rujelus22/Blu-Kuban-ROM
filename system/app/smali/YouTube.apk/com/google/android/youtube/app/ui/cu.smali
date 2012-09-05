.class final Lcom/google/android/youtube/app/ui/cu;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/ch;)V
    .registers 3
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/ch;

    .line 355
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/ch;->b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 356
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->d(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 360
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 351
    const-string v0, "Error adding to watch later"

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->c:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/ch;

    const v1, 0x7f0a016d

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cu;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Landroid/content/Context;)V

    return-void
.end method
