.class final Lcom/google/android/finsky/utils/PurchaseInitiator$2;
.super Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;
.source "PurchaseInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createDirectDownloadListener(Ljava/lang/String;ILcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;I)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    iput-object p5, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$docId:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$offerType:I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;-><init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 198
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$docId:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$offerType:I

    #calls: Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToCompleted(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->access$100(Ljava/lang/String;I)V

    .line 200
    invoke-super {p0, p1}, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)V

    .line 201
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 195
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)V

    return-void
.end method
