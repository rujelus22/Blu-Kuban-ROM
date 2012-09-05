.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CarrierTosDialogFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
    }
.end annotation


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

.field private mTosUrl:Ljava/lang/String;

.field private mTosVersion:Ljava/lang/String;

.field private mTosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;)Lcom/google/android/finsky/layout/ButtonBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    return-object v0
.end method

.method private setUpTos()V
    .registers 5

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v1

    .line 76
    .local v1, provisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosVersion:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, tosUrl:Ljava/lang/String;
    const v3, 0x7f070055

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, localeReplacement:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 80
    const-string v3, "%locale%"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_25
    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosUrl:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;
    .registers 4
    .parameter "progress"
    .parameter "tosDisplayView"

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;-><init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    .line 89
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f04001e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, v:Landroid/view/View;
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setUpTos()V

    .line 45
    const v3, 0x7f080063

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 46
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 47
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v4, 0x7f0700c7

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 48
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v4, 0x7f0700c9

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 49
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/ButtonBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ButtonBar;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v8, v4, v8, v5}, Lcom/google/android/finsky/layout/ButtonBar;->setPadding(IIII)V

    .line 52
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/ButtonBar;->disablePositiveButton()V

    .line 54
    const v3, 0x7f080066

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 55
    .local v7, webView:Landroid/webkit/WebView;
    const v3, 0x7f080067

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080065

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    .line 58
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    invoke-virtual {v7, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 59
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, carrierName:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070054

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 68
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v3, 0x5

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 69
    return-object v0
.end method

.method public onNegativeButtonClick()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    .line 100
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 3

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    .line 95
    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    .line 104
    return-void
.end method
