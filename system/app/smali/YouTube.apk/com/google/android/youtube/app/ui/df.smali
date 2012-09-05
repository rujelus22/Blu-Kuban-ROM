.class final Lcom/google/android/youtube/app/ui/df;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/da;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/da;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/df;->a:Lcom/google/android/youtube/app/ui/da;

    .line 237
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/da;->b(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 238
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/df;->b:Ljava/lang/String;

    .line 239
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/da;->g(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Comment"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 240
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->i(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/df;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->h(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/df;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/df;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 245
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 231
    if-eqz p2, :cond_13

    const/16 v0, 0x193

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->c:Lcom/google/android/youtube/core/e;

    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->c:Lcom/google/android/youtube/core/e;

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    goto :goto_12
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 231
    check-cast p2, Lcom/google/android/youtube/core/model/Comment;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0175

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->j(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/app/a/d;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/google/android/youtube/app/a/d;->b(ILjava/lang/Object;)V

    return-void
.end method
