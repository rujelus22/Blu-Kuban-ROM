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

    .line 21524
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21529
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 21549
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 21569
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 21589
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 21609
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 21629
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 21649
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 21669
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 21689
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 21709
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 21729
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 21749
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 21769
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 21789
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 21809
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 21829
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 21849
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 21869
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 21889
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 21909
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 21929
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 21949
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 21969
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 21989
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 22009
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 22029
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 22049
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 22069
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 22089
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 22109
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 22129
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 22149
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 22169
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 22189
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 22428
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    .line 21524
    return-void
.end method


# virtual methods
.method public getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .registers 2

    .prologue
    .line 22111
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    return-object v0
.end method

.method public getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 2

    .prologue
    .line 21551
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    return-object v0
.end method

.method public getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 2

    .prologue
    .line 21951
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 22431
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 22433
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getSerializedSize()I

    .line 22435
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .registers 2

    .prologue
    .line 22091
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    return-object v0
.end method

.method public getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 2

    .prologue
    .line 21811
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    return-object v0
.end method

.method public getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 2

    .prologue
    .line 21571
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    return-object v0
.end method

.method public getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .registers 2

    .prologue
    .line 21651
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    return-object v0
.end method

.method public getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .registers 2

    .prologue
    .line 22191
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    return-object v0
.end method

.method public getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .registers 2

    .prologue
    .line 21671
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    return-object v0
.end method

.method public getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    .registers 2

    .prologue
    .line 21871
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    return-object v0
.end method

.method public getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .registers 2

    .prologue
    .line 21851
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    return-object v0
.end method

.method public getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 2

    .prologue
    .line 21691
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    return-object v0
.end method

.method public getGetInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .registers 2

    .prologue
    .line 22071
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    return-object v0
.end method

.method public getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 2

    .prologue
    .line 21831
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .registers 2

    .prologue
    .line 22051
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    return-object v0
.end method

.method public getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 2

    .prologue
    .line 21591
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    return-object v0
.end method

.method public getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 2

    .prologue
    .line 22011
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    return-object v0
.end method

.method public getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .registers 2

    .prologue
    .line 22171
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .registers 2

    .prologue
    .line 22031
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .registers 2

    .prologue
    .line 21991
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    .registers 2

    .prologue
    .line 21971
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    return-object v0
.end method

.method public getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .registers 2

    .prologue
    .line 21731
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    return-object v0
.end method

.method public getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 2

    .prologue
    .line 21631
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    return-object v0
.end method

.method public getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 2

    .prologue
    .line 21611
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    return-object v0
.end method

.method public getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 2

    .prologue
    .line 22131
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    return-object v0
.end method

.method public getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 2

    .prologue
    .line 21931
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    return-object v0
.end method

.method public getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 2

    .prologue
    .line 21791
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    return-object v0
.end method

.method public getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    .registers 2

    .prologue
    .line 22151
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    return-object v0
.end method

.method public getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    .registers 2

    .prologue
    .line 21711
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    return-object v0
.end method

.method public getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    .registers 2

    .prologue
    .line 21891
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    return-object v0
.end method

.method public getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    .registers 2

    .prologue
    .line 21531
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 2

    .prologue
    .line 21911
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 22440
    const/4 v0, 0x0

    .line 22441
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 22442
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22445
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 22446
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22449
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 22450
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22453
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 22454
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22457
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 22458
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22461
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 22462
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22465
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 22466
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22469
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 22470
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22473
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 22474
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22477
    :cond_95
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 22478
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22481
    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 22482
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22485
    :cond_b7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 22486
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22489
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 22490
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22493
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 22494
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22497
    :cond_ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 22498
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22501
    :cond_fb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 22502
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22505
    :cond_10c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 22506
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22509
    :cond_11d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 22510
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22513
    :cond_12e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 22514
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22517
    :cond_13f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest()Z

    move-result v1

    if-eqz v1, :cond_150

    .line 22518
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22521
    :cond_150
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 22522
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22525
    :cond_161
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest()Z

    move-result v1

    if-eqz v1, :cond_172

    .line 22526
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22529
    :cond_172
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest()Z

    move-result v1

    if-eqz v1, :cond_183

    .line 22530
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22533
    :cond_183
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v1

    if-eqz v1, :cond_194

    .line 22534
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22537
    :cond_194
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest()Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 22538
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22541
    :cond_1a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 22542
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22545
    :cond_1b6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest()Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 22546
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22549
    :cond_1c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest()Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 22550
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22553
    :cond_1d8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 22554
    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22557
    :cond_1e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 22558
    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22561
    :cond_1fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest()Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 22562
    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22565
    :cond_20b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest()Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 22566
    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22569
    :cond_21c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest()Z

    move-result v1

    if-eqz v1, :cond_22d

    .line 22570
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22573
    :cond_22d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest()Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 22574
    const/16 v1, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22577
    :cond_23e
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->cachedSize:I

    .line 22578
    return v0
.end method

.method public getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    .registers 2

    .prologue
    .line 21751
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    return-object v0
.end method

.method public getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .registers 2

    .prologue
    .line 21771
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    return-object v0
.end method

.method public hasAckNotificationsRequest()Z
    .registers 2

    .prologue
    .line 22110
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest:Z

    return v0
.end method

.method public hasAssetRequest()Z
    .registers 2

    .prologue
    .line 21550
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest:Z

    return v0
.end method

.method public hasBillingEventRequest()Z
    .registers 2

    .prologue
    .line 21950
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest:Z

    return v0
.end method

.method public hasCheckForNotificationsRequest()Z
    .registers 2

    .prologue
    .line 22090
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest:Z

    return v0
.end method

.method public hasCheckLicenseRequest()Z
    .registers 2

    .prologue
    .line 21810
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest:Z

    return v0
.end method

.method public hasCommentsRequest()Z
    .registers 2

    .prologue
    .line 21570
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest:Z

    return v0
.end method

.method public hasContentSyncRequest()Z
    .registers 2

    .prologue
    .line 21650
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest:Z

    return v0
.end method

.method public hasGetAddressSnippetRequest()Z
    .registers 2

    .prologue
    .line 22190
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest:Z

    return v0
.end method

.method public hasGetAssetRequest()Z
    .registers 2

    .prologue
    .line 21670
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest:Z

    return v0
.end method

.method public hasGetCarrierInfoRequest()Z
    .registers 2

    .prologue
    .line 21870
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest:Z

    return v0
.end method

.method public hasGetCategoriesRequest()Z
    .registers 2

    .prologue
    .line 21850
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest:Z

    return v0
.end method

.method public hasGetImageRequest()Z
    .registers 2

    .prologue
    .line 21690
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest:Z

    return v0
.end method

.method public hasGetInAppPurchaseInformationRequest()Z
    .registers 2

    .prologue
    .line 22070
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest:Z

    return v0
.end method

.method public hasGetMarketMetadataRequest()Z
    .registers 2

    .prologue
    .line 21830
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsRequest()Z
    .registers 2

    .prologue
    .line 22050
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest:Z

    return v0
.end method

.method public hasModifyCommentRequest()Z
    .registers 2

    .prologue
    .line 21590
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest:Z

    return v0
.end method

.method public hasPaypalCreateAccountRequest()Z
    .registers 2

    .prologue
    .line 22010
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest:Z

    return v0
.end method

.method public hasPaypalMassageAddressRequest()Z
    .registers 2

    .prologue
    .line 22170
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsRequest()Z
    .registers 2

    .prologue
    .line 22030
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsRequest()Z
    .registers 2

    .prologue
    .line 21990
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalRequest()Z
    .registers 2

    .prologue
    .line 21970
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest:Z

    return v0
.end method

.method public hasPurchaseMetadataRequest()Z
    .registers 2

    .prologue
    .line 21730
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest:Z

    return v0
.end method

.method public hasPurchaseOrderRequest()Z
    .registers 2

    .prologue
    .line 21630
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest:Z

    return v0
.end method

.method public hasPurchasePostRequest()Z
    .registers 2

    .prologue
    .line 21610
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest:Z

    return v0
.end method

.method public hasPurchaseProductRequest()Z
    .registers 2

    .prologue
    .line 22130
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest:Z

    return v0
.end method

.method public hasQuerySuggestionRequest()Z
    .registers 2

    .prologue
    .line 21930
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest:Z

    return v0
.end method

.method public hasRateCommentRequest()Z
    .registers 2

    .prologue
    .line 21790
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest:Z

    return v0
.end method

.method public hasReconstructDatabaseRequest()Z
    .registers 2

    .prologue
    .line 22150
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest:Z

    return v0
.end method

.method public hasRefundRequest()Z
    .registers 2

    .prologue
    .line 21710
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest:Z

    return v0
.end method

.method public hasRemoveAssetRequest()Z
    .registers 2

    .prologue
    .line 21890
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest:Z

    return v0
.end method

.method public hasRequestSpecificProperties()Z
    .registers 2

    .prologue
    .line 21530
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties:Z

    return v0
.end method

.method public hasRestoreApplicationsRequest()Z
    .registers 2

    .prologue
    .line 21910
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest:Z

    return v0
.end method

.method public hasSubCategoriesRequest()Z
    .registers 2

    .prologue
    .line 21750
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest:Z

    return v0
.end method

.method public hasUninstallReasonRequest()Z
    .registers 2

    .prologue
    .line 21770
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
    .line 22586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 22587
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c0

    .line 22591
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22592
    :sswitch_d
    return-object p0

    .line 22597
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;-><init>()V

    .line 22598
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22599
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22603
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;-><init>()V

    .line 22604
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22605
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22609
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;-><init>()V

    .line 22610
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22611
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22615
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    :sswitch_32
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    .line 22616
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22617
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22621
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;-><init>()V

    .line 22622
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22623
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22627
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    :sswitch_4a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;-><init>()V

    .line 22628
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22629
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22633
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    :sswitch_56
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    .line 22634
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22635
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22639
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :sswitch_62
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;-><init>()V

    .line 22640
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22641
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22645
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    :sswitch_6e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;-><init>()V

    .line 22646
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22647
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto :goto_0

    .line 22651
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    :sswitch_7a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;-><init>()V

    .line 22652
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22653
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22657
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    :sswitch_87
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    .line 22658
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22659
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22663
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    :sswitch_94
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;-><init>()V

    .line 22664
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22665
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22669
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    :sswitch_a1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;-><init>()V

    .line 22670
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22671
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22675
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    :sswitch_ae
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;-><init>()V

    .line 22676
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22677
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22681
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    :sswitch_bb
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    .line 22682
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22683
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22687
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    :sswitch_c8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;-><init>()V

    .line 22688
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22689
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22693
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    :sswitch_d5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;-><init>()V

    .line 22694
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22695
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22699
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    :sswitch_e2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;-><init>()V

    .line 22700
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22701
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22705
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    :sswitch_ef
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;-><init>()V

    .line 22706
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22707
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22711
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    :sswitch_fc
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    .line 22712
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22713
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22717
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    :sswitch_109
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;-><init>()V

    .line 22718
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22719
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22723
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    :sswitch_116
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    .line 22724
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22725
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22729
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    :sswitch_123
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;-><init>()V

    .line 22730
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22731
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22735
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    :sswitch_130
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;-><init>()V

    .line 22736
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22737
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22741
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    :sswitch_13d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;-><init>()V

    .line 22742
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22743
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22747
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    :sswitch_14a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;-><init>()V

    .line 22748
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22749
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22753
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    :sswitch_157
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    .line 22754
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22755
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22759
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    :sswitch_164
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    .line 22760
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22761
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22765
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    :sswitch_171
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    .line 22766
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22767
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22771
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    :sswitch_17e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    .line 22772
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22773
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22777
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    :sswitch_18b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;-><init>()V

    .line 22778
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22779
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22783
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    :sswitch_198
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;-><init>()V

    .line 22784
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22785
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22789
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    :sswitch_1a5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;-><init>()V

    .line 22790
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22791
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22795
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    :sswitch_1b2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;-><init>()V

    .line 22796
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 22797
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    goto/16 :goto_0

    .line 22587
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
    .line 21522
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22113
    if-nez p1, :cond_8

    .line 22114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22116
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest:Z

    .line 22117
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 22118
    return-object p0
.end method

.method public setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21553
    if-nez p1, :cond_8

    .line 21554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21556
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest:Z

    .line 21557
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 21558
    return-object p0
.end method

.method public setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21953
    if-nez p1, :cond_8

    .line 21954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21956
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest:Z

    .line 21957
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 21958
    return-object p0
.end method

.method public setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22093
    if-nez p1, :cond_8

    .line 22094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22096
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest:Z

    .line 22097
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 22098
    return-object p0
.end method

.method public setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21813
    if-nez p1, :cond_8

    .line 21814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21816
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest:Z

    .line 21817
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 21818
    return-object p0
.end method

.method public setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21573
    if-nez p1, :cond_8

    .line 21574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21576
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest:Z

    .line 21577
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 21578
    return-object p0
.end method

.method public setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21653
    if-nez p1, :cond_8

    .line 21654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21656
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest:Z

    .line 21657
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 21658
    return-object p0
.end method

.method public setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22193
    if-nez p1, :cond_8

    .line 22194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22196
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest:Z

    .line 22197
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 22198
    return-object p0
.end method

.method public setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21673
    if-nez p1, :cond_8

    .line 21674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21676
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest:Z

    .line 21677
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 21678
    return-object p0
.end method

.method public setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21873
    if-nez p1, :cond_8

    .line 21874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21876
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest:Z

    .line 21877
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 21878
    return-object p0
.end method

.method public setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21853
    if-nez p1, :cond_8

    .line 21854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21856
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest:Z

    .line 21857
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 21858
    return-object p0
.end method

.method public setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21693
    if-nez p1, :cond_8

    .line 21694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21696
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest:Z

    .line 21697
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 21698
    return-object p0
.end method

.method public setGetInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22073
    if-nez p1, :cond_8

    .line 22074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22076
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest:Z

    .line 22077
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 22078
    return-object p0
.end method

.method public setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21833
    if-nez p1, :cond_8

    .line 21834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21836
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest:Z

    .line 21837
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 21838
    return-object p0
.end method

.method public setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22053
    if-nez p1, :cond_8

    .line 22054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22056
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest:Z

    .line 22057
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 22058
    return-object p0
.end method

.method public setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21593
    if-nez p1, :cond_8

    .line 21594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21596
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest:Z

    .line 21597
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 21598
    return-object p0
.end method

.method public setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22013
    if-nez p1, :cond_8

    .line 22014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22016
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest:Z

    .line 22017
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 22018
    return-object p0
.end method

.method public setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22173
    if-nez p1, :cond_8

    .line 22174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22176
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest:Z

    .line 22177
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 22178
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22033
    if-nez p1, :cond_8

    .line 22034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22036
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest:Z

    .line 22037
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 22038
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21993
    if-nez p1, :cond_8

    .line 21994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21996
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest:Z

    .line 21997
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 21998
    return-object p0
.end method

.method public setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21973
    if-nez p1, :cond_8

    .line 21974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21976
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest:Z

    .line 21977
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 21978
    return-object p0
.end method

.method public setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21733
    if-nez p1, :cond_8

    .line 21734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21736
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest:Z

    .line 21737
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 21738
    return-object p0
.end method

.method public setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21633
    if-nez p1, :cond_8

    .line 21634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21636
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest:Z

    .line 21637
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 21638
    return-object p0
.end method

.method public setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21613
    if-nez p1, :cond_8

    .line 21614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21616
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest:Z

    .line 21617
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 21618
    return-object p0
.end method

.method public setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22133
    if-nez p1, :cond_8

    .line 22134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22136
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest:Z

    .line 22137
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 22138
    return-object p0
.end method

.method public setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21933
    if-nez p1, :cond_8

    .line 21934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21936
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest:Z

    .line 21937
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 21938
    return-object p0
.end method

.method public setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21793
    if-nez p1, :cond_8

    .line 21794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21796
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest:Z

    .line 21797
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 21798
    return-object p0
.end method

.method public setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 22153
    if-nez p1, :cond_8

    .line 22154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22156
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest:Z

    .line 22157
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 22158
    return-object p0
.end method

.method public setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21713
    if-nez p1, :cond_8

    .line 21714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21716
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest:Z

    .line 21717
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 21718
    return-object p0
.end method

.method public setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21893
    if-nez p1, :cond_8

    .line 21894
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21896
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest:Z

    .line 21897
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 21898
    return-object p0
.end method

.method public setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21533
    if-nez p1, :cond_8

    .line 21534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21536
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties:Z

    .line 21537
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 21538
    return-object p0
.end method

.method public setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21913
    if-nez p1, :cond_8

    .line 21914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21916
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest:Z

    .line 21917
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 21918
    return-object p0
.end method

.method public setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21753
    if-nez p1, :cond_8

    .line 21754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21756
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest:Z

    .line 21757
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 21758
    return-object p0
.end method

.method public setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 21773
    if-nez p1, :cond_8

    .line 21774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21776
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest:Z

    .line 21777
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 21778
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
    .line 22324
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRequestSpecificProperties()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 22325
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22327
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 22328
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22330
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCommentsRequest()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 22331
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22333
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasModifyCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 22334
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22336
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchasePostRequest()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 22337
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22339
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseOrderRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 22340
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22342
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasContentSyncRequest()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 22343
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22345
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 22346
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22348
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetImageRequest()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 22349
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22351
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRefundRequest()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 22352
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22354
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 22355
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22357
    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasSubCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 22358
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22360
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasUninstallReasonRequest()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 22361
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22363
    :cond_be
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRateCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 22364
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22366
    :cond_cd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckLicenseRequest()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 22367
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22369
    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetMarketMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 22370
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22372
    :cond_eb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 22373
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22375
    :cond_fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetCarrierInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 22376
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22378
    :cond_109
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRemoveAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 22379
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22381
    :cond_118
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasRestoreApplicationsRequest()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 22382
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22384
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasQuerySuggestionRequest()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 22385
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22387
    :cond_136
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasBillingEventRequest()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 22388
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22390
    :cond_145
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalRequest()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 22391
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22393
    :cond_154
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 22394
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22396
    :cond_163
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalCreateAccountRequest()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 22397
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22399
    :cond_172
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 22400
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22402
    :cond_181
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasInAppRestoreTransactionsRequest()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 22403
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22405
    :cond_190
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetInAppPurchaseInformationRequest()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 22406
    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22408
    :cond_19f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasCheckForNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 22409
    const/16 v0, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22411
    :cond_1ae
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasAckNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 22412
    const/16 v0, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22414
    :cond_1bd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPurchaseProductRequest()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 22415
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22417
    :cond_1cc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasReconstructDatabaseRequest()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 22418
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22420
    :cond_1db
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasPaypalMassageAddressRequest()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 22421
    const/16 v0, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22423
    :cond_1ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->hasGetAddressSnippetRequest()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 22424
    const/16 v0, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 22426
    :cond_1f9
    return-void
.end method
