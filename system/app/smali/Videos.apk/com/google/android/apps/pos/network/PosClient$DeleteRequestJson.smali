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
    .line 444
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 445
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->key:Ljava/lang/String;

    .line 448
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->method:Ljava/lang/String;

    .line 449
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->id:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->access$1902(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    return-void
.end method


# virtual methods
.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->source:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    move-result-object v0

    return-object v0
.end method
