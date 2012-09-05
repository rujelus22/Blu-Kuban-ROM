.class public abstract Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.super Ljava/lang/Object;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PosRequestJson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;
    }
.end annotation


# instance fields
.field protected apiVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "apiVersion"
    .end annotation
.end field

.field protected jsonRpc:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jsonrpc"
    .end annotation
.end field

.field protected key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "key"
    .end annotation
.end field

.field protected method:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "method"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const-string v0, "v1"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->apiVersion:Ljava/lang/String;

    .line 549
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->jsonRpc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.end method
