.class final Lcom/google/android/youtube/core/async/ax;
.super Lcom/google/android/youtube/core/async/au;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private c:Lcom/google/android/youtube/core/async/av;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/av;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/au;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 670
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    .line 671
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 682
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/av;->d_()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    .line 684
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/av;->a(Ljava/lang/Exception;)V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    .line 691
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    new-instance v1, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Lcom/google/android/youtube/core/async/av;

    .line 677
    return-void
.end method
