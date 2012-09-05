.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleResponseProto"
.end annotation


# instance fields
.field private ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

.field private assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

.field private billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

.field private cachedSize:I

.field private checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

.field private checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

.field private commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

.field private contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

.field private getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

.field private getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

.field private getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

.field private getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

.field private getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

.field private getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

.field private getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

.field private hasAckNotificationsResponse:Z

.field private hasAssetsResponse:Z

.field private hasBillingEventResponse:Z

.field private hasCheckForNotificationsResponse:Z

.field private hasCheckLicenseResponse:Z

.field private hasCommentsResponse:Z

.field private hasContentSyncResponse:Z

.field private hasGetAddressSnippetResponse:Z

.field private hasGetAssetResponse:Z

.field private hasGetCarrierInfoResponse:Z

.field private hasGetCategoriesResponse:Z

.field private hasGetImageResponse:Z

.field private hasGetInAppPurchaseInformationResponse:Z

.field private hasGetMarketMetadataResponse:Z

.field private hasInAppRestoreTransactionsResponse:Z

.field private hasModifyCommentResponse:Z

.field private hasPaypalCreateAccountResponse:Z

.field private hasPaypalMassageAddressResponse:Z

.field private hasPaypalPreapprovalCredentialsResponse:Z

.field private hasPaypalPreapprovalDetailsResponse:Z

.field private hasPaypalPreapprovalResponse:Z

.field private hasPurchaseMetadataResponse:Z

.field private hasPurchaseOrderResponse:Z

.field private hasPurchasePostResponse:Z

.field private hasPurchaseProductResponse:Z

.field private hasQuerySuggestionResponse:Z

.field private hasRateCommentResponse:Z

.field private hasReconstructDatabaseResponse:Z

.field private hasRefundResponse:Z

.field private hasResponseProperties:Z

.field private hasRestoreApplicationResponse:Z

.field private hasSubCategoriesResponse:Z

.field private hasUninstallReasonResponse:Z

.field private inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

.field private modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

.field private paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

.field private paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

.field private paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

.field private paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

.field private paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

.field private purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

.field private purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

.field private purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

.field private purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

.field private querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

.field private rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

.field private reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

.field private refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

.field private responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

.field private restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

.field private subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

.field private uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22230
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 22235
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 22255
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 22275
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 22295
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 22315
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 22335
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 22355
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 22375
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 22395
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 22415
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 22435
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 22455
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 22475
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 22495
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 22515
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 22535
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 22555
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 22575
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 22595
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 22615
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 22635
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 22655
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 22675
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 22695
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 22715
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 22735
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 22755
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 22775
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 22795
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 22815
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 22835
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 22855
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 22875
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 23093
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    .line 22230
    return-void
.end method


# virtual methods
.method public getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    .registers 2

    .prologue
    .line 22797
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    return-object v0
.end method

.method public getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 2

    .prologue
    .line 22257
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    return-object v0
.end method

.method public getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    .registers 2

    .prologue
    .line 22637
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 23095
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 23097
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getSerializedSize()I

    .line 23099
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    .registers 2

    .prologue
    .line 22777
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    return-object v0
.end method

.method public getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .registers 2

    .prologue
    .line 22517
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    return-object v0
.end method

.method public getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .registers 2

    .prologue
    .line 22277
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    return-object v0
.end method

.method public getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    .registers 2

    .prologue
    .line 22357
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    return-object v0
.end method

.method public getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .registers 2

    .prologue
    .line 22877
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    return-object v0
.end method

.method public getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .registers 2

    .prologue
    .line 22377
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    return-object v0
.end method

.method public getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 2

    .prologue
    .line 22577
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    return-object v0
.end method

.method public getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    .registers 2

    .prologue
    .line 22557
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    return-object v0
.end method

.method public getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .registers 2

    .prologue
    .line 22397
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    return-object v0
.end method

.method public getGetInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .registers 2

    .prologue
    .line 22757
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    return-object v0
.end method

.method public getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 2

    .prologue
    .line 22537
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .registers 2

    .prologue
    .line 22737
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    return-object v0
.end method

.method public getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    .registers 2

    .prologue
    .line 22297
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    return-object v0
.end method

.method public getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .registers 2

    .prologue
    .line 22697
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    return-object v0
.end method

.method public getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    .registers 2

    .prologue
    .line 22857
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .registers 2

    .prologue
    .line 22717
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .registers 2

    .prologue
    .line 22677
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    .registers 2

    .prologue
    .line 22657
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    return-object v0
.end method

.method public getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    .registers 2

    .prologue
    .line 22437
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    return-object v0
.end method

.method public getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 2

    .prologue
    .line 22337
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    return-object v0
.end method

.method public getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 2

    .prologue
    .line 22317
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    return-object v0
.end method

.method public getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .registers 2

    .prologue
    .line 22817
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    return-object v0
.end method

.method public getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .registers 2

    .prologue
    .line 22617
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    return-object v0
.end method

.method public getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    .registers 2

    .prologue
    .line 22497
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    return-object v0
.end method

.method public getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    .registers 2

    .prologue
    .line 22837
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    return-object v0
.end method

.method public getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .registers 2

    .prologue
    .line 22417
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    return-object v0
.end method

.method public getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 2

    .prologue
    .line 22237
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    .registers 2

    .prologue
    .line 22597
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 23103
    const/4 v0, 0x0

    .line 23104
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 23105
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23108
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 23109
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23112
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 23113
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23116
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 23117
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23120
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 23121
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23124
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 23125
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23128
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 23129
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23132
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 23133
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23136
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 23137
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23140
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 23141
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23144
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 23145
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23148
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 23149
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23152
    :cond_c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 23153
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23156
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 23157
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23160
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 23161
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23164
    :cond_fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 23165
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23168
    :cond_10b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 23169
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23172
    :cond_11c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse()Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 23173
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23176
    :cond_12d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 23177
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23180
    :cond_13e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 23181
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23184
    :cond_14f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse()Z

    move-result v1

    if-eqz v1, :cond_160

    .line 23185
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23188
    :cond_160
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse()Z

    move-result v1

    if-eqz v1, :cond_171

    .line 23189
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23192
    :cond_171
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_182

    .line 23193
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23196
    :cond_182
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse()Z

    move-result v1

    if-eqz v1, :cond_193

    .line 23197
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23200
    :cond_193
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 23201
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23204
    :cond_1a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse()Z

    move-result v1

    if-eqz v1, :cond_1b5

    .line 23205
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23208
    :cond_1b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse()Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 23209
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23212
    :cond_1c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse()Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 23213
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23216
    :cond_1d7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse()Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 23217
    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23220
    :cond_1e8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse()Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 23221
    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23224
    :cond_1f9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse()Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 23225
    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23228
    :cond_20a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse()Z

    move-result v1

    if-eqz v1, :cond_21b

    .line 23229
    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23232
    :cond_21b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse()Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 23233
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23236
    :cond_22c
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    .line 23237
    return v0
.end method

.method public getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .registers 2

    .prologue
    .line 22457
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    return-object v0
.end method

.method public getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    .registers 2

    .prologue
    .line 22477
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    return-object v0
.end method

.method public hasAckNotificationsResponse()Z
    .registers 2

    .prologue
    .line 22796
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse:Z

    return v0
.end method

.method public hasAssetsResponse()Z
    .registers 2

    .prologue
    .line 22256
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse:Z

    return v0
.end method

.method public hasBillingEventResponse()Z
    .registers 2

    .prologue
    .line 22636
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse:Z

    return v0
.end method

.method public hasCheckForNotificationsResponse()Z
    .registers 2

    .prologue
    .line 22776
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse:Z

    return v0
.end method

.method public hasCheckLicenseResponse()Z
    .registers 2

    .prologue
    .line 22516
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse:Z

    return v0
.end method

.method public hasCommentsResponse()Z
    .registers 2

    .prologue
    .line 22276
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse:Z

    return v0
.end method

.method public hasContentSyncResponse()Z
    .registers 2

    .prologue
    .line 22356
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse:Z

    return v0
.end method

.method public hasGetAddressSnippetResponse()Z
    .registers 2

    .prologue
    .line 22876
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse:Z

    return v0
.end method

.method public hasGetAssetResponse()Z
    .registers 2

    .prologue
    .line 22376
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse:Z

    return v0
.end method

.method public hasGetCarrierInfoResponse()Z
    .registers 2

    .prologue
    .line 22576
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse:Z

    return v0
.end method

.method public hasGetCategoriesResponse()Z
    .registers 2

    .prologue
    .line 22556
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse:Z

    return v0
.end method

.method public hasGetImageResponse()Z
    .registers 2

    .prologue
    .line 22396
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse:Z

    return v0
.end method

.method public hasGetInAppPurchaseInformationResponse()Z
    .registers 2

    .prologue
    .line 22756
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse:Z

    return v0
.end method

.method public hasGetMarketMetadataResponse()Z
    .registers 2

    .prologue
    .line 22536
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsResponse()Z
    .registers 2

    .prologue
    .line 22736
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse:Z

    return v0
.end method

.method public hasModifyCommentResponse()Z
    .registers 2

    .prologue
    .line 22296
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse:Z

    return v0
.end method

.method public hasPaypalCreateAccountResponse()Z
    .registers 2

    .prologue
    .line 22696
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse:Z

    return v0
.end method

.method public hasPaypalMassageAddressResponse()Z
    .registers 2

    .prologue
    .line 22856
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsResponse()Z
    .registers 2

    .prologue
    .line 22716
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsResponse()Z
    .registers 2

    .prologue
    .line 22676
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalResponse()Z
    .registers 2

    .prologue
    .line 22656
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse:Z

    return v0
.end method

.method public hasPurchaseMetadataResponse()Z
    .registers 2

    .prologue
    .line 22436
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse:Z

    return v0
.end method

.method public hasPurchaseOrderResponse()Z
    .registers 2

    .prologue
    .line 22336
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse:Z

    return v0
.end method

.method public hasPurchasePostResponse()Z
    .registers 2

    .prologue
    .line 22316
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse:Z

    return v0
.end method

.method public hasPurchaseProductResponse()Z
    .registers 2

    .prologue
    .line 22816
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse:Z

    return v0
.end method

.method public hasQuerySuggestionResponse()Z
    .registers 2

    .prologue
    .line 22616
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse:Z

    return v0
.end method

.method public hasRateCommentResponse()Z
    .registers 2

    .prologue
    .line 22496
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse:Z

    return v0
.end method

.method public hasReconstructDatabaseResponse()Z
    .registers 2

    .prologue
    .line 22836
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse:Z

    return v0
.end method

.method public hasRefundResponse()Z
    .registers 2

    .prologue
    .line 22416
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse:Z

    return v0
.end method

.method public hasResponseProperties()Z
    .registers 2

    .prologue
    .line 22236
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties:Z

    return v0
.end method

.method public hasRestoreApplicationResponse()Z
    .registers 2

    .prologue
    .line 22596
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse:Z

    return v0
.end method

.method public hasSubCategoriesResponse()Z
    .registers 2

    .prologue
    .line 22456
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse:Z

    return v0
.end method

.method public hasUninstallReasonResponse()Z
    .registers 2

    .prologue
    .line 22476
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 23245
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1b2

    .line 23249
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23250
    :sswitch_d
    return-object p0

    .line 23255
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;-><init>()V

    .line 23256
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23257
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23261
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;-><init>()V

    .line 23262
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23263
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23267
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;-><init>()V

    .line 23268
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23269
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23273
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    :sswitch_32
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;-><init>()V

    .line 23274
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23275
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23279
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;-><init>()V

    .line 23280
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23281
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23285
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    :sswitch_4a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;-><init>()V

    .line 23286
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23287
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23291
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    :sswitch_56
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;-><init>()V

    .line 23292
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23293
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23297
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    :sswitch_62
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;-><init>()V

    .line 23298
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23299
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23303
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    :sswitch_6e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;-><init>()V

    .line 23304
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23305
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23309
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    :sswitch_7a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;-><init>()V

    .line 23310
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23311
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23315
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    :sswitch_87
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;-><init>()V

    .line 23316
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23317
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23321
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    :sswitch_94
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;-><init>()V

    .line 23322
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23323
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23327
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    :sswitch_a1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;-><init>()V

    .line 23328
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23329
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23333
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    :sswitch_ae
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;-><init>()V

    .line 23334
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23335
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23339
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    :sswitch_bb
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;-><init>()V

    .line 23340
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23341
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23345
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    :sswitch_c8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;-><init>()V

    .line 23346
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23347
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23351
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    :sswitch_d5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;-><init>()V

    .line 23352
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23353
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23357
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    :sswitch_e2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;-><init>()V

    .line 23358
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23359
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23363
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    :sswitch_ef
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;-><init>()V

    .line 23364
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23365
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23369
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    :sswitch_fc
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;-><init>()V

    .line 23370
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23371
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23375
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    :sswitch_109
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;-><init>()V

    .line 23376
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23377
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23381
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    :sswitch_116
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;-><init>()V

    .line 23382
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23383
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23387
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    :sswitch_123
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;-><init>()V

    .line 23388
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23389
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23393
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    :sswitch_130
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;-><init>()V

    .line 23394
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23395
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23399
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    :sswitch_13d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;-><init>()V

    .line 23400
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23401
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23405
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    :sswitch_14a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;-><init>()V

    .line 23406
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23407
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23411
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    :sswitch_157
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;-><init>()V

    .line 23412
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23413
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23417
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    :sswitch_164
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;-><init>()V

    .line 23418
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23419
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23423
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    :sswitch_171
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;-><init>()V

    .line 23424
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23425
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23429
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    :sswitch_17e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;-><init>()V

    .line 23430
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23431
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23435
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    :sswitch_18b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;-><init>()V

    .line 23436
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23437
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23441
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    :sswitch_198
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;-><init>()V

    .line 23442
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23443
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23447
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    :sswitch_1a5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;-><init>()V

    .line 23448
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23449
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23245
    :sswitch_data_1b2
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_1a
        0x22 -> :sswitch_26
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3e
        0x3a -> :sswitch_4a
        0x42 -> :sswitch_56
        0x4a -> :sswitch_62
        0x52 -> :sswitch_6e
        0x5a -> :sswitch_7a
        0x62 -> :sswitch_87
        0x6a -> :sswitch_94
        0x7a -> :sswitch_a1
        0x82 -> :sswitch_ae
        0x8a -> :sswitch_bb
        0x92 -> :sswitch_c8
        0xa2 -> :sswitch_d5
        0xaa -> :sswitch_e2
        0xba -> :sswitch_ef
        0xc2 -> :sswitch_fc
        0xca -> :sswitch_109
        0xd2 -> :sswitch_116
        0xda -> :sswitch_123
        0xe2 -> :sswitch_130
        0xea -> :sswitch_13d
        0xf2 -> :sswitch_14a
        0xfa -> :sswitch_157
        0x102 -> :sswitch_164
        0x10a -> :sswitch_171
        0x112 -> :sswitch_17e
        0x11a -> :sswitch_18b
        0x122 -> :sswitch_198
        0x12a -> :sswitch_1a5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22228
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22799
    if-nez p1, :cond_8

    .line 22800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22802
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse:Z

    .line 22803
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 22804
    return-object p0
.end method

.method public setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22259
    if-nez p1, :cond_8

    .line 22260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22262
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse:Z

    .line 22263
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 22264
    return-object p0
.end method

.method public setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22639
    if-nez p1, :cond_8

    .line 22640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22642
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse:Z

    .line 22643
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 22644
    return-object p0
.end method

.method public setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22779
    if-nez p1, :cond_8

    .line 22780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22782
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse:Z

    .line 22783
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 22784
    return-object p0
.end method

.method public setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22519
    if-nez p1, :cond_8

    .line 22520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22522
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse:Z

    .line 22523
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 22524
    return-object p0
.end method

.method public setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22279
    if-nez p1, :cond_8

    .line 22280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22282
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse:Z

    .line 22283
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 22284
    return-object p0
.end method

.method public setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22359
    if-nez p1, :cond_8

    .line 22360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22362
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse:Z

    .line 22363
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 22364
    return-object p0
.end method

.method public setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22879
    if-nez p1, :cond_8

    .line 22880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22882
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse:Z

    .line 22883
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 22884
    return-object p0
.end method

.method public setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22379
    if-nez p1, :cond_8

    .line 22380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22382
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse:Z

    .line 22383
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 22384
    return-object p0
.end method

.method public setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22579
    if-nez p1, :cond_8

    .line 22580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22582
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse:Z

    .line 22583
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 22584
    return-object p0
.end method

.method public setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22559
    if-nez p1, :cond_8

    .line 22560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22562
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse:Z

    .line 22563
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 22564
    return-object p0
.end method

.method public setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22399
    if-nez p1, :cond_8

    .line 22400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22402
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse:Z

    .line 22403
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 22404
    return-object p0
.end method

.method public setGetInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22759
    if-nez p1, :cond_8

    .line 22760
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22762
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse:Z

    .line 22763
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 22764
    return-object p0
.end method

.method public setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22539
    if-nez p1, :cond_8

    .line 22540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22542
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse:Z

    .line 22543
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 22544
    return-object p0
.end method

.method public setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22739
    if-nez p1, :cond_8

    .line 22740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22742
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse:Z

    .line 22743
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 22744
    return-object p0
.end method

.method public setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22299
    if-nez p1, :cond_8

    .line 22300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22302
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse:Z

    .line 22303
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 22304
    return-object p0
.end method

.method public setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22699
    if-nez p1, :cond_8

    .line 22700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22702
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse:Z

    .line 22703
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 22704
    return-object p0
.end method

.method public setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22859
    if-nez p1, :cond_8

    .line 22860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22862
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse:Z

    .line 22863
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 22864
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22719
    if-nez p1, :cond_8

    .line 22720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22722
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse:Z

    .line 22723
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 22724
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22679
    if-nez p1, :cond_8

    .line 22680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22682
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse:Z

    .line 22683
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 22684
    return-object p0
.end method

.method public setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22659
    if-nez p1, :cond_8

    .line 22660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22662
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse:Z

    .line 22663
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 22664
    return-object p0
.end method

.method public setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22439
    if-nez p1, :cond_8

    .line 22440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22442
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse:Z

    .line 22443
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 22444
    return-object p0
.end method

.method public setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22339
    if-nez p1, :cond_8

    .line 22340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22342
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse:Z

    .line 22343
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 22344
    return-object p0
.end method

.method public setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22319
    if-nez p1, :cond_8

    .line 22320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22322
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse:Z

    .line 22323
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 22324
    return-object p0
.end method

.method public setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22819
    if-nez p1, :cond_8

    .line 22820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22822
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse:Z

    .line 22823
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 22824
    return-object p0
.end method

.method public setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22619
    if-nez p1, :cond_8

    .line 22620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22622
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse:Z

    .line 22623
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 22624
    return-object p0
.end method

.method public setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22499
    if-nez p1, :cond_8

    .line 22500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22502
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse:Z

    .line 22503
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 22504
    return-object p0
.end method

.method public setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22839
    if-nez p1, :cond_8

    .line 22840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22842
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse:Z

    .line 22843
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 22844
    return-object p0
.end method

.method public setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22419
    if-nez p1, :cond_8

    .line 22420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22422
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse:Z

    .line 22423
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 22424
    return-object p0
.end method

.method public setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22239
    if-nez p1, :cond_8

    .line 22240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22242
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties:Z

    .line 22243
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 22244
    return-object p0
.end method

.method public setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22599
    if-nez p1, :cond_8

    .line 22600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22602
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse:Z

    .line 22603
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 22604
    return-object p0
.end method

.method public setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22459
    if-nez p1, :cond_8

    .line 22460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22462
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse:Z

    .line 22463
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 22464
    return-object p0
.end method

.method public setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22479
    if-nez p1, :cond_8

    .line 22480
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22482
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse:Z

    .line 22483
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 22484
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22992
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 22993
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22995
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 22996
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22998
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 22999
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23001
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 23002
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23004
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 23005
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23007
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 23008
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23010
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 23011
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23013
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 23014
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23016
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 23017
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23019
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 23020
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23022
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 23023
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23025
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 23026
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23028
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 23029
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23031
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 23032
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23034
    :cond_cc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 23035
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23037
    :cond_db
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 23038
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23040
    :cond_ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 23041
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23043
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 23044
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23046
    :cond_108
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 23047
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23049
    :cond_117
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 23050
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23052
    :cond_126
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 23053
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23055
    :cond_135
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 23056
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23058
    :cond_144
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 23059
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23061
    :cond_153
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 23062
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23064
    :cond_162
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v0

    if-eqz v0, :cond_171

    .line 23065
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23067
    :cond_171
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 23068
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23070
    :cond_180
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse()Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 23071
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23073
    :cond_18f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 23074
    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23076
    :cond_19e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 23077
    const/16 v0, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23079
    :cond_1ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 23080
    const/16 v0, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23082
    :cond_1bc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse()Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 23083
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23085
    :cond_1cb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 23086
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23088
    :cond_1da
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse()Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 23089
    const/16 v0, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23091
    :cond_1e9
    return-void
.end method
