.class public Lcom/google/android/vending/remoting/api/VendingApi;
.super Ljava/lang/Object;
.source "VendingApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;,
        Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;
    }
.end annotation


# instance fields
.field private final mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/vending/remoting/api/VendingApiContext;)V
    .registers 3
    .parameter "requestQueue"
    .parameter "apiContext"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 73
    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    .line 74
    return-void
.end method


# virtual methods
.method public ackNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->setDrainable(Z)V

    .line 247
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 248
    return-void
.end method

.method public checkForPendingNotifications(Lcom/android/volley/Response$ErrorListener;)V
    .registers 9
    .parameter

    .prologue
    .line 220
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    .line 221
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$1;

    invoke-direct {v4, p0}, Lcom/google/android/vending/remoting/api/VendingApi$1;-><init>(Lcom/google/android/vending/remoting/api/VendingApi;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 231
    return-void
.end method

.method public checkLicense(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 183
    return-void
.end method

.method public fetchAssetInfo(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/model/AssetList;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;-><init>()V

    .line 123
    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 124
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;

    invoke-direct {v4, p2}, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;-><init>(Lcom/android/volley/Response$Listener;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 129
    return-void
.end method

.method public flagAsset(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    .line 106
    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 107
    invoke-virtual {v2, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 108
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 109
    invoke-virtual {v2, p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 111
    :cond_14
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 115
    return-void
.end method

.method public getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    return-object v0
.end method

.method public getAsset(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;-><init>()V

    .line 161
    invoke-virtual {v2, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 162
    if-eqz p1, :cond_d

    .line 163
    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->setDirectDownloadKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 165
    :cond_d
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 169
    return-void
.end method

.method public getBillingCountries(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;

    invoke-direct {v4, p1}, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;-><init>(Lcom/android/volley/Response$Listener;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 327
    return-void
.end method

.method public getInAppPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 198
    return-void
.end method

.method public getMetadata(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .parameter "metadataRequest"
    .parameter "deviceConfigHash"
    .parameter "appVersion"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;",
            "II",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;>;"
    new-instance v0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;IILcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V

    .line 143
    .local v0, request:Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 144
    return-void
.end method

.method public getVendingHistory(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/model/AssetList;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 90
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;-><init>()V

    .line 91
    invoke-virtual {v2, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 92
    invoke-virtual {v2, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveExtendedInfo(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 93
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;

    invoke-direct {v4, p1}, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;-><init>(Lcom/android/volley/Response$Listener;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 98
    return-void
.end method

.method public reconstructDatabase(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->setDrainable(Z)V

    .line 263
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 264
    return-void
.end method

.method public recordBillingEvent(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 312
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->setDrainable(Z)V

    .line 313
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 314
    return-void
.end method

.method public refundAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->setDrainable(Z)V

    .line 340
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 341
    return-void
.end method

.method public restoreApplications(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->setDrainable(Z)V

    .line 279
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 280
    return-void
.end method

.method public restoreInAppTransactions(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 213
    return-void
.end method

.method public syncContent(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->setDrainable(Z)V

    .line 295
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 296
    return-void
.end method
