.class public Lcom/google/android/finsky/activities/PostPurchaseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "PostPurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mOfferType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/finsky/activities/PostPurchaseFragment;
    .registers 5
    .parameter "purchaseDocUrl"
    .parameter "offerType"
    .parameter "accountName"

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;-><init>()V

    .line 61
    .local v0, fragment:Lcom/google/android/finsky/activities/PostPurchaseFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 62
    const-string v1, "offerType"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->setArgument(Ljava/lang/String;I)V

    .line 63
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 77
    const v0, 0x7f0400ca

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

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
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_16

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 94
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->rebindViews()V

    .line 97
    :cond_15
    return-void

    .line 86
    :cond_16
    if-eqz p1, :cond_2c

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 87
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_c

    .line 89
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->switchToLoadingImmediately()V

    .line 90
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_c
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_11

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 106
    :goto_d
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    .line 107
    return-void

    .line 104
    :cond_11
    const-string v0, "Ignoring soft TTL refresh."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 116
    :cond_e
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 117
    return-void
.end method

.method public onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .registers 7
    .parameter "document"

    .prologue
    .line 120
    if-nez p1, :cond_22

    .line 121
    iget-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    .line 122
    .local v1, volleyError:Lcom/android/volley/VolleyError;
    if-nez v1, :cond_1b

    iget-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f070068

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, message:Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v4}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #volleyError:Lcom/android/volley/VolleyError;
    :goto_1a
    return-void

    .line 122
    .restart local v1       #volleyError:Lcom/android/volley/VolleyError;
    :cond_1b
    iget-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 128
    .end local v1           #volleyError:Lcom/android/volley/VolleyError;
    :cond_22
    iput-object p1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->switchToData()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "accountName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "offerType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mOfferType:I

    .line 133
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->onDataChanged()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1a
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 262
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 7
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 252
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2d

    .line 253
    const-string v2, "dialog_details_url"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, detailsUrl:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, launchIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 258
    .end local v0           #detailsUrl:Ljava/lang/String;
    .end local v1           #launchIntent:Landroid/content/Intent;
    :cond_2d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_e

    .line 246
    const-string v0, "doc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    :cond_e
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_15

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 235
    :cond_15
    return-void
.end method

.method public rebindViews()V
    .registers 22

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10e

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->getView()Landroid/view/View;

    move-result-object v18

    .line 142
    .local v18, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    .line 143
    .local v3, backend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    .line 146
    .local v5, docType:I
    const v19, 0x7f08009a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/google/android/finsky/layout/PostPurchaseSummary;

    .line 148
    .local v17, summary:Lcom/google/android/finsky/layout/PostPurchaseSummary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 150
    const v19, 0x7f080098

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 151
    .local v12, leadingStrip:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v4

    .line 153
    .local v4, backendDarkColor:I
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    const v19, 0x7f0800f5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 158
    .local v8, keepShoppingButton:Landroid/widget/Button;
    invoke-virtual {v8}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v19, Lcom/google/android/finsky/activities/PostPurchaseFragment$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/PostPurchaseFragment$1;-><init>(Lcom/google/android/finsky/activities/PostPurchaseFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v19, 0x7f0800ad

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/layout/ConsumptionAppButton;

    .line 168
    .local v9, launchButton:Lcom/google/android/finsky/layout/ConsumptionAppButton;
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getOpenButtonStringId(I)I

    move-result v11

    .line 169
    .local v11, launchStringId:I
    invoke-virtual {v9}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, launchString:Ljava/lang/String;
    invoke-virtual {v9, v10}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->setDocumentBackend(I)V

    .line 174
    new-instance v19, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;-><init>(Lcom/google/android/finsky/activities/PostPurchaseFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v19, 0x7f0801a4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/layout/ListingView;

    .line 185
    .local v14, purchaseInfo:Lcom/google/android/finsky/layout/ListingView;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 186
    sparse-switch v5, :sswitch_data_170

    .line 209
    :goto_c8
    const v19, 0x7f0801a5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/ListingView;

    .line 210
    .local v6, howToListing:Lcom/google/android/finsky/layout/ListingView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/google/android/finsky/layout/ListingView;->bindHowToConsume(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 213
    const v19, 0x7f080092

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 215
    .local v15, shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    if-eqz v15, :cond_10b

    .line 216
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v5, v0, :cond_fb

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v5, v0, :cond_165

    :cond_fb
    const/4 v7, 0x1

    .line 218
    .local v7, isMusic:Z
    :goto_fc
    if-eqz v7, :cond_167

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v15, v0, v1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 225
    .end local v7           #isMusic:Z
    :cond_10b
    :goto_10b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->rebindActionBar()V

    .line 227
    .end local v3           #backend:I
    .end local v4           #backendDarkColor:I
    .end local v5           #docType:I
    .end local v6           #howToListing:Lcom/google/android/finsky/layout/ListingView;
    .end local v8           #keepShoppingButton:Landroid/widget/Button;
    .end local v9           #launchButton:Lcom/google/android/finsky/layout/ConsumptionAppButton;
    .end local v10           #launchString:Ljava/lang/String;
    .end local v11           #launchStringId:I
    .end local v12           #leadingStrip:Landroid/view/View;
    .end local v14           #purchaseInfo:Lcom/google/android/finsky/layout/ListingView;
    .end local v15           #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    .end local v17           #summary:Lcom/google/android/finsky/layout/PostPurchaseSummary;
    .end local v18           #view:Landroid/view/View;
    :cond_10e
    return-void

    .line 188
    .restart local v3       #backend:I
    .restart local v4       #backendDarkColor:I
    .restart local v5       #docType:I
    .restart local v8       #keepShoppingButton:Landroid/widget/Button;
    .restart local v9       #launchButton:Lcom/google/android/finsky/layout/ConsumptionAppButton;
    .restart local v10       #launchString:Ljava/lang/String;
    .restart local v11       #launchStringId:I
    .restart local v12       #leadingStrip:Landroid/view/View;
    .restart local v14       #purchaseInfo:Lcom/google/android/finsky/layout/ListingView;
    .restart local v17       #summary:Lcom/google/android/finsky/layout/PostPurchaseSummary;
    .restart local v18       #view:Landroid/view/View;
    :sswitch_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mOfferType:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/android/finsky/layout/ListingView;->bindRentalTerms(Lcom/google/android/finsky/api/model/Document;I)V

    goto :goto_c8

    .line 195
    :sswitch_123
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    .line 196
    .local v13, libraries:Lcom/google/android/finsky/library/Libraries;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mAccount:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/library/AccountLibrary;->getMagazinesSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v16

    .line 199
    .local v16, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-eqz v16, :cond_156

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/google/android/finsky/layout/ListingView;->bindSubscriptionInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V

    goto/16 :goto_c8

    .line 203
    :cond_156
    const-string v19, "No library subscription entry, not subscription info."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c8

    .line 216
    .end local v13           #libraries:Lcom/google/android/finsky/library/Libraries;
    .end local v16           #subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .restart local v6       #howToListing:Lcom/google/android/finsky/layout/ListingView;
    .restart local v15       #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    :cond_165
    const/4 v7, 0x0

    goto :goto_fc

    .line 221
    .restart local v7       #isMusic:Z
    :cond_167
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto :goto_10b

    .line 186
    nop

    :sswitch_data_170
    .sparse-switch
        0x6 -> :sswitch_10f
        0xf -> :sswitch_123
    .end sparse-switch
.end method

.method protected requestData()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method
