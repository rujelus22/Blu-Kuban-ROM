.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
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

.field private hasGetMarketMetadataRequest:Z

.field private hasInAppPurchaseInformationRequest:Z

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

.field private inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

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

    .line 24018
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24023
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 24043
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 24063
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 24083
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 24103
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 24123
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 24143
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 24163
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 24183
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 24203
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 24223
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 24243
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 24263
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 24283
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 24303
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 24323
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 24343
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 24363
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 24383
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 24403
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 24423
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 24443
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 24463
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 24483
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 24503
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 24523
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 24543
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 24563
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 24583
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 24603
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 24623
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 24643
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 24663
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 24683
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 24921
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    .line 24018
    return-void
.end method


# virtual methods
.method public getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .registers 2

    .prologue
    .line 24605
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    return-object v0
.end method

.method public getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 2

    .prologue
    .line 24045
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    return-object v0
.end method

.method public getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 2

    .prologue
    .line 24445
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 24923
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    if-gez v0, :cond_7

    .line 24925
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getSerializedSize()I

    .line 24927
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .registers 2

    .prologue
    .line 24585
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    return-object v0
.end method

.method public getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 2

    .prologue
    .line 24305
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    return-object v0
.end method

.method public getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 2

    .prologue
    .line 24065
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    return-object v0
.end method

.method public getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .registers 2

    .prologue
    .line 24145
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    return-object v0
.end method

.method public getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .registers 2

    .prologue
    .line 24685
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    return-object v0
.end method

.method public getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .registers 2

    .prologue
    .line 24165
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    return-object v0
.end method

.method public getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    .registers 2

    .prologue
    .line 24365
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    return-object v0
.end method

.method public getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .registers 2

    .prologue
    .line 24345
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    return-object v0
.end method

.method public getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 2

    .prologue
    .line 24185
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    return-object v0
.end method

.method public getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 2

    .prologue
    .line 24325
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    return-object v0
.end method

.method public getInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .registers 2

    .prologue
    .line 24565
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .registers 2

    .prologue
    .line 24545
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    return-object v0
.end method

.method public getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 2

    .prologue
    .line 24085
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    return-object v0
.end method

.method public getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 2

    .prologue
    .line 24505
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    return-object v0
.end method

.method public getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .registers 2

    .prologue
    .line 24665
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .registers 2

    .prologue
    .line 24525
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .registers 2

    .prologue
    .line 24485
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    .registers 2

    .prologue
    .line 24465
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    return-object v0
.end method

.method public getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .registers 2

    .prologue
    .line 24225
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    return-object v0
.end method

.method public getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 2

    .prologue
    .line 24125
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    return-object v0
.end method

.method public getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 2

    .prologue
    .line 24105
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    return-object v0
.end method

.method public getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 2

    .prologue
    .line 24625
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    return-object v0
.end method

.method public getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 2

    .prologue
    .line 24425
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    return-object v0
.end method

.method public getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 2

    .prologue
    .line 24285
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    return-object v0
.end method

.method public getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    .registers 2

    .prologue
    .line 24645
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    return-object v0
.end method

.method public getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    .registers 2

    .prologue
    .line 24205
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    return-object v0
.end method

.method public getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    .registers 2

    .prologue
    .line 24385
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    return-object v0
.end method

.method public getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    .registers 2

    .prologue
    .line 24025
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 2

    .prologue
    .line 24405
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 24931
    const/4 v0, 0x0

    .line 24932
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 24933
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24936
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 24937
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24940
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 24941
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24944
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 24945
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24948
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 24949
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24952
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 24953
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24956
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 24957
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24960
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 24961
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24964
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 24965
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24968
    :cond_95
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 24969
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24972
    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 24973
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24976
    :cond_b7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 24977
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24980
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 24981
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24984
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 24985
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24988
    :cond_ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 24989
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24992
    :cond_fb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 24993
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24996
    :cond_10c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 24997
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25000
    :cond_11d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 25001
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25004
    :cond_12e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 25005
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25008
    :cond_13f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest()Z

    move-result v1

    if-eqz v1, :cond_150

    .line 25009
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25012
    :cond_150
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 25013
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25016
    :cond_161
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest()Z

    move-result v1

    if-eqz v1, :cond_172

    .line 25017
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25020
    :cond_172
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest()Z

    move-result v1

    if-eqz v1, :cond_183

    .line 25021
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25024
    :cond_183
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v1

    if-eqz v1, :cond_194

    .line 25025
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25028
    :cond_194
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest()Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 25029
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25032
    :cond_1a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 25033
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25036
    :cond_1b6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest()Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 25037
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25040
    :cond_1c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest()Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 25041
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25044
    :cond_1d8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 25045
    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25048
    :cond_1e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 25049
    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25052
    :cond_1fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest()Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 25053
    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25056
    :cond_20b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest()Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 25057
    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25060
    :cond_21c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest()Z

    move-result v1

    if-eqz v1, :cond_22d

    .line 25061
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25064
    :cond_22d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest()Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 25065
    const/16 v1, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25068
    :cond_23e
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    .line 25069
    return v0
.end method

.method public getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    .registers 2

    .prologue
    .line 24245
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    return-object v0
.end method

.method public getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .registers 2

    .prologue
    .line 24265
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    return-object v0
.end method

.method public hasAckNotificationsRequest()Z
    .registers 2

    .prologue
    .line 24604
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest:Z

    return v0
.end method

.method public hasAssetRequest()Z
    .registers 2

    .prologue
    .line 24044
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest:Z

    return v0
.end method

.method public hasBillingEventRequest()Z
    .registers 2

    .prologue
    .line 24444
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest:Z

    return v0
.end method

.method public hasCheckForNotificationsRequest()Z
    .registers 2

    .prologue
    .line 24584
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest:Z

    return v0
.end method

.method public hasCheckLicenseRequest()Z
    .registers 2

    .prologue
    .line 24304
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest:Z

    return v0
.end method

.method public hasCommentsRequest()Z
    .registers 2

    .prologue
    .line 24064
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest:Z

    return v0
.end method

.method public hasContentSyncRequest()Z
    .registers 2

    .prologue
    .line 24144
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest:Z

    return v0
.end method

.method public hasGetAddressSnippetRequest()Z
    .registers 2

    .prologue
    .line 24684
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest:Z

    return v0
.end method

.method public hasGetAssetRequest()Z
    .registers 2

    .prologue
    .line 24164
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest:Z

    return v0
.end method

.method public hasGetCarrierInfoRequest()Z
    .registers 2

    .prologue
    .line 24364
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest:Z

    return v0
.end method

.method public hasGetCategoriesRequest()Z
    .registers 2

    .prologue
    .line 24344
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest:Z

    return v0
.end method

.method public hasGetImageRequest()Z
    .registers 2

    .prologue
    .line 24184
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest:Z

    return v0
.end method

.method public hasGetMarketMetadataRequest()Z
    .registers 2

    .prologue
    .line 24324
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest:Z

    return v0
.end method

.method public hasInAppPurchaseInformationRequest()Z
    .registers 2

    .prologue
    .line 24564
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsRequest()Z
    .registers 2

    .prologue
    .line 24544
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest:Z

    return v0
.end method

.method public hasModifyCommentRequest()Z
    .registers 2

    .prologue
    .line 24084
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest:Z

    return v0
.end method

.method public hasPaypalCreateAccountRequest()Z
    .registers 2

    .prologue
    .line 24504
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest:Z

    return v0
.end method

.method public hasPaypalMassageAddressRequest()Z
    .registers 2

    .prologue
    .line 24664
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsRequest()Z
    .registers 2

    .prologue
    .line 24524
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsRequest()Z
    .registers 2

    .prologue
    .line 24484
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalRequest()Z
    .registers 2

    .prologue
    .line 24464
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest:Z

    return v0
.end method

.method public hasPurchaseMetadataRequest()Z
    .registers 2

    .prologue
    .line 24224
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest:Z

    return v0
.end method

.method public hasPurchaseOrderRequest()Z
    .registers 2

    .prologue
    .line 24124
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest:Z

    return v0
.end method

.method public hasPurchasePostRequest()Z
    .registers 2

    .prologue
    .line 24104
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest:Z

    return v0
.end method

.method public hasPurchaseProductRequest()Z
    .registers 2

    .prologue
    .line 24624
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest:Z

    return v0
.end method

.method public hasQuerySuggestionRequest()Z
    .registers 2

    .prologue
    .line 24424
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest:Z

    return v0
.end method

.method public hasRateCommentRequest()Z
    .registers 2

    .prologue
    .line 24284
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest:Z

    return v0
.end method

.method public hasReconstructDatabaseRequest()Z
    .registers 2

    .prologue
    .line 24644
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest:Z

    return v0
.end method

.method public hasRefundRequest()Z
    .registers 2

    .prologue
    .line 24204
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest:Z

    return v0
.end method

.method public hasRemoveAssetRequest()Z
    .registers 2

    .prologue
    .line 24384
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest:Z

    return v0
.end method

.method public hasRequestSpecificProperties()Z
    .registers 2

    .prologue
    .line 24024
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties:Z

    return v0
.end method

.method public hasRestoreApplicationsRequest()Z
    .registers 2

    .prologue
    .line 24404
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest:Z

    return v0
.end method

.method public hasSubCategoriesRequest()Z
    .registers 2

    .prologue
    .line 24244
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest:Z

    return v0
.end method

.method public hasUninstallReasonRequest()Z
    .registers 2

    .prologue
    .line 24264
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25076
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 25077
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c0

    .line 25081
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25082
    :sswitch_d
    return-object p0

    .line 25087
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;-><init>()V

    .line 25088
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25089
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25093
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;-><init>()V

    .line 25094
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25095
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25099
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;-><init>()V

    .line 25100
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25101
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25105
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    :sswitch_32
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    .line 25106
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25107
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25111
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;-><init>()V

    .line 25112
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25113
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25117
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    :sswitch_4a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;-><init>()V

    .line 25118
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25119
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25123
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    :sswitch_56
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    .line 25124
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25125
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25129
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :sswitch_62
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;-><init>()V

    .line 25130
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25131
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25135
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    :sswitch_6e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;-><init>()V

    .line 25136
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25137
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25141
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    :sswitch_7a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;-><init>()V

    .line 25142
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25143
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25147
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    :sswitch_87
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    .line 25148
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25149
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25153
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    :sswitch_94
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;-><init>()V

    .line 25154
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25155
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25159
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    :sswitch_a1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;-><init>()V

    .line 25160
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25161
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25165
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    :sswitch_ae
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;-><init>()V

    .line 25166
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25167
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25171
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    :sswitch_bb
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    .line 25172
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25173
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25177
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    :sswitch_c8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;-><init>()V

    .line 25178
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25179
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25183
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    :sswitch_d5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;-><init>()V

    .line 25184
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25185
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25189
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    :sswitch_e2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;-><init>()V

    .line 25190
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25191
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25195
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    :sswitch_ef
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;-><init>()V

    .line 25196
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25197
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25201
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    :sswitch_fc
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    .line 25202
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25203
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25207
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    :sswitch_109
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;-><init>()V

    .line 25208
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25209
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25213
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    :sswitch_116
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    .line 25214
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25215
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25219
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    :sswitch_123
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;-><init>()V

    .line 25220
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25221
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25225
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    :sswitch_130
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;-><init>()V

    .line 25226
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25227
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25231
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    :sswitch_13d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;-><init>()V

    .line 25232
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25233
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25237
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    :sswitch_14a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;-><init>()V

    .line 25238
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25239
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25243
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    :sswitch_157
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    .line 25244
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25245
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25249
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    :sswitch_164
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    .line 25250
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25251
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25255
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    :sswitch_171
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    .line 25256
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25257
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25261
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    :sswitch_17e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    .line 25262
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25263
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25267
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    :sswitch_18b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;-><init>()V

    .line 25268
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25269
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25273
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    :sswitch_198
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;-><init>()V

    .line 25274
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25275
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25279
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    :sswitch_1a5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;-><init>()V

    .line 25280
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25281
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25285
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    :sswitch_1b2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;-><init>()V

    .line 25286
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25287
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25077
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
    .line 24016
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24607
    if-nez p1, :cond_8

    .line 24608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24610
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest:Z

    .line 24611
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 24612
    return-object p0
.end method

.method public setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24047
    if-nez p1, :cond_8

    .line 24048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24050
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest:Z

    .line 24051
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 24052
    return-object p0
.end method

.method public setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24447
    if-nez p1, :cond_8

    .line 24448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24450
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest:Z

    .line 24451
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 24452
    return-object p0
.end method

.method public setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24587
    if-nez p1, :cond_8

    .line 24588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24590
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest:Z

    .line 24591
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 24592
    return-object p0
.end method

.method public setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24307
    if-nez p1, :cond_8

    .line 24308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24310
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest:Z

    .line 24311
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 24312
    return-object p0
.end method

.method public setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24067
    if-nez p1, :cond_8

    .line 24068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24070
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest:Z

    .line 24071
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 24072
    return-object p0
.end method

.method public setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24147
    if-nez p1, :cond_8

    .line 24148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24150
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest:Z

    .line 24151
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 24152
    return-object p0
.end method

.method public setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24687
    if-nez p1, :cond_8

    .line 24688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24690
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest:Z

    .line 24691
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 24692
    return-object p0
.end method

.method public setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24167
    if-nez p1, :cond_8

    .line 24168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24170
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest:Z

    .line 24171
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 24172
    return-object p0
.end method

.method public setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24367
    if-nez p1, :cond_8

    .line 24368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24370
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest:Z

    .line 24371
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 24372
    return-object p0
.end method

.method public setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24347
    if-nez p1, :cond_8

    .line 24348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24350
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest:Z

    .line 24351
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 24352
    return-object p0
.end method

.method public setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24187
    if-nez p1, :cond_8

    .line 24188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24190
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest:Z

    .line 24191
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 24192
    return-object p0
.end method

.method public setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24327
    if-nez p1, :cond_8

    .line 24328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24330
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest:Z

    .line 24331
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 24332
    return-object p0
.end method

.method public setInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24567
    if-nez p1, :cond_8

    .line 24568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24570
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest:Z

    .line 24571
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 24572
    return-object p0
.end method

.method public setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24547
    if-nez p1, :cond_8

    .line 24548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24550
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest:Z

    .line 24551
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 24552
    return-object p0
.end method

.method public setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24087
    if-nez p1, :cond_8

    .line 24088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24090
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest:Z

    .line 24091
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 24092
    return-object p0
.end method

.method public setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24507
    if-nez p1, :cond_8

    .line 24508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24510
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest:Z

    .line 24511
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 24512
    return-object p0
.end method

.method public setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24667
    if-nez p1, :cond_8

    .line 24668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24670
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest:Z

    .line 24671
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 24672
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24527
    if-nez p1, :cond_8

    .line 24528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24530
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest:Z

    .line 24531
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 24532
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24487
    if-nez p1, :cond_8

    .line 24488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24490
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest:Z

    .line 24491
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 24492
    return-object p0
.end method

.method public setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24467
    if-nez p1, :cond_8

    .line 24468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24470
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest:Z

    .line 24471
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 24472
    return-object p0
.end method

.method public setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24227
    if-nez p1, :cond_8

    .line 24228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24230
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest:Z

    .line 24231
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 24232
    return-object p0
.end method

.method public setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24127
    if-nez p1, :cond_8

    .line 24128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24130
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest:Z

    .line 24131
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 24132
    return-object p0
.end method

.method public setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24107
    if-nez p1, :cond_8

    .line 24108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24110
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest:Z

    .line 24111
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 24112
    return-object p0
.end method

.method public setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24627
    if-nez p1, :cond_8

    .line 24628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24630
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest:Z

    .line 24631
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 24632
    return-object p0
.end method

.method public setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24427
    if-nez p1, :cond_8

    .line 24428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24430
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest:Z

    .line 24431
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 24432
    return-object p0
.end method

.method public setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24287
    if-nez p1, :cond_8

    .line 24288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24290
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest:Z

    .line 24291
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 24292
    return-object p0
.end method

.method public setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24647
    if-nez p1, :cond_8

    .line 24648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24650
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest:Z

    .line 24651
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 24652
    return-object p0
.end method

.method public setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24207
    if-nez p1, :cond_8

    .line 24208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24210
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest:Z

    .line 24211
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 24212
    return-object p0
.end method

.method public setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24387
    if-nez p1, :cond_8

    .line 24388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24390
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest:Z

    .line 24391
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 24392
    return-object p0
.end method

.method public setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24027
    if-nez p1, :cond_8

    .line 24028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24030
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties:Z

    .line 24031
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 24032
    return-object p0
.end method

.method public setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24407
    if-nez p1, :cond_8

    .line 24408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24410
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest:Z

    .line 24411
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 24412
    return-object p0
.end method

.method public setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24247
    if-nez p1, :cond_8

    .line 24248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24250
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest:Z

    .line 24251
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 24252
    return-object p0
.end method

.method public setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .registers 3
    .parameter "value"

    .prologue
    .line 24267
    if-nez p1, :cond_8

    .line 24268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24270
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest:Z

    .line 24271
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 24272
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
    .line 24817
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 24818
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24820
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 24821
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24823
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 24824
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24826
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 24827
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24829
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 24830
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24832
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 24833
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24835
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 24836
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24838
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 24839
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24841
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 24842
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24844
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 24845
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24847
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 24848
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24850
    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 24851
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24853
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 24854
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24856
    :cond_be
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 24857
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24859
    :cond_cd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 24860
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24862
    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 24863
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24865
    :cond_eb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 24866
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24868
    :cond_fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 24869
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24871
    :cond_109
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 24872
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24874
    :cond_118
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 24875
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24877
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 24878
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24880
    :cond_136
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 24881
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24883
    :cond_145
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 24884
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24886
    :cond_154
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 24887
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24889
    :cond_163
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 24890
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24892
    :cond_172
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 24893
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24895
    :cond_181
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 24896
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24898
    :cond_190
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 24899
    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24901
    :cond_19f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 24902
    const/16 v0, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24904
    :cond_1ae
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 24905
    const/16 v0, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24907
    :cond_1bd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 24908
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24910
    :cond_1cc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 24911
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24913
    :cond_1db
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 24914
    const/16 v0, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24916
    :cond_1ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 24917
    const/16 v0, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24919
    :cond_1f9
    return-void
.end method
