.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl$4;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getCompleteVersionHistory(Ljava/lang/String;)Ljava/util/List;
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
.field final synthetic this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$4;->this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/local/LocalAssetVersion;Lcom/google/android/finsky/local/LocalAssetVersion;)I
    .registers 6
    .parameter "left"
    .parameter "right"

    .prologue
    .line 336
    if-nez p1, :cond_d

    const-string v0, ""

    .line 337
    .local v0, leftAssetId:Ljava/lang/String;
    :goto_4
    if-nez p2, :cond_12

    const-string v1, ""

    .line 338
    .local v1, rightAssetId:Ljava/lang/String;
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 336
    .end local v0           #leftAssetId:Ljava/lang/String;
    .end local v1           #rightAssetId:Ljava/lang/String;
    :cond_d
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 337
    .restart local v0       #leftAssetId:Ljava/lang/String;
    :cond_12
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    check-cast p1, Lcom/google/android/finsky/local/LocalAssetVersion;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/local/LocalAssetVersion;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$4;->compare(Lcom/google/android/finsky/local/LocalAssetVersion;Lcom/google/android/finsky/local/LocalAssetVersion;)I

    move-result v0

    return v0
.end method
