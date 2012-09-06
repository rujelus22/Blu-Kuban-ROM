.class final Lcom/google/android/youtube/app/ui/cy;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/SubscribeHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    .line 263
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 264
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->e(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->f(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->B()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/da;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/da;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 278
    :goto_4a
    return-void

    .line 275
    :cond_4b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/cz;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/cz;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->g(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_4a
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/e;->a(Ljava/lang/Exception;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    .line 290
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/e;->e_()V

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    .line 284
    return-void
.end method
