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
    .line 253
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;-><init>()V

    .line 254
    const-string v0, "pos.plusones.getSignupState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->key:Ljava/lang/String;

    .line 255
    const-string v0, "pos.plusones.getSignupState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->method:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;-><init>(Lcom/google/android/apps/pos/network/PosClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    .line 257
    return-void
.end method


# virtual methods
.method setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    .registers 3
    .parameter "container"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->container:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method bridge synthetic setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;

    move-result-object v0

    return-object v0
.end method

.method setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    .registers 3
    .parameter "source"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->params:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->source:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method bridge synthetic setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
    .registers 3
    .parameter "x0"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;

    move-result-object v0

    return-object v0
.end method
