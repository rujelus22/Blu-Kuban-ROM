.class public Lcom/google/android/finsky/activities/FlagItemFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;,
        Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;,
        Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    }
.end annotation


# instance fields
.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDynamicButtonContainer:Z

.field private mFlagMessage:Ljava/lang/String;

.field private mFlagRadioButtons:Landroid/widget/RadioGroup;

.field private mSelectedRadioButtonId:I

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method private getAppFlagTypes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 311
    .local v1, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    const/4 v2, 0x0

    .line 312
    .local v2, wasOnDevice:Z
    if-eqz v1, :cond_2e

    .line 313
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 314
    .local v0, assetState:Lcom/google/android/finsky/local/AssetState;
    sget-object v3, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v3, :cond_2d

    sget-object v3, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v3, :cond_2d

    sget-object v3, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v3, :cond_2d

    sget-object v3, Lcom/google/android/finsky/local/AssetState;->UNINSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    if-ne v0, v3, :cond_33

    :cond_2d
    const/4 v2, 0x1

    .line 319
    .end local v0           #assetState:Lcom/google/android/finsky/local/AssetState;
    :cond_2e
    :goto_2e
    invoke-static {v2}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;->getAppFlags(Z)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 314
    .restart local v0       #assetState:Lcom/google/android/finsky/local/AssetState;
    :cond_33
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method private getFlagTypesForCurrentCorpus(I)Ljava/util/List;
    .registers 4
    .parameter "backendId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 301
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getAppFlagTypes()Ljava/util/List;

    move-result-object v0

    .line 303
    :goto_7
    return-object v0

    .line 302
    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 303
    invoke-static {}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->getMusicFlags()Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 305
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported backend type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 333
    :cond_10
    :goto_10
    return-object v0

    .line 326
    :cond_11
    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 328
    .local v2, index:I
    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFlagTypesForCurrentCorpus(I)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, currentTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 332
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    .line 333
    .local v0, currentFlag:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    goto :goto_10
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/activities/FlagItemFragment;
    .registers 3
    .parameter "url"

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/finsky/activities/FlagItemFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/FlagItemFragment;-><init>()V

    .line 84
    .local v0, fragment:Lcom/google/android/finsky/activities/FlagItemFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method private postFlag()V
    .registers 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 296
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 297
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 153
    const v0, 0x7f04006a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    if-eqz p1, :cond_1d

    .line 161
    const-string v0, "flag_free_text_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    .line 162
    const-string v0, "flag_selected_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "flag_selected_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1b
    iput v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    .line 165
    :cond_1d
    if-eqz p1, :cond_35

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 166
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 192
    :goto_32
    return-void

    .line 162
    :cond_33
    const/4 v0, -0x1

    goto :goto_1b

    .line 168
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->switchToLoading()V

    .line 169
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$2;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$3;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_32
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 94
    :cond_c
    return-void
.end method

.method public onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .registers 14
    .parameter "document"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 195
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->switchToData()V

    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_2e

    .line 199
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;I)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v4, p0

    move v6, v5

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2e
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFlagTypesForCurrentCorpus(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    .line 208
    .local v11, type:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    new-instance v9, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 209
    .local v9, button:Landroid/widget/RadioButton;
    iget v0, v11, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f0e

    invoke-virtual {v9, v0, v1}, Landroid/widget/RadioButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 211
    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 213
    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    iget v1, v11, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    if-ne v0, v1, :cond_41

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_41

    .line 218
    .end local v9           #button:Landroid/widget/RadioButton;
    .end local v11           #type:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDataChanged()V

    .line 219
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 7

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDynamicButtonContainer:Z

    .line 102
    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    .line 104
    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    .line 105
    .local v0, buttonBar:Lcom/google/android/finsky/layout/ButtonBar;
    const v2, 0x7f0701c5

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 106
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ButtonBar;->disablePositiveButton()V

    .line 107
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ButtonBar;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ButtonBar;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ButtonBar;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/finsky/layout/ButtonBar;->setPadding(IIII)V

    .line 113
    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/google/android/finsky/activities/FlagItemFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment$1;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;Lcom/google/android/finsky/layout/ButtonBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 119
    return-void
.end method

.method public onNegativeButtonClick()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 145
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 5

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    .line 124
    .local v0, currentFlag:Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    if-nez v0, :cond_7

    .line 140
    :cond_6
    :goto_6
    return-void

    .line 127
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->requireUserComment()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 130
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "flag_item_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_6

    .line 133
    iget v3, v0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->textEntryStringId:I

    invoke-static {v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->newInstance(I)Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    move-result-object v1

    .line 135
    .local v1, dialog:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 136
    const-string v3, "flag_item_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_6

    .line 138
    .end local v1           #dialog:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;
    .end local v2           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    :cond_29
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->postFlag()V

    goto :goto_6
.end method

.method public onPositiveClick(Ljava/lang/String;)V
    .registers 2
    .parameter "flagMessage"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->postFlag()V

    .line 291
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_26

    .line 278
    const-string v0, "doc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    const-string v0, "flag_free_text_message"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 281
    const-string v0, "flag_selected_button_id"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v1

    iget v1, v1, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    :cond_26
    return-void
.end method

.method public rebindActionBar()V
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0701b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 267
    return-void
.end method

.method public rebindViews()V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 223
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v7, :cond_9d

    .line 224
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v8, 0x7f080104

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    .local v1, desc:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9e

    const v7, 0x7f0701b3

    :goto_1d
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 232
    .local v4, inflater:Landroid/view/LayoutInflater;
    iget-boolean v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDynamicButtonContainer:Z

    if-eqz v7, :cond_a3

    .line 233
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v8, 0x7f08001a

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 234
    .local v6, thumbnail:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getDetailsIconWidth(Landroid/content/Context;I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v8, 0x7f08001b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, buttonContainer:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 249
    .end local v0           #buttonContainer:Landroid/view/ViewGroup;
    .end local v6           #thumbnail:Landroid/view/View;
    :goto_57
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8d

    .line 250
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v8, 0x7f080106

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 251
    .local v2, footer:Landroid/widget/TextView;
    const v7, 0x7f0701b6

    new-array v8, v10, [Ljava/lang/Object;

    sget-object v9, Lcom/google/android/finsky/config/G;->musicDmcaReportLink:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v9}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/google/android/finsky/activities/FlagItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, footerText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 255
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    .end local v2           #footer:Landroid/widget/TextView;
    .end local v3           #footerText:Ljava/lang/String;
    :cond_8d
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v8, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    new-array v9, v10, [Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v11, v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->rebindActionBar()V

    .line 261
    .end local v1           #desc:Landroid/widget/TextView;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_9d
    return-void

    .line 225
    .restart local v1       #desc:Landroid/widget/TextView;
    :cond_9e
    const v7, 0x7f0701b5

    goto/16 :goto_1d

    .line 240
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_a3
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v5

    .line 245
    .local v5, summaryLayoutId:I
    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_57
.end method

.method protected requestData()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method
