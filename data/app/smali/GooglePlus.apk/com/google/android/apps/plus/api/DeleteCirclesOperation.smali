.class public Lcom/google/android/apps/plus/api/DeleteCirclesOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "DeleteCirclesOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/DeleteCircleRequest;",
        "Lcom/google/api/services/plusi/model/DeleteCircleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCircleIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "intent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "deletecircle"

    invoke-static {}, Lcom/google/api/services/plusi/model/DeleteCircleRequestJson;->getInstance()Lcom/google/api/services/plusi/model/DeleteCircleRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/DeleteCircleResponseJson;->getInstance()Lcom/google/api/services/plusi/model/DeleteCircleResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/api/services/plusi/model/DeleteCircleResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->handleResponse(Lcom/google/api/services/plusi/model/DeleteCircleResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/DeleteCircleResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->onStartResultProcessing()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeDeletedCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/api/services/plusi/model/DeleteCircleRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->populateRequest(Lcom/google/api/services/plusi/model/DeleteCircleRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/DeleteCircleRequest;)V
    .registers 6
    .parameter "request"

    .prologue
    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/google/api/services/plusi/model/DeleteCircleRequest;->circleId:Ljava/util/List;

    .line 56
    iget-object v2, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, circleId:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/api/services/plusi/model/DeleteCircleRequest;->circleId:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildCircleId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 59
    .end local v0           #circleId:Ljava/lang/String;
    :cond_23
    return-void
.end method
