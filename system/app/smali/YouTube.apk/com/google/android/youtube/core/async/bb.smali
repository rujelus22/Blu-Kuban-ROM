.class final Lcom/google/android/youtube/core/async/bb;
.super Lcom/google/android/youtube/core/async/au;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/au;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 746
    iput-object p2, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    .line 747
    invoke-static {p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    const-string v1, "YouTubeAuthTokenCallback cannot function without myProfileRequester"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    .line 761
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    .line 767
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 736
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-boolean v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    if-eqz v0, :cond_25

    move-object v0, v1

    :goto_a
    iget-object v2, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v5, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v7, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    return-void

    :cond_25
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    goto :goto_a
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 753
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/async/bb;->c:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 755
    return-void
.end method
