.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
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

.field private hasGetMarketMetadataResponse:Z

.field private hasInAppPurchaseInformationResponse:Z

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

.field private inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

.field private inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

.field private modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

.field private paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

.field private paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

.field private paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

.field private paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

.field private paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

.field private prefetchedBundle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;",
            ">;"
        }
    .end annotation
.end field

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

    .line 25458
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25463
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 25483
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 25503
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 25523
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 25543
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 25563
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 25583
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 25603
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 25623
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 25643
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 25663
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 25683
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 25703
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 25723
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 25743
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 25763
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 25783
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 25803
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 25823
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 25843
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 25863
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 25883
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 25903
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 25923
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 25943
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 25963
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 25983
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 26003
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 26023
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 26043
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 26063
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 26083
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 26103
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 26122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    .line 26361
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    .line 25458
    return-void
.end method


# virtual methods
.method public addPrefetchedBundle(Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26139
    if-nez p1, :cond_8

    .line 26140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26142
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 26143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    .line 26145
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26146
    return-object p0
.end method

.method public getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    .registers 2

    .prologue
    .line 26025
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    return-object v0
.end method

.method public getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 2

    .prologue
    .line 25485
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    return-object v0
.end method

.method public getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    .registers 2

    .prologue
    .line 25865
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 26363
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    if-gez v0, :cond_7

    .line 26365
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getSerializedSize()I

    .line 26367
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    .registers 2

    .prologue
    .line 26005
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    return-object v0
.end method

.method public getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .registers 2

    .prologue
    .line 25745
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    return-object v0
.end method

.method public getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .registers 2

    .prologue
    .line 25505
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    return-object v0
.end method

.method public getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    .registers 2

    .prologue
    .line 25585
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    return-object v0
.end method

.method public getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .registers 2

    .prologue
    .line 26105
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    return-object v0
.end method

.method public getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .registers 2

    .prologue
    .line 25605
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    return-object v0
.end method

.method public getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 2

    .prologue
    .line 25805
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    return-object v0
.end method

.method public getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    .registers 2

    .prologue
    .line 25785
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    return-object v0
.end method

.method public getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .registers 2

    .prologue
    .line 25625
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    return-object v0
.end method

.method public getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 2

    .prologue
    .line 25765
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    return-object v0
.end method

.method public getInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .registers 2

    .prologue
    .line 25985
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .registers 2

    .prologue
    .line 25965
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    return-object v0
.end method

.method public getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    .registers 2

    .prologue
    .line 25525
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    return-object v0
.end method

.method public getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .registers 2

    .prologue
    .line 25925
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    return-object v0
.end method

.method public getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    .registers 2

    .prologue
    .line 26085
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .registers 2

    .prologue
    .line 25945
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .registers 2

    .prologue
    .line 25905
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    .registers 2

    .prologue
    .line 25885
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    return-object v0
.end method

.method public getPrefetchedBundleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26125
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    return-object v0
.end method

.method public getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    .registers 2

    .prologue
    .line 25665
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    return-object v0
.end method

.method public getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 2

    .prologue
    .line 25565
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    return-object v0
.end method

.method public getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 2

    .prologue
    .line 25545
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    return-object v0
.end method

.method public getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .registers 2

    .prologue
    .line 26045
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    return-object v0
.end method

.method public getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .registers 2

    .prologue
    .line 25845
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    return-object v0
.end method

.method public getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    .registers 2

    .prologue
    .line 25725
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    return-object v0
.end method

.method public getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    .registers 2

    .prologue
    .line 26065
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    return-object v0
.end method

.method public getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .registers 2

    .prologue
    .line 25645
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    return-object v0
.end method

.method public getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 2

    .prologue
    .line 25465
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    .registers 2

    .prologue
    .line 25825
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 26371
    const/4 v2, 0x0

    .line 26372
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 26373
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26376
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 26377
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26380
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 26381
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26384
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 26385
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26388
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 26389
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26392
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 26393
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26396
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 26397
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26400
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 26401
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26404
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 26405
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26408
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 26409
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26412
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 26413
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26416
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 26417
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26420
    :cond_c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 26421
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26424
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 26425
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26428
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 26429
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26432
    :cond_fa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse()Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 26433
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26436
    :cond_10b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPrefetchedBundleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_113
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    .line 26437
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    const/16 v3, 0x13

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_113

    .line 26440
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse()Z

    move-result v3

    if-eqz v3, :cond_138

    .line 26441
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26444
    :cond_138
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 26445
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26448
    :cond_149
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse()Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 26449
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26452
    :cond_15a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse()Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 26453
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26456
    :cond_16b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse()Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 26457
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26460
    :cond_17c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse()Z

    move-result v3

    if-eqz v3, :cond_18d

    .line 26461
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26464
    :cond_18d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v3

    if-eqz v3, :cond_19e

    .line 26465
    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26468
    :cond_19e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse()Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 26469
    const/16 v3, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26472
    :cond_1af
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 26473
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26476
    :cond_1c0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse()Z

    move-result v3

    if-eqz v3, :cond_1d1

    .line 26477
    const/16 v3, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26480
    :cond_1d1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse()Z

    move-result v3

    if-eqz v3, :cond_1e2

    .line 26481
    const/16 v3, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26484
    :cond_1e2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse()Z

    move-result v3

    if-eqz v3, :cond_1f3

    .line 26485
    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26488
    :cond_1f3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse()Z

    move-result v3

    if-eqz v3, :cond_204

    .line 26489
    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26492
    :cond_204
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse()Z

    move-result v3

    if-eqz v3, :cond_215

    .line 26493
    const/16 v3, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26496
    :cond_215
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse()Z

    move-result v3

    if-eqz v3, :cond_226

    .line 26497
    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26500
    :cond_226
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse()Z

    move-result v3

    if-eqz v3, :cond_237

    .line 26501
    const/16 v3, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26504
    :cond_237
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse()Z

    move-result v3

    if-eqz v3, :cond_248

    .line 26505
    const/16 v3, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26508
    :cond_248
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    .line 26509
    return v2
.end method

.method public getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .registers 2

    .prologue
    .line 25685
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    return-object v0
.end method

.method public getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    .registers 2

    .prologue
    .line 25705
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    return-object v0
.end method

.method public hasAckNotificationsResponse()Z
    .registers 2

    .prologue
    .line 26024
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse:Z

    return v0
.end method

.method public hasAssetsResponse()Z
    .registers 2

    .prologue
    .line 25484
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse:Z

    return v0
.end method

.method public hasBillingEventResponse()Z
    .registers 2

    .prologue
    .line 25864
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse:Z

    return v0
.end method

.method public hasCheckForNotificationsResponse()Z
    .registers 2

    .prologue
    .line 26004
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse:Z

    return v0
.end method

.method public hasCheckLicenseResponse()Z
    .registers 2

    .prologue
    .line 25744
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse:Z

    return v0
.end method

.method public hasCommentsResponse()Z
    .registers 2

    .prologue
    .line 25504
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse:Z

    return v0
.end method

.method public hasContentSyncResponse()Z
    .registers 2

    .prologue
    .line 25584
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse:Z

    return v0
.end method

.method public hasGetAddressSnippetResponse()Z
    .registers 2

    .prologue
    .line 26104
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse:Z

    return v0
.end method

.method public hasGetAssetResponse()Z
    .registers 2

    .prologue
    .line 25604
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse:Z

    return v0
.end method

.method public hasGetCarrierInfoResponse()Z
    .registers 2

    .prologue
    .line 25804
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse:Z

    return v0
.end method

.method public hasGetCategoriesResponse()Z
    .registers 2

    .prologue
    .line 25784
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse:Z

    return v0
.end method

.method public hasGetImageResponse()Z
    .registers 2

    .prologue
    .line 25624
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse:Z

    return v0
.end method

.method public hasGetMarketMetadataResponse()Z
    .registers 2

    .prologue
    .line 25764
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse:Z

    return v0
.end method

.method public hasInAppPurchaseInformationResponse()Z
    .registers 2

    .prologue
    .line 25984
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsResponse()Z
    .registers 2

    .prologue
    .line 25964
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse:Z

    return v0
.end method

.method public hasModifyCommentResponse()Z
    .registers 2

    .prologue
    .line 25524
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse:Z

    return v0
.end method

.method public hasPaypalCreateAccountResponse()Z
    .registers 2

    .prologue
    .line 25924
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse:Z

    return v0
.end method

.method public hasPaypalMassageAddressResponse()Z
    .registers 2

    .prologue
    .line 26084
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsResponse()Z
    .registers 2

    .prologue
    .line 25944
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsResponse()Z
    .registers 2

    .prologue
    .line 25904
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalResponse()Z
    .registers 2

    .prologue
    .line 25884
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse:Z

    return v0
.end method

.method public hasPurchaseMetadataResponse()Z
    .registers 2

    .prologue
    .line 25664
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse:Z

    return v0
.end method

.method public hasPurchaseOrderResponse()Z
    .registers 2

    .prologue
    .line 25564
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse:Z

    return v0
.end method

.method public hasPurchasePostResponse()Z
    .registers 2

    .prologue
    .line 25544
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse:Z

    return v0
.end method

.method public hasPurchaseProductResponse()Z
    .registers 2

    .prologue
    .line 26044
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse:Z

    return v0
.end method

.method public hasQuerySuggestionResponse()Z
    .registers 2

    .prologue
    .line 25844
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse:Z

    return v0
.end method

.method public hasRateCommentResponse()Z
    .registers 2

    .prologue
    .line 25724
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse:Z

    return v0
.end method

.method public hasReconstructDatabaseResponse()Z
    .registers 2

    .prologue
    .line 26064
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse:Z

    return v0
.end method

.method public hasRefundResponse()Z
    .registers 2

    .prologue
    .line 25644
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse:Z

    return v0
.end method

.method public hasResponseProperties()Z
    .registers 2

    .prologue
    .line 25464
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties:Z

    return v0
.end method

.method public hasRestoreApplicationResponse()Z
    .registers 2

    .prologue
    .line 25824
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse:Z

    return v0
.end method

.method public hasSubCategoriesResponse()Z
    .registers 2

    .prologue
    .line 25684
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse:Z

    return v0
.end method

.method public hasUninstallReasonResponse()Z
    .registers 2

    .prologue
    .line 25704
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 26517
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c0

    .line 26521
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26522
    :sswitch_d
    return-object p0

    .line 26527
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;-><init>()V

    .line 26528
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26529
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26533
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;-><init>()V

    .line 26534
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26535
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26539
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;-><init>()V

    .line 26540
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26541
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26545
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    :sswitch_32
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;-><init>()V

    .line 26546
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26547
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26551
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;-><init>()V

    .line 26552
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26553
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26557
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    :sswitch_4a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;-><init>()V

    .line 26558
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26559
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26563
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    :sswitch_56
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;-><init>()V

    .line 26564
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26565
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26569
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    :sswitch_62
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;-><init>()V

    .line 26570
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26571
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26575
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    :sswitch_6e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;-><init>()V

    .line 26576
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26577
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 26581
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    :sswitch_7a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;-><init>()V

    .line 26582
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26583
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26587
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    :sswitch_87
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;-><init>()V

    .line 26588
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26589
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26593
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    :sswitch_94
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;-><init>()V

    .line 26594
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26595
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26599
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    :sswitch_a1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;-><init>()V

    .line 26600
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26601
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26605
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    :sswitch_ae
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;-><init>()V

    .line 26606
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26607
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26611
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    :sswitch_bb
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;-><init>()V

    .line 26612
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26613
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26617
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    :sswitch_c8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;-><init>()V

    .line 26618
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26619
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26623
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    :sswitch_d5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;-><init>()V

    .line 26624
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26625
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->addPrefetchedBundle(Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26629
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    :sswitch_e2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;-><init>()V

    .line 26630
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26631
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26635
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    :sswitch_ef
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;-><init>()V

    .line 26636
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26637
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26641
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    :sswitch_fc
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;-><init>()V

    .line 26642
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26643
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26647
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    :sswitch_109
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;-><init>()V

    .line 26648
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26649
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26653
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    :sswitch_116
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;-><init>()V

    .line 26654
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26655
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26659
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    :sswitch_123
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;-><init>()V

    .line 26660
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26661
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26665
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    :sswitch_130
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;-><init>()V

    .line 26666
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26667
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26671
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    :sswitch_13d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;-><init>()V

    .line 26672
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26673
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26677
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    :sswitch_14a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;-><init>()V

    .line 26678
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26679
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26683
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    :sswitch_157
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;-><init>()V

    .line 26684
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26685
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26689
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    :sswitch_164
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;-><init>()V

    .line 26690
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26691
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26695
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    :sswitch_171
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;-><init>()V

    .line 26696
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26697
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26701
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    :sswitch_17e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;-><init>()V

    .line 26702
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26703
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26707
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    :sswitch_18b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;-><init>()V

    .line 26708
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26709
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26713
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    :sswitch_198
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;-><init>()V

    .line 26714
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26715
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26719
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    :sswitch_1a5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;-><init>()V

    .line 26720
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26721
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26725
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    :sswitch_1b2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;-><init>()V

    .line 26726
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26727
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 26517
    nop

    :sswitch_data_1c0
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
        0x9a -> :sswitch_d5
        0xa2 -> :sswitch_e2
        0xaa -> :sswitch_ef
        0xba -> :sswitch_fc
        0xc2 -> :sswitch_109
        0xca -> :sswitch_116
        0xd2 -> :sswitch_123
        0xda -> :sswitch_130
        0xe2 -> :sswitch_13d
        0xea -> :sswitch_14a
        0xf2 -> :sswitch_157
        0xfa -> :sswitch_164
        0x102 -> :sswitch_171
        0x10a -> :sswitch_17e
        0x112 -> :sswitch_18b
        0x11a -> :sswitch_198
        0x122 -> :sswitch_1a5
        0x12a -> :sswitch_1b2
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
    .line 25456
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26027
    if-nez p1, :cond_8

    .line 26028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26030
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse:Z

    .line 26031
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 26032
    return-object p0
.end method

.method public setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25487
    if-nez p1, :cond_8

    .line 25488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25490
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse:Z

    .line 25491
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 25492
    return-object p0
.end method

.method public setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25867
    if-nez p1, :cond_8

    .line 25868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25870
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse:Z

    .line 25871
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 25872
    return-object p0
.end method

.method public setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26007
    if-nez p1, :cond_8

    .line 26008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26010
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse:Z

    .line 26011
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 26012
    return-object p0
.end method

.method public setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25747
    if-nez p1, :cond_8

    .line 25748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25750
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse:Z

    .line 25751
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 25752
    return-object p0
.end method

.method public setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25507
    if-nez p1, :cond_8

    .line 25508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25510
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse:Z

    .line 25511
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 25512
    return-object p0
.end method

.method public setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25587
    if-nez p1, :cond_8

    .line 25588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25590
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse:Z

    .line 25591
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 25592
    return-object p0
.end method

.method public setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26107
    if-nez p1, :cond_8

    .line 26108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26110
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse:Z

    .line 26111
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 26112
    return-object p0
.end method

.method public setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25607
    if-nez p1, :cond_8

    .line 25608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25610
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse:Z

    .line 25611
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 25612
    return-object p0
.end method

.method public setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25807
    if-nez p1, :cond_8

    .line 25808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25810
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse:Z

    .line 25811
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 25812
    return-object p0
.end method

.method public setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25787
    if-nez p1, :cond_8

    .line 25788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25790
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse:Z

    .line 25791
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 25792
    return-object p0
.end method

.method public setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25627
    if-nez p1, :cond_8

    .line 25628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25630
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse:Z

    .line 25631
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 25632
    return-object p0
.end method

.method public setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25767
    if-nez p1, :cond_8

    .line 25768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25770
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse:Z

    .line 25771
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 25772
    return-object p0
.end method

.method public setInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25987
    if-nez p1, :cond_8

    .line 25988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25990
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse:Z

    .line 25991
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 25992
    return-object p0
.end method

.method public setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25967
    if-nez p1, :cond_8

    .line 25968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25970
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse:Z

    .line 25971
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 25972
    return-object p0
.end method

.method public setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25527
    if-nez p1, :cond_8

    .line 25528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25530
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse:Z

    .line 25531
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 25532
    return-object p0
.end method

.method public setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25927
    if-nez p1, :cond_8

    .line 25928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25930
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse:Z

    .line 25931
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 25932
    return-object p0
.end method

.method public setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26087
    if-nez p1, :cond_8

    .line 26088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26090
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse:Z

    .line 26091
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 26092
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25947
    if-nez p1, :cond_8

    .line 25948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25950
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse:Z

    .line 25951
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 25952
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25907
    if-nez p1, :cond_8

    .line 25908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25910
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse:Z

    .line 25911
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 25912
    return-object p0
.end method

.method public setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25887
    if-nez p1, :cond_8

    .line 25888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25890
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse:Z

    .line 25891
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 25892
    return-object p0
.end method

.method public setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25667
    if-nez p1, :cond_8

    .line 25668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25670
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse:Z

    .line 25671
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 25672
    return-object p0
.end method

.method public setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25567
    if-nez p1, :cond_8

    .line 25568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25570
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse:Z

    .line 25571
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 25572
    return-object p0
.end method

.method public setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25547
    if-nez p1, :cond_8

    .line 25548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25550
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse:Z

    .line 25551
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 25552
    return-object p0
.end method

.method public setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26047
    if-nez p1, :cond_8

    .line 26048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26050
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse:Z

    .line 26051
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 26052
    return-object p0
.end method

.method public setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25847
    if-nez p1, :cond_8

    .line 25848
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25850
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse:Z

    .line 25851
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 25852
    return-object p0
.end method

.method public setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25727
    if-nez p1, :cond_8

    .line 25728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25730
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse:Z

    .line 25731
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 25732
    return-object p0
.end method

.method public setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 26067
    if-nez p1, :cond_8

    .line 26068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26070
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse:Z

    .line 26071
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 26072
    return-object p0
.end method

.method public setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25647
    if-nez p1, :cond_8

    .line 25648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25650
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse:Z

    .line 25651
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 25652
    return-object p0
.end method

.method public setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25467
    if-nez p1, :cond_8

    .line 25468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25470
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties:Z

    .line 25471
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 25472
    return-object p0
.end method

.method public setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25827
    if-nez p1, :cond_8

    .line 25828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25830
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse:Z

    .line 25831
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 25832
    return-object p0
.end method

.method public setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25687
    if-nez p1, :cond_8

    .line 25688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25690
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse:Z

    .line 25691
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 25692
    return-object p0
.end method

.method public setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "value"

    .prologue
    .line 25707
    if-nez p1, :cond_8

    .line 25708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25710
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse:Z

    .line 25711
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 25712
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26257
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 26258
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26260
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 26261
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26263
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 26264
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26266
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 26267
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26269
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 26270
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26272
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 26273
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26275
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 26276
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26278
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 26279
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26281
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 26282
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26284
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 26285
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26287
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 26288
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26290
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 26291
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26293
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 26294
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26296
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 26297
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26299
    :cond_cc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 26300
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26302
    :cond_db
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 26303
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26305
    :cond_ea
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPrefetchedBundleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    .line 26306
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_f2

    .line 26308
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    :cond_104
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 26309
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26311
    :cond_113
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse()Z

    move-result v2

    if-eqz v2, :cond_122

    .line 26312
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26314
    :cond_122
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 26315
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26317
    :cond_131
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse()Z

    move-result v2

    if-eqz v2, :cond_140

    .line 26318
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26320
    :cond_140
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse()Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 26321
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26323
    :cond_14f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 26324
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26326
    :cond_15e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 26327
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26329
    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 26330
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26332
    :cond_17c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 26333
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26335
    :cond_18b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse()Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 26336
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26338
    :cond_19a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse()Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 26339
    const/16 v2, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26341
    :cond_1a9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse()Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 26342
    const/16 v2, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26344
    :cond_1b8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse()Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 26345
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26347
    :cond_1c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse()Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 26348
    const/16 v2, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26350
    :cond_1d6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse()Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 26351
    const/16 v2, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26353
    :cond_1e5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse()Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 26354
    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26356
    :cond_1f4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse()Z

    move-result v2

    if-eqz v2, :cond_203

    .line 26357
    const/16 v2, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26359
    :cond_203
    return-void
.end method
