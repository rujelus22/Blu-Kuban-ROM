.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleRequestProto"
.end annotation


# instance fields
.field private ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

.field private assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

.field private billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

.field private cachedSize:I

.field private checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

.field private checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

.field private commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

.field private contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

.field private getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

.field private getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

.field private getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

.field private getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

.field private getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

.field private getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

.field private getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

.field private hasAckNotificationsRequest:Z

.field private hasAssetRequest:Z

.field private hasBillingEventRequest:Z

.field private hasCheckForNotificationsRequest:Z

.field private hasCheckLicenseRequest:Z

.field private hasCommentsRequest:Z

.field private hasContentSyncRequest:Z

.field private hasGetAddressSnippetRequest:Z

.field private hasGetAssetRequest:Z

.field private hasGetCarrierInfoRequest:Z

.field private hasGetCategoriesRequest:Z

.field private hasGetImageRequest:Z

.field private hasGetInAppPurchaseInformationRequest:Z

.field private hasGetMarketMetadataRequest:Z

.field private hasInAppRestoreTransactionsRequest:Z

.field private hasModifyCommentRequest:Z

.field private hasPaypalCreateAccountRequest:Z

.field private hasPaypalMassageAddressRequest:Z

.field private hasPaypalPreapprovalCredentialsRequest:Z

.field private hasPaypalPreapprovalDetailsRequest:Z

.field private hasPaypalPreapprovalRequest:Z

.field private hasPurchaseMetadataRequest:Z

.field private hasPurchaseOrderRequest:Z

.field private hasPurchasePostRequest:Z

.field private hasPurchaseProductRequest:Z

.field private hasQuerySuggestionRequest:Z

.field private hasRateCommentRequest:Z

.field private hasReconstructDatabaseRequest:Z

.field private hasRefundRequest:Z

.field private hasRemoveAssetRequest:Z

.field private hasRequestSpecificProperties:Z

.field private hasRestoreApplicationsRequest:Z

.field private hasSubCategoriesRequest:Z

.field private hasUninstallReasonRequest:Z

.field private inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

.field private modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

.field private paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

.field private paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

.field private paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

.field private paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

.field private paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

.field private purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

.field private purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

.field private purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

.field private purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

.field private querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

.field private rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

.field private reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

.field private refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

.field private removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

.field private requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

.field private restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

.field private subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

.field private uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20939
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20944
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 20964
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 20984
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 21004
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 21024
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 21044
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 21064
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 21084
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 21104
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 21124
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 21144
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 21164
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 21184
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 21204
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 21224
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 21244
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 21264
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 21284
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 21304
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 21324
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 21344
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 21364
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 21384
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 21404
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 21424
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 21444
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 21464
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 21484
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 21504
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 21524
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 21544
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 21564
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 21584
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 21604
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 21842
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    .line 20939
    return-void
.end method


# virtual methods
.method public getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .registers 2

    .prologue
    .line 21526
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    return-object v0
.end method

.method public getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 2

    .prologue
    .line 20966
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    return-object v0
.end method

.method public getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 2

    .prologue
    .line 21366
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 21844
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 21846
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getSerializedSize()I

    .line 21848
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .registers 2

    .prologue
    .line 21506
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    return-object v0
.end method

.method public getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 2

    .prologue
    .line 21226
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    return-object v0
.end method

.method public getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 2

    .prologue
    .line 20986
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    return-object v0
.end method

.method public getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .registers 2

    .prologue
    .line 21066
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    return-object v0
.end method

.method public getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .registers 2

    .prologue
    .line 21606
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    return-object v0
.end method

.method public getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .registers 2

    .prologue
    .line 21086
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    return-object v0
.end method

.method public getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    .registers 2

    .prologue
    .line 21286
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    return-object v0
.end method

.method public getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .registers 2

    .prologue
    .line 21266
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    return-object v0
.end method

.method public getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 2

    .prologue
    .line 21106
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    return-object v0
.end method

.method public getGetInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .registers 2

    .prologue
    .line 21486
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    return-object v0
.end method

.method public getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 2

    .prologue
    .line 21246
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .registers 2

    .prologue
    .line 21466
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    return-object v0
.end method

.method public getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 2

    .prologue
    .line 21006
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    return-object v0
.end method

.method public getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 2

    .prologue
    .line 21426
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    return-object v0
.end method

.method public getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .registers 2

    .prologue
    .line 21586
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .registers 2

    .prologue
    .line 21446
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .registers 2

    .prologue
    .line 21406
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    .registers 2

    .prologue
    .line 21386
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    return-object v0
.end method

.method public getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .registers 2

    .prologue
    .line 21146
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    return-object v0
.end method

.method public getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 2

    .prologue
    .line 21046
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    return-object v0
.end method

.method public getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 2

    .prologue
    .line 21026
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    return-object v0
.end method

.method public getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 2

    .prologue
    .line 21546
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    return-object v0
.end method

.method public getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 2

    .prologue
    .line 21346
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    return-object v0
.end method

.method public getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 2

    .prologue
    .line 21206
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    return-object v0
.end method

.method public getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    .registers 2

    .prologue
    .line 21566
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    return-object v0
.end method

.method public getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    .registers 2

    .prologue
    .line 21126
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    return-object v0
.end method

.method public getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    .registers 2

    .prologue
    .line 21306
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    return-object v0
.end method

.method public getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    .registers 2

    .prologue
    .line 20946
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 2

    .prologue
    .line 21326
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 21852
    const/4 v0, 0x0

    .line 21853
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 21854
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21857
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 21858
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21861
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 21862
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21865
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 21866
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21869
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 21870
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21873
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 21874
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21877
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 21878
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21881
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 21882
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21885
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 21886
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21889
    :cond_95
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 21890
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21893
    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 21894
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21897
    :cond_b7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 21898
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21901
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 21902
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21905
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 21906
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21909
    :cond_ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 21910
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21913
    :cond_fb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 21914
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21917
    :cond_10c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 21918
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21921
    :cond_11d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 21922
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21925
    :cond_12e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 21926
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21929
    :cond_13f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest()Z

    move-result v1

    if-eqz v1, :cond_150

    .line 21930
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21933
    :cond_150
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 21934
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21937
    :cond_161
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest()Z

    move-result v1

    if-eqz v1, :cond_172

    .line 21938
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21941
    :cond_172
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest()Z

    move-result v1

    if-eqz v1, :cond_183

    .line 21942
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21945
    :cond_183
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v1

    if-eqz v1, :cond_194

    .line 21946
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21949
    :cond_194
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest()Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 21950
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21953
    :cond_1a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 21954
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21957
    :cond_1b6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest()Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 21958
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21961
    :cond_1c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest()Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 21962
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21965
    :cond_1d8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 21966
    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21969
    :cond_1e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 21970
    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21973
    :cond_1fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest()Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 21974
    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21977
    :cond_20b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest()Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 21978
    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21981
    :cond_21c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest()Z

    move-result v1

    if-eqz v1, :cond_22d

    .line 21982
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21985
    :cond_22d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest()Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 21986
    const/16 v1, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21989
    :cond_23e
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    .line 21990
    return v0
.end method

.method public getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    .registers 2

    .prologue
    .line 21166
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    return-object v0
.end method

.method public getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .registers 2

    .prologue
    .line 21186
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    return-object v0
.end method

.method public hasAckNotificationsRequest()Z
    .registers 2

    .prologue
    .line 21525
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest:Z

    return v0
.end method

.method public hasAssetRequest()Z
    .registers 2

    .prologue
    .line 20965
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest:Z

    return v0
.end method

.method public hasBillingEventRequest()Z
    .registers 2

    .prologue
    .line 21365
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest:Z

    return v0
.end method

.method public hasCheckForNotificationsRequest()Z
    .registers 2

    .prologue
    .line 21505
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest:Z

    return v0
.end method

.method public hasCheckLicenseRequest()Z
    .registers 2

    .prologue
    .line 21225
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest:Z

    return v0
.end method

.method public hasCommentsRequest()Z
    .registers 2

    .prologue
    .line 20985
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest:Z

    return v0
.end method

.method public hasContentSyncRequest()Z
    .registers 2

    .prologue
    .line 21065
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest:Z

    return v0
.end method

.method public hasGetAddressSnippetRequest()Z
    .registers 2

    .prologue
    .line 21605
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest:Z

    return v0
.end method

.method public hasGetAssetRequest()Z
    .registers 2

    .prologue
    .line 21085
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest:Z

    return v0
.end method

.method public hasGetCarrierInfoRequest()Z
    .registers 2

    .prologue
    .line 21285
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest:Z

    return v0
.end method

.method public hasGetCategoriesRequest()Z
    .registers 2

    .prologue
    .line 21265
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest:Z

    return v0
.end method

.method public hasGetImageRequest()Z
    .registers 2

    .prologue
    .line 21105
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest:Z

    return v0
.end method

.method public hasGetInAppPurchaseInformationRequest()Z
    .registers 2

    .prologue
    .line 21485
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest:Z

    return v0
.end method

.method public hasGetMarketMetadataRequest()Z
    .registers 2

    .prologue
    .line 21245
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsRequest()Z
    .registers 2

    .prologue
    .line 21465
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest:Z

    return v0
.end method

.method public hasModifyCommentRequest()Z
    .registers 2

    .prologue
    .line 21005
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest:Z

    return v0
.end method

.method public hasPaypalCreateAccountRequest()Z
    .registers 2

    .prologue
    .line 21425
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest:Z

    return v0
.end method

.method public hasPaypalMassageAddressRequest()Z
    .registers 2

    .prologue
    .line 21585
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsRequest()Z
    .registers 2

    .prologue
    .line 21445
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsRequest()Z
    .registers 2

    .prologue
    .line 21405
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalRequest()Z
    .registers 2

    .prologue
    .line 21385
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest:Z

    return v0
.end method

.method public hasPurchaseMetadataRequest()Z
    .registers 2

    .prologue
    .line 21145
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest:Z

    return v0
.end method

.method public hasPurchaseOrderRequest()Z
    .registers 2

    .prologue
    .line 21045
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest:Z

    return v0
.end method

.method public hasPurchasePostRequest()Z
    .registers 2

    .prologue
    .line 21025
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest:Z

    return v0
.end method

.method public hasPurchaseProductRequest()Z
    .registers 2

    .prologue
    .line 21545
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest:Z

    return v0
.end method

.method public hasQuerySuggestionRequest()Z
    .registers 2

    .prologue
    .line 21345
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest:Z

    return v0
.end method

.method public hasRateCommentRequest()Z
    .registers 2

    .prologue
    .line 21205
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest:Z

    return v0
.end method

.method public hasReconstructDatabaseRequest()Z
    .registers 2

    .prologue
    .line 21565
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest:Z

    return v0
.end method

.method public hasRefundRequest()Z
    .registers 2

    .prologue
    .line 21125
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest:Z

    return v0
.end method

.method public hasRemoveAssetRequest()Z
    .registers 2

    .prologue
    .line 21305
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest:Z

    return v0
.end method

.method public hasRequestSpecificProperties()Z
    .registers 2

    .prologue
    .line 20945
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties:Z

    return v0
.end method

.method public hasRestoreApplicationsRequest()Z
    .registers 2

    .prologue
    .line 21325
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest:Z

    return v0
.end method

.method public hasSubCategoriesRequest()Z
    .registers 2

    .prologue
    .line 21165
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest:Z

    return v0
.end method

.method public hasUninstallReasonRequest()Z
    .registers 2

    .prologue
    .line 21185
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21997
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 21998
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c0

    .line 22002
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22003
    :sswitch_d
    return-object p0

    .line 22008
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;-><init>()V

    .line 22009
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22010
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22014
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;-><init>()V

    .line 22015
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22016
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22020
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;-><init>()V

    .line 22021
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22022
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22026
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    :sswitch_32
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    .line 22027
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22028
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22032
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;-><init>()V

    .line 22033
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22034
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22038
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    :sswitch_4a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;-><init>()V

    .line 22039
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22040
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22044
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    :sswitch_56
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    .line 22045
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22046
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22050
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :sswitch_62
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;-><init>()V

    .line 22051
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22052
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22056
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    :sswitch_6e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;-><init>()V

    .line 22057
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22058
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22062
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    :sswitch_7a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;-><init>()V

    .line 22063
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22064
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22068
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    :sswitch_87
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    .line 22069
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22070
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22074
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    :sswitch_94
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;-><init>()V

    .line 22075
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22076
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22080
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    :sswitch_a1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;-><init>()V

    .line 22081
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22082
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22086
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    :sswitch_ae
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;-><init>()V

    .line 22087
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22088
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22092
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    :sswitch_bb
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    .line 22093
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22094
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22098
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    :sswitch_c8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;-><init>()V

    .line 22099
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22100
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22104
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    :sswitch_d5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;-><init>()V

    .line 22105
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22106
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22110
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    :sswitch_e2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;-><init>()V

    .line 22111
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22112
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22116
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    :sswitch_ef
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;-><init>()V

    .line 22117
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22118
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22122
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    :sswitch_fc
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    .line 22123
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22124
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22128
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    :sswitch_109
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;-><init>()V

    .line 22129
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22130
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22134
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    :sswitch_116
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    .line 22135
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22136
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22140
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    :sswitch_123
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;-><init>()V

    .line 22141
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22142
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22146
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    :sswitch_130
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;-><init>()V

    .line 22147
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22148
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22152
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    :sswitch_13d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;-><init>()V

    .line 22153
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22154
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22158
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    :sswitch_14a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;-><init>()V

    .line 22159
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22160
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22164
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    :sswitch_157
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    .line 22165
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22166
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22170
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    :sswitch_164
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    .line 22171
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22172
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22176
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    :sswitch_171
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    .line 22177
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22178
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22182
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    :sswitch_17e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    .line 22183
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22184
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22188
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    :sswitch_18b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;-><init>()V

    .line 22189
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22190
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22194
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    :sswitch_198
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;-><init>()V

    .line 22195
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22196
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22200
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    :sswitch_1a5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;-><init>()V

    .line 22201
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22202
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22206
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    :sswitch_1b2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;-><init>()V

    .line 22207
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22208
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 21998
    nop

    :sswitch_data_1c0
    .sparse-switch
        0x0 -> :sswitch_d
        0x1a -> :sswitch_e
        0x22 -> :sswitch_1a
        0x2a -> :sswitch_26
        0x32 -> :sswitch_32
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_4a
        0x4a -> :sswitch_56
        0x52 -> :sswitch_62
        0x5a -> :sswitch_6e
        0x62 -> :sswitch_7a
        0x6a -> :sswitch_87
        0x72 -> :sswitch_94
        0x82 -> :sswitch_a1
        0x8a -> :sswitch_ae
        0x92 -> :sswitch_bb
        0x9a -> :sswitch_c8
        0xaa -> :sswitch_d5
        0xb2 -> :sswitch_e2
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
        0x132 -> :sswitch_1b2
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
    .line 20937
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21528
    if-nez p1, :cond_8

    .line 21529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21531
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest:Z

    .line 21532
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 21533
    return-object p0
.end method

.method public setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20968
    if-nez p1, :cond_8

    .line 20969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20971
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest:Z

    .line 20972
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 20973
    return-object p0
.end method

.method public setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21368
    if-nez p1, :cond_8

    .line 21369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21371
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest:Z

    .line 21372
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 21373
    return-object p0
.end method

.method public setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21508
    if-nez p1, :cond_8

    .line 21509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21511
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest:Z

    .line 21512
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 21513
    return-object p0
.end method

.method public setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21228
    if-nez p1, :cond_8

    .line 21229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21231
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest:Z

    .line 21232
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 21233
    return-object p0
.end method

.method public setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20988
    if-nez p1, :cond_8

    .line 20989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20991
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest:Z

    .line 20992
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 20993
    return-object p0
.end method

.method public setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21068
    if-nez p1, :cond_8

    .line 21069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21071
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest:Z

    .line 21072
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 21073
    return-object p0
.end method

.method public setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21608
    if-nez p1, :cond_8

    .line 21609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21611
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest:Z

    .line 21612
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 21613
    return-object p0
.end method

.method public setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21088
    if-nez p1, :cond_8

    .line 21089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21091
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest:Z

    .line 21092
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 21093
    return-object p0
.end method

.method public setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21288
    if-nez p1, :cond_8

    .line 21289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21291
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest:Z

    .line 21292
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 21293
    return-object p0
.end method

.method public setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21268
    if-nez p1, :cond_8

    .line 21269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21271
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest:Z

    .line 21272
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 21273
    return-object p0
.end method

.method public setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21108
    if-nez p1, :cond_8

    .line 21109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21111
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest:Z

    .line 21112
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 21113
    return-object p0
.end method

.method public setGetInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21488
    if-nez p1, :cond_8

    .line 21489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21491
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest:Z

    .line 21492
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 21493
    return-object p0
.end method

.method public setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21248
    if-nez p1, :cond_8

    .line 21249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21251
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest:Z

    .line 21252
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 21253
    return-object p0
.end method

.method public setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21468
    if-nez p1, :cond_8

    .line 21469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21471
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest:Z

    .line 21472
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 21473
    return-object p0
.end method

.method public setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21008
    if-nez p1, :cond_8

    .line 21009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21011
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest:Z

    .line 21012
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 21013
    return-object p0
.end method

.method public setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21428
    if-nez p1, :cond_8

    .line 21429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21431
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest:Z

    .line 21432
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 21433
    return-object p0
.end method

.method public setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21588
    if-nez p1, :cond_8

    .line 21589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21591
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest:Z

    .line 21592
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 21593
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21448
    if-nez p1, :cond_8

    .line 21449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21451
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest:Z

    .line 21452
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 21453
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21408
    if-nez p1, :cond_8

    .line 21409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21411
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest:Z

    .line 21412
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 21413
    return-object p0
.end method

.method public setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21388
    if-nez p1, :cond_8

    .line 21389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21391
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest:Z

    .line 21392
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 21393
    return-object p0
.end method

.method public setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21148
    if-nez p1, :cond_8

    .line 21149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21151
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest:Z

    .line 21152
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 21153
    return-object p0
.end method

.method public setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21048
    if-nez p1, :cond_8

    .line 21049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21051
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest:Z

    .line 21052
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 21053
    return-object p0
.end method

.method public setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21028
    if-nez p1, :cond_8

    .line 21029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21031
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest:Z

    .line 21032
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 21033
    return-object p0
.end method

.method public setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21548
    if-nez p1, :cond_8

    .line 21549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21551
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest:Z

    .line 21552
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 21553
    return-object p0
.end method

.method public setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21348
    if-nez p1, :cond_8

    .line 21349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21351
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest:Z

    .line 21352
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 21353
    return-object p0
.end method

.method public setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21208
    if-nez p1, :cond_8

    .line 21209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21211
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest:Z

    .line 21212
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 21213
    return-object p0
.end method

.method public setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21568
    if-nez p1, :cond_8

    .line 21569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21571
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest:Z

    .line 21572
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 21573
    return-object p0
.end method

.method public setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21128
    if-nez p1, :cond_8

    .line 21129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21131
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest:Z

    .line 21132
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 21133
    return-object p0
.end method

.method public setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21308
    if-nez p1, :cond_8

    .line 21309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21311
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest:Z

    .line 21312
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 21313
    return-object p0
.end method

.method public setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20948
    if-nez p1, :cond_8

    .line 20949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20951
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties:Z

    .line 20952
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 20953
    return-object p0
.end method

.method public setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21328
    if-nez p1, :cond_8

    .line 21329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21331
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest:Z

    .line 21332
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 21333
    return-object p0
.end method

.method public setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21168
    if-nez p1, :cond_8

    .line 21169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21171
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest:Z

    .line 21172
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 21173
    return-object p0
.end method

.method public setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21188
    if-nez p1, :cond_8

    .line 21189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21191
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest:Z

    .line 21192
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 21193
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
    .line 21738
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 21739
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21741
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 21742
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21744
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 21745
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21747
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 21748
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21750
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 21751
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21753
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 21754
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21756
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 21757
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21759
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 21760
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21762
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 21763
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21765
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 21766
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21768
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 21769
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21771
    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 21772
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21774
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 21775
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21777
    :cond_be
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 21778
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21780
    :cond_cd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 21781
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21783
    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 21784
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21786
    :cond_eb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 21787
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21789
    :cond_fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 21790
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21792
    :cond_109
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 21793
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21795
    :cond_118
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 21796
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21798
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 21799
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21801
    :cond_136
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 21802
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21804
    :cond_145
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 21805
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21807
    :cond_154
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 21808
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21810
    :cond_163
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 21811
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21813
    :cond_172
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 21814
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21816
    :cond_181
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 21817
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21819
    :cond_190
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 21820
    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21822
    :cond_19f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 21823
    const/16 v0, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21825
    :cond_1ae
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 21826
    const/16 v0, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21828
    :cond_1bd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 21829
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21831
    :cond_1cc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 21832
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21834
    :cond_1db
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 21835
    const/16 v0, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21837
    :cond_1ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 21838
    const/16 v0, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21840
    :cond_1f9
    return-void
.end method
