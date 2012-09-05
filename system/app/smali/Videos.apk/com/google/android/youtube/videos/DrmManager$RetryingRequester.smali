.class Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryingRequester"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final target:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 3
    .parameter
    .parameter "userAuthorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    .line 203
    iput-object p2, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 204
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;-><init>(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 208
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
