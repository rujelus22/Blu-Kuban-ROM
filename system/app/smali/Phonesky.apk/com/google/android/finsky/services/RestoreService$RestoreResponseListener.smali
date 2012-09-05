.class Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "accountName"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)V
    .registers 15
    .parameter "response"

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 289
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I
    invoke-static {v1, v6}, Lcom/google/android/finsky/services/RestoreService;->access$002(Lcom/google/android/finsky/services/RestoreService;I)I

    .line 290
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I
    invoke-static {v1, v6}, Lcom/google/android/finsky/services/RestoreService;->access$102(Lcom/google/android/finsky/services/RestoreService;I)I

    .line 291
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountLowerVersion:I
    invoke-static {v1, v6}, Lcom/google/android/finsky/services/RestoreService;->access$202(Lcom/google/android/finsky/services/RestoreService;I)I

    .line 293
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v8

    .line 295
    .local v8, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    .line 297
    .local v0, installer:Lcom/google/android/finsky/receivers/Installer;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 299
    .local v7, a:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    invoke-virtual {v7}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v10

    .line 300
    .local v10, ia:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    if-nez v10, :cond_3b

    .line 301
    const-string v1, "Unexpected null InstallAsset for restore asset."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    .line 305
    :cond_3b
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    invoke-static {v7, v1, v6}, Lcom/google/android/finsky/receivers/Installer;->packagePropertiesFromResponseAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;Ljava/lang/String;Z)Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    .line 309
    .local v3, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;)Z
    invoke-static {v1, v3, v2}, Lcom/google/android/finsky/services/RestoreService;->access$300(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 313
    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService;->access$400(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->start(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer;->downloadAndInstallAsset(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_21

    .line 325
    .end local v3           #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    .end local v7           #a:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .end local v10           #ia:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .end local v11           #packageName:Ljava/lang/String;
    :cond_6c
    const-string v1, "Attempted to restore %d assets."

    new-array v2, v12, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    const-string v1, "  Skipped (already tracked): %d"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I
    invoke-static {v4}, Lcom/google/android/finsky/services/RestoreService;->access$000(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    const-string v1, "  Skipped (other account): %d"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I
    invoke-static {v4}, Lcom/google/android/finsky/services/RestoreService;->access$100(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    const-string v1, "  Skipped (lower version): %d"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountLowerVersion:I
    invoke-static {v4}, Lcom/google/android/finsky/services/RestoreService;->access$200(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)V

    return-void
.end method
