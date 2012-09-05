.class final Lcom/google/android/youtube/core/async/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/g;

.field final synthetic b:Lcom/google/android/youtube/core/async/z;

.field final synthetic c:Lcom/google/android/youtube/core/async/az;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/az;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/async/z;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ba;->c:Lcom/google/android/youtube/core/async/az;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/ba;->a:Lcom/google/android/youtube/core/async/g;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/ba;->b:Lcom/google/android/youtube/core/async/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 575
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    instance-of v0, p2, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_1c

    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "operation needs a full YouTube account"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ba;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ba;->b:Lcom/google/android/youtube/core/async/z;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_1b
    return-void

    :cond_1c
    const/16 v0, 0x191

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ba;->d:Z

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ba;->c:Lcom/google/android/youtube/core/async/az;

    iget-object v0, v0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V

    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ba;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ba;->b:Lcom/google/android/youtube/core/async/z;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1b

    :cond_3d
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ba;->d:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ba;->c:Lcom/google/android/youtube/core/async/az;

    iget-object v0, v0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ba;->c:Lcom/google/android/youtube/core/async/az;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/az;->a(Lcom/google/android/youtube/core/async/az;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/async/z;->a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/z;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_1b
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ba;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ba;->b:Lcom/google/android/youtube/core/async/z;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
