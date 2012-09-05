.class public Lcom/google/android/youtube/core/client/DefaultStatsClient;
.super Lcom/google/android/youtube/core/client/BaseClient;
.source "DefaultStatsClient.java"

# interfaces
.implements Lcom/google/android/youtube/core/client/StatsClient;


# instance fields
.field private final pingRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter "httpClient"
    .parameter "executor"

    .prologue
    .line 25
    invoke-direct {p0, p2, p1}, Lcom/google/android/youtube/core/client/BaseClient;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultStatsClient;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/client/DefaultStatsClient;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultStatsClient;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 27
    return-void
.end method


# virtual methods
.method public ping(Landroid/net/Uri;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/net/Uri;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultStatsClient;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 31
    return-void
.end method
