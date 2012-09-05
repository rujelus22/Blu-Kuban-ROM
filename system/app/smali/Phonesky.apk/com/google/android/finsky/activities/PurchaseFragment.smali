.class public Lcom/google/android/finsky/activities/PurchaseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;
.implements Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;
.implements Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountNameView:Landroid/widget/TextView;

.field private mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

.field private mAccountSeparator:Landroid/view/View;

.field private mAcquireButton:Landroid/widget/Button;

.field private mAddInstrumentButton:Landroid/widget/Button;

.field private mAddInstrumentScreenShown:Z

.field private mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

.field private mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

.field private mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDynamicButtonContainer:Z

.field private mExternalReferrer:Ljava/lang/String;

.field private mExtraDetailsContainer:Landroid/view/ViewGroup;

.field private mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mFinishedWithSuccess:Z

.field private mFooterContainer:Landroid/view/ViewGroup;

.field private mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mIsDirectPurchase:Z

.field private mIsRetainedInstance:Z

.field private mLastSelectedInstrumentId:Ljava/lang/String;

.field private mLeadingStrip:Landroid/view/View;

.field private mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

.field private mOfferType:I

.field private mPriceTable:Landroid/widget/TableLayout;

.field private mPriceTableSummaryRow:Landroid/view/ViewGroup;

.field private mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

.field private mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

.field private mPurchaseRow:Landroid/view/View;

.field private mPurchaseRowFooter:Landroid/view/View;

.field private mReferrer:Ljava/lang/String;

.field private mReferrerCookie:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectedAddInstrumentFamily:I

.field private mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mViewStates:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 125
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$1;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    .line 227
    new-instance v0, Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/InstrumentFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 274
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/BillingFlow;)Lcom/google/android/finsky/billing/BillingFlow;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcbProvisioning()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startOrResumePurchase()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    return-void
.end method

.method static synthetic access$2002(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onUpdateAddressResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->beginCheckout()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/PurchaseFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    return-object v0
.end method

.method private attemptDocLoadFromPurchaseDocId()V
    .registers 5

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "docId_to_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, purchaseId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/finsky/api/DfeApi;->createDetailsUrlFromId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 735
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$8;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$8;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 746
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$9;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$9;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 752
    return-void
.end method

.method private beginCheckout()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 785
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_28

    .line 786
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 787
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 789
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyPreferences;->getCurrentPasscode()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 791
    const-string v0, "Purchase Lock set, but no PIN code set.  Allowing purchase."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    :cond_28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V

    .line 802
    :goto_2b
    return-void

    .line 794
    :cond_2c
    const v2, 0x7f07018f

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 796
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2b
.end method

.method private buildCompleteAnalyticsExtra()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1361
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v0, :cond_f

    .line 1362
    const-string v0, "mSelectedInstrument cannot be null here."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1363
    const-string v0, ""

    .line 1374
    :goto_e
    return-object v0

    .line 1365
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v3

    .line 1366
    const/4 v0, 0x0

    .line 1367
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    .line 1368
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1370
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move-object v1, v0

    .line 1372
    :goto_37
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1373
    :goto_3e
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v0

    .line 1374
    :goto_44
    const-string v4, "instrumentFamily=%d&priceCurrency=%s&priceMicros=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1372
    :cond_5e
    const-string v0, ""

    move-object v2, v0

    goto :goto_3e

    .line 1373
    :cond_62
    const-wide/16 v0, -0x1

    goto :goto_44

    :cond_65
    move-object v1, v0

    goto :goto_37
.end method

.method private buildCompleteFlowParameters()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 1304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1305
    const-string v1, "referrer_url"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v1, "referrer_list_cookie"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    return-object v0
.end method

.method private buildViewAnalyticsExtra()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1321
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_10

    .line 1322
    const-string v0, "mCheckoutPurchase cannot be null here."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1323
    const-string v0, ""

    .line 1354
    :goto_f
    return-object v0

    .line 1326
    :cond_10
    const/4 v0, 0x0

    .line 1327
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    .line 1328
    if-eqz v2, :cond_72

    .line 1329
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v1

    .line 1330
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    .line 1331
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1333
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    :cond_3b
    move v2, v1

    move-object v1, v0

    .line 1343
    :goto_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1345
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstruments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_51
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/Instrument;

    .line 1346
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_96

    move-object v3, v4

    .line 1347
    :goto_64
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 1336
    :cond_72
    const/4 v1, -0x1

    .line 1337
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v2

    .line 1338
    if-eqz v2, :cond_ef

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    if-eqz v3, :cond_ef

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 1340
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    goto :goto_3d

    :cond_96
    move-object v3, v5

    .line 1346
    goto :goto_64

    .line 1349
    :cond_98
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    move v0, v6

    .line 1350
    :goto_a5
    const-string v3, ","

    iget-object v8, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 1352
    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    .line 1353
    :goto_b7
    if-eqz v1, :cond_ec

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v8

    .line 1354
    :goto_bd
    const-string v1, "defaultInstrumentFamily=%d&hasTos=%s&priceCurrency=%s&priceMicros=%d&availableFamilies=%s&invalidFamilies=%s&eligibleFamilies=%s"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v6

    const/4 v0, 0x2

    aput-object v3, v11, v0

    const/4 v0, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_e7
    move v0, v7

    .line 1349
    goto :goto_a5

    .line 1352
    :cond_e9
    const-string v3, ""

    goto :goto_b7

    .line 1353
    :cond_ec
    const-wide/16 v8, -0x1

    goto :goto_bd

    :cond_ef
    move v2, v1

    move-object v1, v0

    goto/16 :goto_3d
.end method

.method private completeCheckoutPurchase()V
    .registers 5

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completePurchase?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteAnalyticsExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getRiskHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->complete(Lcom/google/android/finsky/billing/Instrument;Ljava/lang/String;)V

    .line 1318
    :cond_4b
    return-void
.end method

.method private continueCheckout()V
    .registers 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_8

    .line 835
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->runCompleteFlowAndCompleteCheckoutPurchase()V

    .line 839
    :goto_7
    return-void

    .line 837
    :cond_8
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueFreeCheckout()V

    goto :goto_7
.end method

.method private continueCheckoutSizeCheck()V
    .registers 6

    .prologue
    .line 808
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/Installer;->getMaxBytesOverMobile()J

    move-result-wide v1

    .line 813
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v3, :cond_49

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_49

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-ltz v1, :cond_49

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/Installer;->isMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 818
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 819
    const-string v1, "wifi_download_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 828
    :goto_3e
    return-void

    .line 822
    :cond_3f
    invoke-static {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    move-result-object v1

    .line 824
    const-string v2, "wifi_download_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3e

    .line 826
    :cond_49
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckout()V

    goto :goto_3e
.end method

.method private continueFreeCheckout()V
    .registers 6

    .prologue
    .line 842
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmFreeDownload?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onPurchase(ILjava/lang/String;)V

    .line 845
    return-void
.end method

.method private documentSuccessfullyFound()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->switchToData()V

    .line 704
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    .line 705
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    .line 706
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->setVisibility(I)V

    .line 710
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDataChanged()V

    .line 711
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_73

    .line 712
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_6c

    .line 713
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purchase?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_6c
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 717
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeBilling()V

    .line 725
    :goto_72
    return-void

    .line 719
    :cond_73
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_9f

    .line 720
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeDownload?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_9f
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setupFreeUi()V

    goto :goto_72
.end method

.method private fillInTosses()V
    .registers 9

    .prologue
    .line 912
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0035

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 914
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08015e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 915
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 916
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 917
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 918
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->getShorthand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 919
    const v2, 0x7f0400ad

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 920
    const v2, 0x7f080167

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 921
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->getAcceptance()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 922
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 923
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 924
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 925
    const v1, 0x7f080168

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 926
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 928
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 930
    :cond_72
    return-void
.end method

.method private finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1429
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_e

    .line 1430
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 1431
    iput-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1433
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_1c

    .line 1434
    const-string v0, "Ignoring second error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1448
    :goto_1b
    return-void

    .line 1437
    :cond_1c
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1438
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 1439
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    if-eqz v0, :cond_2a

    .line 1440
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;->onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_1b

    .line 1442
    :cond_2a
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 1443
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1b

    .line 1445
    :cond_36
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    goto :goto_1b
.end method

.method private finishWithSuccess()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1451
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_c

    .line 1452
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 1453
    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1455
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-eqz v0, :cond_11

    .line 1471
    :cond_10
    :goto_10
    return-void

    .line 1458
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 1459
    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1460
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    if-eqz v0, :cond_20

    .line 1461
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;->onSuccess()V

    goto :goto_10

    .line 1463
    :cond_20
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 1464
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsDirectPurchase:Z

    if-eqz v0, :cond_10

    .line 1465
    const-string v0, "Navigating to the details page."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1466
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1468
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_10
.end method

.method private initializeBilling()V
    .registers 5

    .prologue
    .line 634
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v2, :cond_5

    .line 649
    :goto_4
    return-void

    .line 639
    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v3, 0x7f070069

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 640
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 641
    .local v1, carrierBillingAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$5;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$5;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    .line 647
    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 648
    .local v0, billingCountriesAction:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private initializeDcbProvisioning()V
    .registers 3

    .prologue
    .line 663
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    .line 664
    .local v0, carrierProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$7;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method private isEveryTosAccepted()Z
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isFreeUi()Z
    .registers 3

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isInstrumentRequired()Z
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static newIabInstance(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .registers 10
    .parameter "account"
    .parameter "sku"
    .parameter "iabParameters"

    .prologue
    const/4 v2, 0x0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "details?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v6

    .line 320
    .local v6, fragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 321
    const-string v0, "iab_parameters"

    invoke-virtual {v6, v0, p2}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 322
    const-string v0, "iab_account"

    invoke-virtual {v6, v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 323
    return-object v6
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .registers 13
    .parameter "detailsUrl"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "referrerCookie"
    .parameter "externalReferrer"
    .parameter "docIdToPurchase"

    .prologue
    .line 289
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .registers 9
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "referrerCookie"
    .parameter "isDirectLinkPurchase"
    .parameter "externalReferrer"
    .parameter "docIdToPurchase"

    .prologue
    .line 301
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;-><init>()V

    .line 302
    .local v0, purchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->setTheme(I)V

    .line 303
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 304
    const-string v1, "offer_type"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;I)V

    .line 305
    const-string v1, "referrer_url"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Z)V

    .line 308
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v0
.end method

.method private onAddInstrumentResult(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1067
    if-nez p1, :cond_7

    .line 1070
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentFinished(Z)V

    .line 1082
    :goto_6
    return-void

    .line 1071
    :cond_7
    const-string v0, "billing_flow_error"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1073
    const-string v0, "billing_flow_error_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentError(Ljava/lang/String;)V

    goto :goto_6

    .line 1077
    :cond_19
    const-string v0, "billing_flow_canceled"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1080
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentFinished(Z)V

    goto :goto_6
.end method

.method private onPurchase(ILjava/lang/String;)V
    .registers 11
    .parameter "offerId"
    .parameter "statusUrl"

    .prologue
    .line 1406
    if-eqz p2, :cond_23

    .line 1409
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->getPaidPurchaseStatus(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)V

    .line 1418
    :goto_1f
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithSuccess()V

    .line 1419
    return-void

    .line 1415
    :cond_23
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;)V

    goto :goto_1f
.end method

.method private onPurchase(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .registers 10
    .parameter "response"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->handlePurchaseStatus(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)V

    .line 1402
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithSuccess()V

    .line 1403
    return-void
.end method

.method private onUpdateAddressResult(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1085
    if-eqz p1, :cond_1b

    const-string v0, "billing_flow_error"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1088
    const-string v0, "Update Address error: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "billing_flow_error_message"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1092
    return-void
.end method

.method private restoreSelectedInstrumentAndBillingFlow()V
    .registers 4

    .prologue
    .line 868
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    if-eqz v1, :cond_26

    .line 869
    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 870
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectAddInstrument(I)V

    .line 874
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    if-eqz v1, :cond_19

    .line 875
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->resumeBillingFlowFromBundle(Landroid/os/Bundle;)V

    .line 885
    :cond_19
    :goto_19
    return-void

    .line 871
    :cond_1a
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 872
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    goto :goto_10

    .line 877
    :cond_26
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_2e

    .line 878
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    goto :goto_19

    .line 879
    :cond_2e
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "selected_instrument_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 880
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "selected_instrument_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, instrumentId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 882
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->resumeBillingFlowFromBundle(Landroid/os/Bundle;)V

    goto :goto_19
.end method

.method private resumeBillingFlowFromBundle(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_29

    const-string v0, "completing_billing_flow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 889
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteFlowParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/billing/Instrument;->completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 891
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_29

    .line 892
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    const-string v1, "completing_billing_flow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 896
    :cond_29
    return-void
.end method

.method private runCompleteFlowAndCompleteCheckoutPurchase()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1286
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_38

    .line 1287
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1289
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_2a

    .line 1290
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteFlowParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/billing/Instrument;->completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1293
    :cond_2a
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_34

    .line 1294
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    .line 1301
    :goto_33
    return-void

    .line 1296
    :cond_34
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    goto :goto_33

    .line 1299
    :cond_38
    const-string v0, "No instrument selected."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33
.end method

.method private saveViewStates(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->saveState(Landroid/os/Bundle;)V

    .line 1129
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->saveState(Landroid/os/Bundle;)V

    .line 1130
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_20

    .line 1133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1134
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 1135
    const-string v1, "completing_billing_flow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1138
    :cond_20
    return-void
.end method

.method private setupFooters(Lcom/google/android/finsky/billing/Instrument;)V
    .registers 8
    .parameter

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1003
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1005
    if-eqz p1, :cond_23

    .line 1006
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1008
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1009
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1010
    const v1, 0x7f0400a8

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1012
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1014
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2f

    .line 1016
    :cond_5b
    return-void
.end method

.method private setupFreeUi()V
    .registers 6

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 899
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToFreeUi()V

    .line 900
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 906
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 907
    return-void
.end method

.method private showAddInstrumentScreen(I)V
    .registers 9
    .parameter "instrumentFamily"

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    if-eqz v0, :cond_d

    .line 445
    const-string v0, "Already showing add instrument screen, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :goto_c
    return-void

    .line 448
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->createIntent(Ljava/lang/String;IILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 452
    .local v6, intent:Landroid/content/Intent;
    const/16 v0, 0x1f

    invoke-virtual {p0, v6, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c
.end method

.method private showDocumentLoadError(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter

    .prologue
    .line 760
    if-nez p1, :cond_17

    .line 761
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    :goto_b
    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    .line 766
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    .line 767
    return-void

    .line 763
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private showUpdateInstrumentScreen(Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 10
    .parameter "selectedInstrument"
    .parameter "rejectedInstrument"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 459
    .local v6, intent:Landroid/content/Intent;
    const/16 v0, 0x21

    invoke-virtual {p0, v6, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 460
    return-void
.end method

.method private startOrResumePurchase()V
    .registers 8

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 849
    .local v5, offerType:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_56

    .line 850
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    sget-object v3, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v4, v6, v3}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/CheckoutPurchase;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/google/android/finsky/billing/InstrumentFactory;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 854
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checkout_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 856
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "checkout_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 858
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->restoreSelectedInstrumentAndBillingFlow()V

    .line 863
    :goto_51
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V

    .line 865
    :cond_56
    return-void

    .line 860
    :cond_57
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setIabParameters(Lcom/google/android/finsky/billing/IabParameters;)V

    .line 861
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto :goto_51
.end method

.method private updateButtons()V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 952
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_19

    .line 953
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 971
    :goto_18
    return-void

    .line 955
    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 956
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 957
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    const v1, 0x7f07016e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 958
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isEveryTosAccepted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_18

    .line 960
    :cond_36
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v3, :cond_74

    move v0, v1

    .line 962
    :goto_45
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_76

    move v3, v1

    .line 964
    :goto_52
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    const v5, 0x7f07016d

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 965
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v5

    if-eqz v5, :cond_64

    if-eqz v3, :cond_78

    :cond_64
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isEveryTosAccepted()Z

    move-result v3

    if-eqz v3, :cond_78

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v0, :cond_78

    :goto_70
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_18

    :cond_74
    move v0, v2

    .line 960
    goto :goto_45

    :cond_76
    move v3, v2

    .line 962
    goto :goto_52

    :cond_78
    move v1, v2

    .line 965
    goto :goto_70
.end method

.method private updateSummaryAndFops()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 933
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_6

    .line 939
    :goto_5
    return-void

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 937
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->fillInTosses()V

    .line 938
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    goto :goto_5
.end method

.method private updateUiFromInstrument()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 974
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 975
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 976
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 977
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_83

    move v0, v6

    .line 979
    :goto_1e
    if-eqz v0, :cond_43

    .line 980
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 981
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setupFooters(Lcom/google/android/finsky/billing/Instrument;)V

    .line 982
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_43

    .line 983
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 986
    :cond_43
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_85

    .line 987
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 992
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v8, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v8, :cond_8b

    :goto_5f
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->bind(Landroid/support/v4/app/FragmentManager;Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;ILjava/util/List;Z)V

    .line 994
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 999
    return-void

    :cond_83
    move v0, v7

    .line 977
    goto :goto_1e

    .line 989
    :cond_85
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->showInstrumentAndPrice()V

    goto :goto_4f

    :cond_8b
    move v6, v7

    .line 992
    goto :goto_5f
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 336
    const v0, 0x7f0400a6

    return v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be handled by PurchaseFlowActivity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideProgress()V
    .registers 1

    .prologue
    .line 1266
    return-void
.end method

.method public initializeDcbParams()V
    .registers 3

    .prologue
    .line 652
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    .line 654
    .local v0, carrierParamsAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$6;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->run(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 519
    if-eqz p1, :cond_7

    .line 520
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 522
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iab_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 523
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iab_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 525
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 526
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsDirectPurchase:Z

    .line 529
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    .line 530
    if-eqz p1, :cond_7c

    .line 531
    const-string v0, "last_selected_instrument_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    .line 533
    const-string v0, "selected_instrument_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 535
    const-string v0, "add_instrument_screen_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    .line 537
    const-string v0, "suppress_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 538
    const-string v0, "finished_with_success"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 539
    const-string v0, "finished_with_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 541
    :cond_7c
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_8f

    .line 542
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 570
    :goto_85
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 571
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->rebindViews()V

    .line 573
    :cond_8e
    :goto_8e
    return-void

    .line 543
    :cond_8f
    if-eqz p1, :cond_a5

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 544
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_85

    .line 546
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->switchToLoadingImmediately()V

    .line 547
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-nez v0, :cond_b0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_b9

    .line 548
    :cond_b0
    const-string v0, "PurchaseFragment finished. Not initializing."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8e

    .line 551
    :cond_b9
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 552
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$3;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$4;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_85
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 1020
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_21

    .line 1021
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1026
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$10;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$10;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1033
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$11;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment$11;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1064
    .end local v0           #handler:Landroid/os/Handler;
    :goto_20
    return-void

    .line 1039
    :cond_21
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_2b

    if-ne p2, v2, :cond_2b

    .line 1040
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V

    goto :goto_20

    .line 1041
    :cond_2b
    const/16 v1, 0x20

    if-ne p1, v1, :cond_49

    .line 1042
    if-ne p2, v2, :cond_37

    .line 1043
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto :goto_20

    .line 1046
    :cond_37
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$12;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$12;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    .line 1053
    :cond_49
    const/16 v1, 0x21

    if-ne p1, v1, :cond_5f

    .line 1055
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$13;

    invoke-direct {v2, p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment$13;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    .line 1062
    :cond_5f
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_20
.end method

.method public onAddInstrument(IZ)V
    .registers 4
    .parameter "instrumentFamily"
    .parameter "isUserInitiatedEvent"

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 436
    iput p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 437
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 438
    if-eqz p2, :cond_d

    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V

    .line 441
    :cond_d
    return-void
.end method

.method public onAddInstrumentError(Ljava/lang/String;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1283
    return-void
.end method

.method public onAddInstrumentFinished(Z)V
    .registers 4
    .parameter "canceled"

    .prologue
    .line 1270
    if-nez p1, :cond_8

    .line 1271
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1279
    :goto_7
    return-void

    .line 1273
    :cond_8
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1274
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectAddInstrument(I)V

    goto :goto_7

    .line 1276
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "checkButton"
    .parameter "isChecked"

    .prologue
    .line 1423
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 1424
    .local v0, tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->setAcceptance(Z)V

    .line 1425
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 1426
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setRetainInstance(Z)V

    .line 332
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1096
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 1097
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    .line 1098
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->saveViewStates(Landroid/os/Bundle;)V

    .line 1099
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_1b

    .line 1100
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 1101
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 1103
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_24

    .line 1104
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->unregisterAll()V

    .line 1106
    :cond_24
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_2d

    .line 1107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->unregisterAll()V

    .line 1109
    :cond_2d
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->onDestroyView()V

    .line 1110
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    .line 1111
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 1112
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 1113
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 1114
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    .line 1115
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    .line 1116
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPriceTable:Landroid/widget/TableLayout;

    .line 1117
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    .line 1118
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    .line 1119
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 1120
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 1121
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    .line 1122
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    .line 1123
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    .line 1124
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    .line 1125
    return-void
.end method

.method public onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .registers 5
    .parameter "document"

    .prologue
    .line 676
    if-nez p1, :cond_c

    .line 677
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V

    .line 696
    :goto_b
    return-void

    .line 681
    :cond_c
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 683
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "docId_to_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, purchaseDocId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 687
    :cond_2a
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    .line 688
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V

    goto :goto_b

    .line 694
    :cond_32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->attemptDocLoadFromPurchaseDocId()V

    goto :goto_b
.end method

.method public onDownloadCancel()V
    .registers 3

    .prologue
    .line 1382
    const-string v0, "User declined Wifi Download."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    return-void
.end method

.method public onDownloadOk()V
    .registers 1

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckout()V

    .line 1395
    return-void
.end method

.method public onDownloadWifi()V
    .registers 3

    .prologue
    .line 1388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1390
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 6

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "iab_account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 345
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "iab_account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 346
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    .line 352
    :goto_28
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    .line 353
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/DfeExperiments;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;Lcom/google/android/finsky/experiments/Experiments;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 355
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-direct {v2}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    .line 357
    const v2, 0x7f08015d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPriceTable:Landroid/widget/TableLayout;

    .line 358
    const v2, 0x7f08015c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    .line 360
    const v2, 0x7f080150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ObservableScrollView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 362
    const v2, 0x7f080151

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    .line 364
    const v2, 0x7f08015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    .line 365
    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 366
    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    .line 367
    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 368
    const v2, 0x7f080158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    .line 369
    const v2, 0x7f080152

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    .line 370
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080154

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    .line 371
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080155

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    .line 373
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-nez v2, :cond_e8

    .line 374
    const v2, 0x7f080153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    .line 375
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    new-instance v3, Lcom/google/android/finsky/activities/PurchaseFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$2;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 399
    :cond_e8
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    if-eqz v2, :cond_11f

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    .line 400
    .local v0, savedState:Landroid/os/Bundle;
    :goto_ee
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/billing/InstrumentFactory;Landroid/os/Bundle;)V

    .line 401
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->init(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)V

    .line 403
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    .line 404
    return-void

    .line 348
    .end local v0           #savedState:Landroid/os/Bundle;
    .end local v1           #view:Landroid/view/View;
    :cond_10d
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 349
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    goto/16 :goto_28

    .line 399
    .restart local v1       #view:Landroid/view/View;
    :cond_11f
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    goto :goto_ee
.end method

.method public onInstrumentSelected(Lcom/google/android/finsky/billing/Instrument;)V
    .registers 3
    .parameter "instrument"

    .prologue
    .line 418
    if-eqz p1, :cond_8

    .line 419
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    .line 421
    :cond_8
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 423
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 424
    return-void
.end method

.method public onNothingSelected()V
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 430
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 431
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 582
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 583
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 584
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 586
    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_2a

    .line 587
    const-string v1, "doc"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 588
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v1, :cond_2a

    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, savedPurchase:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->saveState(Landroid/os/Bundle;)V

    .line 591
    const-string v1, "checkout_purchase"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 594
    .end local v0           #savedPurchase:Landroid/os/Bundle;
    :cond_2a
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v1, :cond_39

    .line 595
    const-string v1, "selected_instrument_id"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_39
    const-string v1, "last_selected_instrument_id"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v1, "suppress_error"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 599
    const-string v1, "add_instrument_screen_shown"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 600
    const-string v1, "finished_with_success"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    const-string v1, "finished_with_error"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 602
    const-string v1, "selected_instrument_id"

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 615
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onStart()V

    .line 616
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_f

    .line 617
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V

    .line 618
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->restoreSelectedInstrumentAndBillingFlow()V

    .line 620
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    .line 621
    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f070165

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1143
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_21

    .line 1144
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1145
    const-string v0, "Ignoring state change to %s, already finished."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1219
    :cond_20
    :goto_20
    return-void

    .line 1149
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1152
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_97

    .line 1153
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getError()Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    move-result-object v1

    .line 1154
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    .line 1155
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1157
    const-string v0, "Already handled %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    .line 1160
    :cond_49
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1161
    instance-of v2, v0, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_64

    .line 1162
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 1163
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_64

    .line 1165
    const-string v1, "Starting resolution intent."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    .line 1171
    :cond_64
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p2, v0, :cond_93

    .line 1172
    iget-object v0, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v0, v2, :cond_80

    .line 1173
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->showUpdateInstrumentScreen(Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 1216
    :cond_79
    :goto_79
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_20

    .line 1217
    iput-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    goto :goto_20

    .line 1179
    :cond_80
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1180
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-static {v0, v6, v1, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_79

    .line 1185
    :cond_93
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_79

    .line 1187
    :cond_97
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_e2

    .line 1188
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p2, v0, :cond_d5

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewPurchase?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildViewAnalyticsExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_d5
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    .line 1194
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateSummaryAndFops()V

    goto :goto_79

    .line 1195
    :cond_e2
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_12f

    .line 1196
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 1197
    const-string v0, "Have purchase status response already, finished purchase"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1198
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    .line 1199
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToFreeUi()V

    .line 1202
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onPurchase(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    goto/16 :goto_79

    .line 1204
    :cond_105
    const-string v0, "Finished purchase with ID %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getStatusUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getStatusUrl()Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "offer_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1207
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1208
    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onPurchase(ILjava/lang/String;)V

    goto/16 :goto_79

    .line 1210
    :cond_12f
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_137

    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_79

    .line 1211
    :cond_137
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_14a

    const v0, 0x7f070069

    .line 1213
    :goto_13e
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1214
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_79

    .line 1211
    :cond_14a
    const v0, 0x7f07006a

    goto :goto_13e
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_9

    .line 608
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 610
    :cond_9
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onStop()V

    .line 611
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1251
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_f

    .line 512
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 514
    :cond_f
    return-void
.end method

.method public rebindViews()V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x1

    const/4 v5, 0x0

    .line 464
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 466
    .local v11, inflater:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_9e

    .line 468
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    .line 473
    .local v9, backend:I
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-eqz v0, :cond_9f

    .line 474
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 475
    .local v13, thumbnail:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getDetailsIconWidth(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 485
    .end local v13           #thumbnail:Landroid/view/View;
    :goto_30
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 489
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_71

    .line 490
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;I)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 492
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    move-object v4, p0

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_71
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    new-array v2, v14, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->rebindActionBar()V

    .line 501
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v10

    .line 503
    .local v10, backendHintColor:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 504
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 506
    .end local v9           #backend:I
    .end local v10           #backendHintColor:I
    :cond_9e
    return-void

    .line 478
    .restart local v9       #backend:I
    :cond_9f
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 481
    invoke-static {v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v12

    .line 482
    .local v12, summaryLayoutId:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v11, v12, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_30
.end method

.method protected requestData()V
    .registers 1

    .prologue
    .line 626
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    .line 414
    return-void
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .registers 6
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1230
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1231
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_15

    .line 1232
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1234
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1235
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1236
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be handled by PurchaseFlowActivity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showProgress(I)V
    .registers 2
    .parameter "messageId"

    .prologue
    .line 1261
    return-void
.end method
