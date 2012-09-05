.class public Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRequestJson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;
    }
.end annotation


# instance fields
.field private params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 377
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v0, "pos.plusones.get"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->key:Ljava/lang/String;

    .line 380
    const-string v0, "pos.plusones.get"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->method:Ljava/lang/String;

    .line 381
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->id:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->access$502(Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method public setAd(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    .registers 3
    .parameter "ad"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->ad:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->access$602(Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 411
    return-object p0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    .registers 3
    .parameter "container"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->container:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public bridge synthetic setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    move-result-object v0

    return-object v0
.end method

.method public setMaxPeople(Ljava/lang/Integer;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    .registers 3
    .parameter "maxPeople"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->maxPeople:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->access$702(Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 419
    return-object p0
.end method

.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson$Params;->source:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    move-result-object v0

    return-object v0
.end method
