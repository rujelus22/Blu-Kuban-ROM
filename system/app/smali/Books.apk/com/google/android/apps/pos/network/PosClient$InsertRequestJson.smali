.class public Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertRequestJson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;
    }
.end annotation


# instance fields
.field private params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 472
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->key:Ljava/lang/String;

    .line 475
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->method:Ljava/lang/String;

    .line 476
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->id:Ljava/lang/String;

    .line 478
    return-void
.end method


# virtual methods
.method public setAbuseToken(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "abtk"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->abtk:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->access$1002(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public setAd(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "ad"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->ad:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->access$1102(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 514
    return-object p0
.end method

.method public setAdGroupId(Ljava/lang/Integer;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "adGroupId"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->adGroupId:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->access$1202(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 522
    return-object p0
.end method

.method public setClickDeltaHex(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "clickDeltaHex"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->clickDeltaHex:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->access$1302(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    return-object p0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "container"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->container:Ljava/lang/String;

    .line 492
    return-object p0
.end method

.method public bridge synthetic setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v0

    return-object v0
.end method

.method public setCreativeId(Ljava/lang/Integer;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "creativeId"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->creativeId:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->access$1402(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 538
    return-object p0
.end method

.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->source:Ljava/lang/String;

    .line 498
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v0

    return-object v0
.end method
