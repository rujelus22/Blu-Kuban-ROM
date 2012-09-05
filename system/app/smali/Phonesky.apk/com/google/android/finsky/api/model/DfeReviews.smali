.class public Lcom/google/android/finsky/api/model/DfeReviews;
.super Lcom/google/android/finsky/api/model/PaginatedList;
.source "DfeReviews.java"

# interfaces
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/PaginatedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
        "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
        ">;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V
    .registers 4
    .parameter "dfeApi"
    .parameter "reviewsUrl"
    .parameter "autoLoadNextPage"

    .prologue
    .line 28
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 29
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 30
    return-void
.end method


# virtual methods
.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)Ljava/util/List;
    .registers 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)Ljava/lang/String;
    .registers 3
    .parameter "response"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getNextPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getNextPageUrl(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getReviews(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public resetItems()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->resetItems()V

    .line 45
    return-void
.end method
