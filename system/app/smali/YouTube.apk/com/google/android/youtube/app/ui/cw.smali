.class final Lcom/google/android/youtube/app/ui/cw;
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
    .line 210
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    .line 211
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 212
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->e(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->f(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->B()I

    move-result v2

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/cx;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/cx;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->g(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 221
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/e;->a(Ljava/lang/Exception;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    .line 233
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/e;->e_()V

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    .line 227
    return-void
.end method
