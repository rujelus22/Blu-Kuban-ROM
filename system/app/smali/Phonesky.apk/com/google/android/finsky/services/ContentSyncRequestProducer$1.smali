.class Lcom/google/android/finsky/services/ContentSyncRequestProducer$1;
.super Ljava/lang/Object;
.source "ContentSyncRequestProducer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncRequestProducer;->addLocalAssetsToProto(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/finsky/local/LocalAssetVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/ContentSyncRequestProducer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ContentSyncRequestProducer;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer$1;->this$0:Lcom/google/android/finsky/services/ContentSyncRequestProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/local/LocalAssetVersion;Lcom/google/android/finsky/local/LocalAssetVersion;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 109
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    const-string v0, ""

    .line 110
    .local v0, left:Ljava/lang/String;
    :goto_8
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string v1, ""

    .line 111
    .local v1, right:Ljava/lang/String;
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 109
    .end local v0           #left:Ljava/lang/String;
    .end local v1           #right:Ljava/lang/String;
    :cond_15
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 110
    .restart local v0       #left:Ljava/lang/String;
    :cond_1a
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    check-cast p1, Lcom/google/android/finsky/local/LocalAssetVersion;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/local/LocalAssetVersion;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/services/ContentSyncRequestProducer$1;->compare(Lcom/google/android/finsky/local/LocalAssetVersion;Lcom/google/android/finsky/local/LocalAssetVersion;)I

    move-result v0

    return v0
.end method
