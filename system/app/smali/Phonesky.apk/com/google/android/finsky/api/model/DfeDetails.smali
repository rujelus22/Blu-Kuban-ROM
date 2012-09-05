.class public Lcom/google/android/finsky/api/model/DfeDetails;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeDetails.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnalyticsCookie:Ljava/lang/String;

.field private mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

.field private final mDetailsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .registers 4
    .parameter "dfeApi"
    .parameter "detailsUrl"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "dfeApi"
    .parameter "detailsUrl"
    .parameter "analyticsCookie"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mAnalyticsCookie:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsUrl:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 42
    return-void
.end method


# virtual methods
.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v0

    if-nez v0, :cond_e

    .line 50
    :cond_c
    const/4 v0, 0x0

    .line 53
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mAnalyticsCookie:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview()Z

    move-result v0

    if-nez v0, :cond_e

    .line 93
    :cond_c
    const/4 v0, 0x0

    .line 95
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    goto :goto_d
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeDetails;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeDetails;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)V

    return-void
.end method
