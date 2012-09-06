.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CompleteDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

.field private mAssociationRequired:Z

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mDcbTosAcceptanceRequired:Z

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mInstrument:Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

.field private mInstrumentUpdateRequired:Z

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mPassword:Ljava/lang/String;

.field private mPasswordForgotUrl:Ljava/lang/String;

.field private mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

.field private mPasswordPrompt:Ljava/lang/String;

.field private final mPasswordRequired:Z

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

.field private mTosNumber:I

.field private mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V
    .registers 17
    .parameter "billingFlowContext"
    .parameter "dfeApi"
    .parameter "listener"
    .parameter "analytics"
    .parameter "parameters"
    .parameter "instrument"
    .parameter "authenticator"

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V
    .registers 11
    .parameter "billingFlowContext"
    .parameter "dfeApi"
    .parameter "listener"
    .parameter "dcbStorage"
    .parameter "analytics"
    .parameter "parameters"
    .parameter "instrument"
    .parameter "authenticator"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p3, p8, p6}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 88
    iput v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    .line 114
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 115
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 116
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 118
    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 119
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 120
    iput-object p7, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

    .line 121
    if-eqz p6, :cond_57

    .line 122
    const-string v0, "referrer_url"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerUrl:Ljava/lang/String;

    .line 123
    const-string v0, "referrer_list_cookie"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    .line 124
    const-string v0, "password_required"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    .line 125
    const-string v0, "password_prompt"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordPrompt:Ljava/lang/String;

    .line 126
    const-string v0, "password_forgor_url"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordForgotUrl:Ljava/lang/String;

    .line 127
    const-string v0, "association_required"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    .line 128
    const-string v0, "dcb_tos_required"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    .line 134
    :goto_56
    return-void

    .line 131
    :cond_57
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    .line 132
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    goto :goto_56
.end method

.method static synthetic access$002(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object p1
.end method

.method private dissmissPasswordFragment()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_c

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->dismiss()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 208
    :cond_c
    return-void
.end method

.method private hideVerifyAssociationDialog()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_c

    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->dismiss()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 338
    :cond_c
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private setAcceptedTos()V
    .registers 3

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    .line 397
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getDcbTosPreference()Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method private showVerifyAssociationDialog()V
    .registers 4

    .prologue
    .line 328
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->newInstance()Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 329
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    const-string v2, "verifying pin"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private startAssociation()V
    .registers 3

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->showVerifyAssociationDialog()V

    .line 322
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 324
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 325
    return-void
.end method


# virtual methods
.method createAndShowPasswordFragment()V
    .registers 4

    .prologue
    .line 304
    const-string v0, "dcbPinEntry"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordPrompt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordForgotUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    const-string v2, "PasswordDialog"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method createAndShowTosFragment(Ljava/lang/String;)V
    .registers 6
    .parameter "tosUrl"

    .prologue
    .line 313
    const-string v0, "dcbTosChanged"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 315
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TosDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 317
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    .line 318
    return-void
.end method

.method protected getDcbTosPreference()Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V
    .registers 5
    .parameter "result"
    .parameter "password"

    .prologue
    .line 343
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 344
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    .line 346
    :cond_b
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 361
    :goto_16
    return-void

    .line 348
    :pswitch_17
    const-string v0, "dcbPinEntryConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 349
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPassword:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_16

    .line 353
    :pswitch_22
    const-string v0, "dcbPinEntryCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    goto :goto_16

    .line 357
    :pswitch_2b
    const-string v0, "Getting password info failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_16

    .line 346
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_17
        :pswitch_22
        :pswitch_2b
    .end packed-switch
.end method

.method public onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_c

    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->dismiss()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 369
    :cond_c
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierTosDialogFragment$CarrierTosResultListener$TosResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 384
    :goto_17
    return-void

    .line 371
    :pswitch_18
    const-string v0, "dcbTosChangedConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->setAcceptedTos()V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_17

    .line 376
    :pswitch_24
    const-string v0, "Showing TOS to user failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_17

    .line 380
    :pswitch_3b
    const-string v0, "dcbTosChangedCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    goto :goto_17

    .line 369
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_18
        :pswitch_24
        :pswitch_3b
    .end packed-switch
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    .line 403
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->hideVerifyAssociationDialog()V

    .line 404
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 409
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->hideVerifyAssociationDialog()V

    .line 410
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v1

    if-ne v1, v3, :cond_13

    .line 411
    iput-boolean v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    .line 412
    iput-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    .line 413
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    .line 431
    :goto_12
    return-void

    .line 416
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    .line 417
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, error:Ljava/lang/String;
    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_12

    .line 418
    .end local v0           #error:Ljava/lang/String;
    :cond_29
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_62

    .line 419
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 420
    :cond_40
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #error:Ljava/lang/String;
    goto :goto_25

    .line 422
    .end local v0           #error:Ljava/lang/String;
    :cond_4c
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070076

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #error:Ljava/lang/String;
    goto :goto_25

    .line 427
    .end local v0           #error:Ljava/lang/String;
    :cond_62
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #error:Ljava/lang/String;
    goto :goto_25
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method public onVerifyCancel()V
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_9

    .line 389
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 391
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    .line 392
    return-void
.end method

.method protected performNext()V
    .registers 5

    .prologue
    const v3, 0x7f07005f

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_1a

    .line 157
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    if-eqz v0, :cond_12

    .line 158
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->startAssociation()V

    .line 201
    :goto_11
    return-void

    .line 160
    :cond_12
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_11

    .line 163
    :cond_1a
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_4c

    .line 164
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    if-eqz v0, :cond_30

    .line 165
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowTosFragment(Ljava/lang/String;)V

    goto :goto_11

    .line 166
    :cond_30
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    if-eqz v0, :cond_3c

    .line 167
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->updateCarrierBillingInstrument()V

    goto :goto_11

    .line 169
    :cond_3c
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_48

    .line 170
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    goto :goto_11

    .line 173
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_11

    .line 175
    :cond_4c
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_a8

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_6e

    .line 178
    const-string v0, "Failed to get update instrument response."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_11

    .line 180
    :cond_6e
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v0

    if-nez v0, :cond_86

    .line 181
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_82

    .line 182
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    goto :goto_11

    .line 185
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_11

    .line 187
    :cond_86
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_11

    .line 190
    :cond_94
    const-string v0, "Updating DCB instrument failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 193
    :cond_a8
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_bd

    .line 195
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->setPassphrase(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto/16 :goto_11

    .line 199
    :cond_bd
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .registers 8
    .parameter "authToken"

    .prologue
    .line 219
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 220
    .local v0, carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getDcbTosPreference()Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, dcbTosVersion:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 222
    new-instance v4, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 225
    :cond_21
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 226
    .local v1, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 227
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 229
    new-instance v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 230
    .local v3, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    new-instance v4, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 231
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;)V

    invoke-interface {v4, v3, p1, v5, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 241
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-eq v0, v1, :cond_c

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 248
    :cond_c
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 249
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-nez v0, :cond_36

    .line 250
    const-string v0, "Cannot run this BillingFlow since params are null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    .line 253
    :cond_36
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_47

    .line 256
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_a5

    .line 257
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 258
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    .line 263
    :cond_47
    :goto_47
    const-string v0, "tos_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    .line 268
    :cond_60
    const-string v0, "password_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    .line 273
    :cond_79
    const-string v0, "verify_association_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_association_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 276
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 277
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 281
    :cond_a4
    return-void

    .line 260
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_47
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 285
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_18

    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 289
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_25

    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 292
    :cond_25
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_40

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_association_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_40

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->saveState(Landroid/os/Bundle;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 300
    :cond_40
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-nez v0, :cond_1f

    .line 143
    const-string v0, "Cannot run this BillingFlow since params are null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    .line 148
    :goto_1e
    return-void

    .line 146
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_1e
.end method

.method updateCarrierBillingInstrument()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getAuthTokenAndContinue(Z)V

    .line 215
    return-void
.end method
