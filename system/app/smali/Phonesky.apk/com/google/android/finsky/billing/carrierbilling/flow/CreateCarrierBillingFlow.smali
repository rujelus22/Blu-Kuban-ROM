.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CreateCarrierBillingFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;
    }
.end annotation


# instance fields
.field private mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

.field private mAddFragmentShown:Z

.field private mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

.field private mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

.field private mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

.field private mReferrer:Ljava/lang/String;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mSavingScreenShown:Z

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mTosVersion:Ljava/lang/String;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field private mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .registers 15
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "authenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 144
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .registers 12
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "authenticator"
    .parameter "storage"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 120
    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 121
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 123
    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    .line 125
    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    .line 130
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 153
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 154
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 155
    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 156
    iput-object p6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 157
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 158
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    .line 159
    sget-object v2, Lcom/google/android/finsky/config/G;->enableDcbReducedBillingAddress:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 162
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    if-eqz v1, :cond_5a

    .line 164
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    .line 166
    .local v0, carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    if-eqz v0, :cond_5a

    .line 167
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v2

    if-eqz v2, :cond_81

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :goto_58
    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 172
    .end local v0           #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v1           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_5a
    if-eqz p7, :cond_80

    .line 173
    const-string v2, "referrer_url"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mReferrer:Ljava/lang/String;

    .line 174
    const-string v2, "referrer_list_cookie"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 175
    const-string v2, "ui_mode"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 176
    const-string v2, "ui_mode"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 182
    :cond_80
    :goto_80
    return-void

    .line 167
    .restart local v0       #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .restart local v1       #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_81
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    goto :goto_58

    .line 179
    .end local v0           #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v1           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_84
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    goto :goto_80
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->continueResume(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private continueResume(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    if-eq v0, v1, :cond_c

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 273
    :cond_c
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 274
    const-string v0, "add_fragment_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragmentShown:Z

    .line 275
    const-string v0, "user_provided_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 276
    const-string v0, "saving_dialog_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    .line 277
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    if-eqz v0, :cond_3a

    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->finish()V

    .line 315
    :cond_39
    :goto_39
    return-void

    .line 281
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V

    .line 282
    const-string v0, "error_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    .line 287
    :cond_56
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateCarrierBillingFlow$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a4

    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_9f

    .line 307
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    goto :goto_39

    .line 290
    :pswitch_6b
    const-string v0, "add_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 291
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    goto :goto_39

    .line 297
    :pswitch_85
    const-string v0, "edit_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 300
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    goto :goto_39

    .line 311
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->finish()V

    goto :goto_39

    .line 287
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6b
        :pswitch_85
    .end packed-switch
.end method

.method private createCarrierBillingInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 6

    .prologue
    .line 590
    new-instance v2, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 592
    .local v2, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 593
    .local v1, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 594
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 595
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 596
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTransactionLimit()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setTransactionLimit(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 597
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 598
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 601
    :cond_43
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;-><init>()V

    .line 602
    .local v0, credentials:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 603
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    .line 604
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->setExpiration(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    .line 606
    :cond_6a
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setCredentials(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 608
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v3, :cond_80

    .line 609
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 620
    :cond_7c
    :goto_7c
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 621
    return-object v2

    .line 612
    :cond_80
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_98

    .line 613
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_7c

    .line 615
    :cond_98
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 616
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->toProto()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_7c
.end method

.method private getInvalidEntries(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, inputErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v1, errors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 417
    .local v0, error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v3

    .line 418
    .local v3, inputField:I
    packed-switch v3, :pswitch_data_40

    .line 429
    :pswitch_1c
    const-string v4, "InputValidationError that can\'t be edited: type=%d, message=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 426
    :pswitch_37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 434
    .end local v0           #error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .end local v3           #inputField:I
    :cond_3f
    return-object v1

    .line 418
    :pswitch_data_40
    .packed-switch 0x4
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_37
    .end packed-switch
.end method

.method private getProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "onSuccess"
    .parameter "onError"

    .prologue
    .line 661
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    .line 662
    .local v0, getProvisioning:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method private getRetriableErrorList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getInvalidEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 442
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private hideEditFragment()V
    .registers 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_f

    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 523
    :cond_f
    return-void
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    .line 558
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 559
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_12

    .line 560
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    .line 562
    :cond_12
    return-void
.end method

.method private hideTosFragment()V
    .registers 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_f

    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 496
    :cond_f
    return-void
.end method

.method private isSnippetValid()Z
    .registers 3

    .prologue
    .line 625
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, snippet:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isSubscriberInfoValid()Z
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private logEditAddress(Z)V
    .registers 4
    .parameter "hasAddressSnippet"

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDcbEdit?address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private logError(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 199
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 4
    .parameter "logError"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDcbError?error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private logTosAndAddress(ZZZ)V
    .registers 7
    .parameter "hasTos"
    .parameter "hasAddressSnippet"
    .parameter "hasFullAddress"

    .prologue
    .line 190
    if-eqz p3, :cond_25

    const-string v0, "FULL"

    .line 191
    .local v0, address:Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDcbTos?tos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 192
    return-void

    .line 190
    .end local v0           #address:Ljava/lang/String;
    :cond_25
    if-eqz p2, :cond_2a

    const-string v0, "SNIPPET"

    goto :goto_4

    :cond_2a
    const-string v0, "NONE"

    goto :goto_4
.end method

.method private onEditCancel()V
    .registers 3

    .prologue
    .line 701
    const-string v0, "addDcbEditCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v0, v1, :cond_f

    .line 703
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    .line 707
    :goto_e
    return-void

    .line 705
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    goto :goto_e
.end method

.method private onEditSuccess(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 695
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    .line 696
    const-string v0, "addDcbEditConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    .line 698
    return-void
.end method

.method private setAddressAvailability()V
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->isSubscriberInfoValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 632
    :cond_a
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    .line 638
    :goto_e
    return-void

    .line 633
    :cond_f
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->isSnippetValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 634
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    goto :goto_e

    .line 636
    :cond_1a
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    goto :goto_e
.end method

.method private shouldShowTos()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->showCarrierTos()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 447
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 448
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    .line 453
    :goto_27
    return v0

    :cond_28
    move v0, v2

    .line 448
    goto :goto_27

    :cond_2a
    move v0, v1

    .line 451
    goto :goto_27

    :cond_2c
    move v0, v2

    .line 453
    goto :goto_27
.end method

.method private showEditAddressFragment(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v0, v1, :cond_18

    .line 500
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    :goto_d
    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)V

    .line 505
    :goto_10
    return-void

    .line 500
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_d

    .line 503
    :cond_18
    invoke-virtual {p0, v2, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)V

    goto :goto_10
.end method

.method private showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "finskyLogString"
    .parameter "logString"
    .parameter "message"

    .prologue
    .line 532
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showErrorDialog(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 526
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    .line 527
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    .line 528
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private showGenericError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "finskyLogString"
    .parameter "logString"

    .prologue
    .line 544
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private showNetworkError(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 538
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Lcom/android/volley/VolleyError;)V

    .line 540
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showErrorDialog(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    .line 550
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 551
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_15

    .line 552
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    .line 554
    :cond_15
    return-void
.end method

.method private showTosFragment()V
    .registers 4

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->shouldShowTos()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 459
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_14

    .line 460
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 470
    .local v0, type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_e
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showAddFragment(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    .line 471
    return-void

    .line 463
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_1d

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_1c
    goto :goto_e

    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_1d
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_1c

    .line 467
    :cond_20
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_29

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_28
    goto :goto_e

    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_29
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_28
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    if-ne v0, v1, :cond_d

    .line 241
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideEditFragment()V

    .line 242
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->onEditCancel()V

    .line 246
    :goto_c
    return-void

    .line 244
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    goto :goto_c
.end method

.method public canGoBack()Z
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 250
    const-string v0, "addDcbCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 251
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    .line 252
    return-void
.end method

.method initParams()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    if-nez v1, :cond_1f

    .line 224
    :cond_9
    const-string v1, "Cannot run this BillingFlow since params are null."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->fail(Ljava/lang/String;)V

    .line 230
    :goto_1e
    return v0

    .line 229
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V

    .line 230
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    .line 669
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_23

    .line 670
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 671
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showProgress()V

    .line 672
    const-string v0, "addDcbConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 673
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 684
    :goto_22
    return-void

    .line 674
    :cond_23
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_2b

    .line 675
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    goto :goto_22

    .line 676
    :cond_2b
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_33

    .line 677
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    goto :goto_22

    .line 678
    :cond_33
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->NETWORK_FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_4a

    .line 679
    const-string v0, "Network Connection error while loading Tos."

    const-string v1, "NETWORK"

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f0700f7

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 682
    :cond_4a
    const-string v0, "Invalid error code."

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideEditFragment()V

    .line 712
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    if-ne p1, v0, :cond_b

    .line 713
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->onEditSuccess(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    .line 719
    :goto_a
    return-void

    .line 714
    :cond_b
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    if-ne p1, v0, :cond_13

    .line 715
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->onEditCancel()V

    goto :goto_a

    .line 717
    :cond_13
    const-string v0, "Invalid error code."

    const-string v1, "addDcbError"

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onErrorDismiss()V
    .registers 2

    .prologue
    .line 728
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 729
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    .line 730
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showNetworkError(Lcom/android/volley/VolleyError;)V

    .line 724
    return-void
.end method

.method performNext()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 352
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateCarrierBillingFlow$State:[I

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c2

    .line 409
    const-string v1, "Invalid Dcb state."

    const-string v2, "UNKNOWN"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_16
    return-void

    .line 356
    :pswitch_17
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 357
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->shouldShowTos()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_32

    .line 358
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 359
    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_16

    .line 361
    :cond_32
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_40

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    :goto_3a
    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 363
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showTosFragment()V

    goto :goto_16

    .line 361
    :cond_40
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    goto :goto_3a

    .line 367
    :pswitch_43
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_51

    .line 368
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 369
    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_16

    .line 371
    :cond_51
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 372
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showTosFragment()V

    goto :goto_16

    .line 376
    :pswitch_59
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne v1, v2, :cond_67

    .line 377
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 378
    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_16

    .line 380
    :cond_67
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 381
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showProgress()V

    .line 382
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_16

    .line 386
    :pswitch_72
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 387
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showTosFragment()V

    goto :goto_16

    .line 390
    :pswitch_7a
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v1

    if-nez v1, :cond_91

    .line 391
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 392
    const-string v1, "addDcbSuccess"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_16

    .line 394
    :cond_91
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 395
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_16

    .line 397
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getRetriableErrorList()Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    .local v0, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 399
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 400
    const-string v1, "INVALID_INPUT"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto/16 :goto_16

    .line 403
    :cond_b8
    const-string v1, "Could not add carrier billing instrument."

    const-string v2, "UNKNOWN"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 352
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_43
        :pswitch_59
        :pswitch_72
        :pswitch_7a
        :pswitch_17
    .end packed-switch
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .registers 7
    .parameter "authToken"

    .prologue
    .line 566
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 567
    .local v1, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->createCarrierBillingInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    .line 568
    .local v0, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 570
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$3;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    invoke-interface {v2, v1, p1, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 587
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->initParams()Z

    move-result v1

    if-nez v1, :cond_a

    .line 267
    :goto_9
    return-void

    .line 260
    :cond_a
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 261
    .local v0, dcbAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->saveState(Landroid/os/Bundle;)V

    .line 320
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "add_fragment_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragmentShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    const-string v0, "saving_dialog_fragment"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_29

    .line 324
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 326
    :cond_29
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_34

    .line 327
    const-string v0, "user_provided_address"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 329
    :cond_34
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateCarrierBillingFlow$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 345
    :cond_41
    :goto_41
    return-void

    .line 332
    :pswitch_42
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_41

    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_41

    .line 337
    :pswitch_50
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_41

    .line 338
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_41

    .line 329
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_42
        :pswitch_50
    .end packed-switch
.end method

.method showAddFragment(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 11
    .parameter "type"
    .parameter "editedAddress"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v6, :cond_e

    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v6, :cond_e

    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-ne p1, v6, :cond_53

    :cond_e
    move v2, v5

    .line 477
    .local v2, hasTos:Z
    :goto_f
    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v6, :cond_17

    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-ne p1, v6, :cond_55

    :cond_17
    move v0, v5

    .line 479
    .local v0, hasAddressSnippet:Z
    :goto_18
    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v6, :cond_20

    sget-object v6, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-ne p1, v6, :cond_57

    :cond_20
    move v1, v5

    .line 480
    .local v1, hasFullAddress:Z
    :goto_21
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logTosAndAddress(ZZZ)V

    .line 481
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideTosFragment()V

    .line 482
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    .line 483
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, tosUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, p2, v6, v3, v7}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 486
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v6, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    .line 487
    iput-boolean v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragmentShown:Z

    .line 488
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 489
    return-void

    .end local v0           #hasAddressSnippet:Z
    .end local v1           #hasFullAddress:Z
    .end local v2           #hasTos:Z
    .end local v3           #tosUrl:Ljava/lang/String;
    :cond_53
    move v2, v4

    .line 475
    goto :goto_f

    .restart local v2       #hasTos:Z
    :cond_55
    move v0, v4

    .line 477
    goto :goto_18

    .restart local v0       #hasAddressSnippet:Z
    :cond_57
    move v1, v4

    .line 479
    goto :goto_21
.end method

.method showEditFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)V
    .registers 8
    .parameter "prefillAddress"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 509
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideTosFragment()V

    .line 510
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    :goto_7
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logEditAddress(Z)V

    .line 511
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 512
    .local v0, uiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 514
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    .line 515
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 516
    return-void

    .end local v0           #uiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    :cond_22
    move v1, v2

    .line 510
    goto :goto_7
.end method

.method public start()V
    .registers 3

    .prologue
    .line 208
    const-string v1, "addDcb"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->initParams()Z

    move-result v1

    if-nez v1, :cond_c

    .line 219
    :goto_b
    return-void

    .line 212
    :cond_c
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 213
    .local v0, dcbAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_b
.end method
