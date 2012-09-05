.class Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;
.super Ljava/lang/Object;
.source "RemoveAssetReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/model/AssetList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

.field final synthetic val$assetId:Ljava/lang/String;

.field final synthetic val$assetName:Ljava/lang/String;

.field final synthetic val$isMalicious:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$assetName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$isMalicious:Z

    iput-object p4, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$assetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/model/AssetList;)V
    .registers 8
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/google/android/vending/model/AssetList;->getAssets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 113
    invoke-virtual {p1}, Lcom/google/android/vending/model/AssetList;->getAssets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 116
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v0, :cond_32

    .line 117
    iget-object v2, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$assetName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$isMalicious:Z

    #calls: Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removeAsset(Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->access$000(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V

    .line 126
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v1           #packageName:Ljava/lang/String;
    :goto_31
    return-void

    .line 119
    .restart local v0       #asset:Lcom/google/android/finsky/local/LocalAsset;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_32
    const-string v2, "Could not identify local asset with package %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$isMalicious:Z

    #calls: Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removePackage(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->access$100(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;Z)V

    goto :goto_31

    .line 124
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_43
    const-string v2, "AMAS could not resolve asset ID %s either."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$assetId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    check-cast p1, Lcom/google/android/vending/model/AssetList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->onResponse(Lcom/google/android/vending/model/AssetList;)V

    return-void
.end method
