.class final Lcom/google/android/youtube/app/ui/ck;
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
    .line 313
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    .line 314
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/ch;->b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Favorite"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->c(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 320
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/f;->a(Ljava/lang/Exception;)V

    .line 330
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 310
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_18

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    const v1, 0x7f0a016b

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;I)V

    :goto_17
    return-void

    :cond_18
    const-string v0, "Error adding to favorites"

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ck;->c:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 310
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ck;->a:Lcom/google/android/youtube/app/ui/ch;

    const v1, 0x7f0a016a

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;I)V

    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/f;->d_()V

    .line 325
    return-void
.end method
