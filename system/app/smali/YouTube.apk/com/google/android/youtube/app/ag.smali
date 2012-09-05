.class public final Lcom/google/android/youtube/app/ag;
.super Lcom/google/android/youtube/core/client/l;
.source "SourceFile"


# instance fields
.field private final l:Lcom/google/android/youtube/app/b/i;

.field private m:Lcom/google/android/youtube/core/async/ad;

.field private n:Lcom/google/android/youtube/core/async/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/utils/i;ZZLjava/util/Set;Lcom/google/android/youtube/app/b/i;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct/range {p0 .. p10}, Lcom/google/android/youtube/core/client/l;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/utils/i;ZZLjava/util/Set;)V

    .line 62
    const-string v0, "prefetchStore can\'t be null"

    invoke-static {p11, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/ag;->l:Lcom/google/android/youtube/app/b/i;

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/core/client/l;->a(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V

    .line 75
    new-instance v0, Lcom/google/android/youtube/app/b/c;

    iget-object v1, p0, Lcom/google/android/youtube/app/ag;->l:Lcom/google/android/youtube/app/b/i;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/b/c;-><init>(Lcom/google/android/youtube/app/b/i;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ag;->a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/android/youtube/core/client/l;->j:Lcom/google/android/youtube/core/async/ag;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ag;->a(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/r;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ag;->m:Lcom/google/android/youtube/core/async/ad;

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/core/client/l;->k:Lcom/google/android/youtube/core/async/ad;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ag;->a(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ag;->n:Lcom/google/android/youtube/core/async/ad;

    .line 79
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/ag;->m:Lcom/google/android/youtube/core/async/ad;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ag;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/ag;->n:Lcom/google/android/youtube/core/async/ad;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ag;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 92
    return-void
.end method
