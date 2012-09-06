.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CreateDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$3;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$associationListener;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

.field private mAddFragmentShown:Z

.field private mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

.field private mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mReferrer:Ljava/lang/String;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mRetriableErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field private mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

.field private mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;


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
    .line 131
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    .line 133
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

    .line 139
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 105
    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 106
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 110
    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    .line 116
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 141
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 142
    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 143
    iput-object p6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 144
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 145
    invoke-interface {p5}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    .line 146
    sget-object v2, Lcom/google/android/finsky/config/G;->enableDcbReducedBillingAddress:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 149
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    if-eqz v1, :cond_54

    .line 151
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    .line 153
    .local v0, carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    if-eqz v0, :cond_54

    .line 154
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v2

    if-eqz v2, :cond_7b

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :goto_52
    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 159
    .end local v0           #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v1           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_54
    if-eqz p7, :cond_7a

    .line 160
    const-string v2, "referrer_url"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrer:Ljava/lang/String;

    .line 161
    const-string v2, "referrer_list_cookie"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    .line 162
    const-string v2, "ui_mode"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 163
    const-string v2, "ui_mode"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 169
    :cond_7a
    :goto_7a
    return-void

    .line 154
    .restart local v0       #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .restart local v1       #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_7b
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    goto :goto_52

    .line 166
    .end local v0           #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v1           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_7e
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    goto :goto_7a
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->continueResume(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideVerifyAssociationDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    return-object v0
.end method

.method private continueResume(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-eq v0, v1, :cond_c

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 244
    :cond_c
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_21

    .line 248
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->finish()V

    .line 250
    :cond_21
    const-string v0, "add_fragment_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    .line 251
    const-string v0, "user_provided_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 252
    const-string v0, "error_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    .line 257
    :cond_4c
    const-string v0, "add_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    .line 262
    :cond_65
    const-string v0, "edit_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    .line 267
    :cond_7e
    const-string v0, "verify_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 268
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$associationListener;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$associationListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    invoke-interface {v0, p1, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 275
    :cond_ae
    return-void
.end method

.method private createCarrierBillingInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 8

    .prologue
    .line 411
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 412
    .local v1, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 414
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 415
    .local v0, carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, dcbTosVersion:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 418
    new-instance v5, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 420
    :cond_39
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedPiiTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 422
    .local v4, piiTosVersion:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 423
    new-instance v5, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 425
    :cond_5f
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 426
    new-instance v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 427
    .local v3, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v5, :cond_7a

    .line 428
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 433
    :goto_76
    invoke-virtual {v3, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 434
    return-object v3

    .line 431
    :cond_7a
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_76
.end method

.method private hideEditFragment()V
    .registers 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_f

    .line 513
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 516
    :cond_f
    return-void
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 559
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_f

    .line 560
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    .line 562
    :cond_f
    return-void
.end method

.method private hideTosFragment()V
    .registers 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_f

    .line 495
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 498
    :cond_f
    return-void
.end method

.method private hideVerifyAssociationDialog()V
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_c

    .line 526
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->dismiss()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 529
    :cond_c
    return-void
.end method

.method private isAssociationRequired()Z
    .registers 2

    .prologue
    .line 407
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isSubscriberAddressValid(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Z
    .registers 6
    .parameter "subscriberAddress"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 394
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    move v0, v1

    .line 403
    :cond_19
    :goto_19
    return v0

    .line 399
    :cond_1a
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v2, v3, :cond_19

    .line 400
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_34
    move v0, v1

    goto :goto_19
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private logError(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 176
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 4
    .parameter "logError"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDcbError?error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 532
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    .line 533
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    .line 534
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 552
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_12

    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    .line 555
    :cond_12
    return-void
.end method

.method private showVerifyAssociationDialog()V
    .registers 4

    .prologue
    .line 519
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->newInstance()Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 521
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    const-string v2, "verifying pin"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 522
    return-void
.end method


# virtual methods
.method public back()V
    .registers 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    .line 217
    return-void
.end method

.method public canGoBack()Z
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 221
    const-string v0, "addDcbCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 222
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    .line 223
    return-void
.end method

.method initParams()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-nez v1, :cond_1f

    .line 201
    :cond_9
    const-string v1, "Cannot run this BillingFlow since params are null."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->fail(Ljava/lang/String;)V

    .line 206
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    .line 574
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideTosFragment()V

    .line 575
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_15

    .line 576
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->setAcceptedTos()V

    .line 577
    const-string v0, "addDcbConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 589
    :goto_14
    return-void

    .line 579
    :cond_15
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_1d

    .line 580
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    goto :goto_14

    .line 581
    :cond_1d
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_25

    .line 582
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_14

    .line 583
    :cond_25
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->NETWORK_FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_3c

    .line 584
    const-string v0, "Network Connection error while loading Tos."

    const-string v1, "NETWORK"

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f0700f7

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 587
    :cond_3c
    const-string v0, "Invalid error code."

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 5
    .parameter "result"
    .parameter "returnAddress"

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideEditFragment()V

    .line 594
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    if-ne p1, v0, :cond_12

    .line 595
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 596
    const-string v0, "addDcbEditConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 604
    :goto_11
    return-void

    .line 598
    :cond_12
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    if-ne p1, v0, :cond_1f

    .line 599
    const-string v0, "addDcbEditCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_11

    .line 602
    :cond_1f
    const-string v0, "Invalid error code."

    const-string v1, "addDcbError"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public onErrorDismiss()V
    .registers 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    .line 618
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideProgress()V

    .line 661
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Lcom/android/volley/VolleyError;)V

    .line 663
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showErrorDialog(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 567
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideProgress()V

    .line 568
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 569
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public onVerifyCancel()V
    .registers 2

    .prologue
    .line 608
    const-string v0, "addDcbCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_e

    .line 610
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 612
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    .line 613
    return-void
.end method

.method performNext()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 308
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$3;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateDcb3Flow$State:[I

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_128

    .line 386
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :pswitch_29
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 311
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    .local v0, piiUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 313
    invoke-virtual {p0, v3, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v0           #piiUrl:Ljava/lang/String;
    :goto_3e
    return-void

    .line 315
    .restart local v0       #piiUrl:Ljava/lang/String;
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    goto :goto_3e

    .line 319
    .end local v0           #piiUrl:Ljava/lang/String;
    :pswitch_43
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->isAssociationRequired()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 320
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ASSOCIATING_PIN:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 321
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->startAssociation()V

    goto :goto_3e

    .line 323
    :cond_51
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 324
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_3e

    .line 328
    :pswitch_59
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->isSubscriberAddressValid(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 329
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 330
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_3e

    .line 333
    :cond_69
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 334
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 337
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getSubscriberInfo(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 343
    :cond_8b
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 349
    :pswitch_9d
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 350
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 354
    :pswitch_af
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne v1, v2, :cond_bd

    .line 355
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 356
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_3e

    .line 358
    :cond_bd
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 359
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showProgress()V

    .line 360
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_3e

    .line 364
    :pswitch_ca
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v1

    if-nez v1, :cond_e2

    .line 365
    const-string v1, "addDcbSuccess"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 366
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 367
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto/16 :goto_3e

    .line 368
    :cond_e2
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 369
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_3e

    .line 370
    :cond_f0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->GetRetriableErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_108

    .line 372
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 373
    const-string v1, "INVALID_INPUT"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mRetriableErrorList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto/16 :goto_3e

    .line 376
    :cond_108
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 377
    const-string v1, "Update carrier billing instrument had error"

    const-string v2, "UNKNOWN"

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 380
    :cond_11f
    const-string v1, "Could not add carrier billing instrument."

    const-string v2, "UNKNOWN"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 308
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_29
        :pswitch_43
        :pswitch_59
        :pswitch_9d
        :pswitch_af
        :pswitch_ca
    .end packed-switch
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"

    .prologue
    .line 439
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 440
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->createCarrierBillingInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 441
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 442
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->initParams()Z

    move-result v1

    if-nez v1, :cond_a

    .line 238
    :goto_9
    return-void

    .line 231
    :cond_a
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 232
    .local v0, dcbAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->saveState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "add_fragment_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_22

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 285
    :cond_22
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_2f

    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 288
    :cond_2f
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_3c

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 291
    :cond_3c
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_57

    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_57

    .line 294
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->saveState(Landroid/os/Bundle;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 298
    :cond_57
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_62

    .line 299
    const-string v0, "user_provided_address"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 301
    :cond_62
    return-void
.end method

.method setAcceptedTos()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_1e

    .line 455
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedPiiTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 463
    :cond_1d
    :goto_1d
    return-void

    .line 458
    :cond_1e
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_1d

    .line 459
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method showEditAddressFragment(Ljava/util/ArrayList;)V
    .registers 8
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
    .line 502
    .local p1, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 503
    .local v1, uiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v2, :cond_1f

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 505
    .local v0, prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :goto_8
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v2, v0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 507
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    .line 508
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 509
    return-void

    .line 503
    .end local v0           #prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :cond_1f
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getSubscriberInfo(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_8
.end method

.method showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "finskyLogString"
    .parameter "logString"
    .parameter "message"

    .prologue
    .line 539
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showErrorDialog(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method showGenericError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "finskyLogString"
    .parameter "logString"

    .prologue
    .line 546
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "editedAddress"
    .parameter "url"
    .parameter "snippet"

    .prologue
    const/4 v4, 0x0

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 469
    if-eqz p1, :cond_24

    .line 470
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 486
    .local v0, type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_b
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {v0, p1, v1, p2, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 488
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    .line 490
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 491
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_23
    return-void

    .line 471
    :cond_24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 472
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_b

    .line 474
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_2d
    const-string v1, "showTosFragment has no address and tos. wrong fragment."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    .line 478
    :cond_35
    if-eqz p1, :cond_3a

    .line 479
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_b

    .line 480
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_3a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 481
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_b

    .line 483
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_43
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_b
.end method

.method public start()V
    .registers 3

    .prologue
    .line 185
    const-string v1, "addDcb"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->initParams()Z

    move-result v1

    if-nez v1, :cond_c

    .line 196
    :goto_b
    return-void

    .line 189
    :cond_c
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 190
    .local v0, dcbAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method startAssociation()V
    .registers 3

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showVerifyAssociationDialog()V

    .line 447
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$associationListener;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$associationListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 450
    return-void
.end method
