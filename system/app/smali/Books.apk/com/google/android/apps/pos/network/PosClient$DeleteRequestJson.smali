.class public Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteRequestJson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;
    }
.end annotation


# instance fields
.field private params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 571
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->key:Ljava/lang/String;

    .line 574
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->method:Ljava/lang/String;

    .line 575
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->id:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->access$1602(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    return-void
.end method


# virtual methods
.method public setAd(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    .registers 3
    .parameter "ad"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->ad:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->access$1702(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 605
    return-object p0
.end method

.method public setClickDeltaHex(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    .registers 3
    .parameter "clickDeltaHex"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->clickDeltaHex:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->access$1802(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    return-object p0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    .registers 3
    .parameter "container"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->container:Ljava/lang/String;

    .line 591
    return-object p0
.end method

.method public bridge synthetic setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    move-result-object v0

    return-object v0
.end method

.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->source:Ljava/lang/String;

    .line 597
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    move-result-object v0

    return-object v0
.end method
