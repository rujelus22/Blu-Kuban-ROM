.class public abstract Lcom/google/android/apps/pos/network/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected apiVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "apiVersion"
    .end annotation
.end field

.field protected jsonRpc:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "jsonrpc"
    .end annotation
.end field

.field protected key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "key"
    .end annotation
.end field

.field protected method:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "method"
    .end annotation
.end field

.field protected requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const-string v0, "v1"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/t;->apiVersion:Ljava/lang/String;

    .line 592
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/t;->jsonRpc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
.end method

.method abstract b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
.end method
