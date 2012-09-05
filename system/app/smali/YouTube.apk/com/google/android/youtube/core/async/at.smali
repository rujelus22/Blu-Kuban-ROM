.class final Lcom/google/android/youtube/core/async/at;
.super Lcom/google/android/youtube/core/async/au;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/au;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 709
    iput-object p2, p0, Lcom/google/android/youtube/core/async/at;->c:Landroid/app/Activity;

    .line 710
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/at;->c:Landroid/app/Activity;

    .line 722
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/at;->c:Landroid/app/Activity;

    .line 728
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/at;->c:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/model/UserAuth;

    invoke-direct {v2, p1, v3, p2, p3}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 715
    iput-object v3, p0, Lcom/google/android/youtube/core/async/at;->c:Landroid/app/Activity;

    .line 716
    return-void
.end method
