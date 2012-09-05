.class Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListRequestJson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;
    }
.end annotation


# instance fields
.field private params:Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "params"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 308
    const-string v0, "pos.plusones.list"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;->key:Ljava/lang/String;

    .line 309
    const-string v0, "pos.plusones.list"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;->method:Ljava/lang/String;

    .line 310
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;

    .line 311
    return-void
.end method


# virtual methods
.method setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;
    .registers 2
    .parameter "container"

    .prologue
    .line 325
    return-object p0
.end method

.method bridge synthetic setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;->setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;

    move-result-object v0

    return-object v0
.end method

.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson$Params;->source:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;

    move-result-object v0

    return-object v0
.end method
