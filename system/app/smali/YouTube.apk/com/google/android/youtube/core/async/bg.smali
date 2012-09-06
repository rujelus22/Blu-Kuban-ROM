.class final Lcom/google/android/youtube/core/async/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/google/android/youtube/core/async/bg;->b:Landroid/app/Activity;

    .line 481
    invoke-static {p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    const-string v1, "YouTubeAuthTokenCallback cannot function without gdataClient"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 9
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/bg;->b:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 493
    :goto_1b
    return-void

    .line 490
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/bg;->b:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v6, p1, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_1b
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    .line 501
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 474
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-boolean v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    :goto_a
    iget-object v1, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/bg;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void

    :cond_12
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bg;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d()V

    .line 497
    return-void
.end method
