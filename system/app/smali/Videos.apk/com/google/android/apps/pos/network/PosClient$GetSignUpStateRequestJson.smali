.class Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetSignUpStateRequestJson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;
    }
.end annotation


# instance fields
.field private params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "params"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 74
    const-string v0, "pos.plusones.getSignUpState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->key:Ljava/lang/String;

    .line 75
    const-string v0, "pos.plusones.getSignUpState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->method:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    .line 77
    return-void
.end method


# virtual methods
.method setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    .registers 3
    .parameter "container"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    #setter for: Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->container:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->access$102(Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->source:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;

    move-result-object v0

    return-object v0
.end method
