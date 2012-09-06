.class final Lcom/google/android/youtube/core/async/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final b:Lcom/google/android/youtube/core/async/bc;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/bc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/youtube/core/async/be;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/google/android/youtube/core/async/be;->b:Lcom/google/android/youtube/core/async/bc;

    .line 419
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/youtube/core/async/be;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/core/async/be;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 429
    :goto_11
    return-void

    .line 426
    :cond_12
    iget-object v1, p0, Lcom/google/android/youtube/core/async/be;->b:Lcom/google/android/youtube/core/async/bc;

    new-instance v2, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/async/bc;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_11
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/youtube/core/async/be;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/youtube/core/async/be;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V

    .line 439
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/core/async/be;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 433
    iget-object v0, p0, Lcom/google/android/youtube/core/async/be;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bc;->e_()V

    .line 434
    return-void
.end method
