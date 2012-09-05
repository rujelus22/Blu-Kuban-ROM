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
    .line 303
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 304
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->key:Ljava/lang/String;

    .line 307
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->method:Ljava/lang/String;

    .line 308
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->id:Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->source:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v0

    return-object v0
.end method
