.class public Lcom/google/android/finsky/utils/DetailsShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DetailsShimFragment.java"


# instance fields
.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;
    .registers 6
    .parameter "url"
    .parameter "cookie"
    .parameter "referrer"
    .parameter "externalReferrer"

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/finsky/utils/DetailsShimFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/DetailsShimFragment;-><init>()V

    .line 36
    .local v0, fragment:Lcom/google/android/finsky/utils/DetailsShimFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 37
    const-string v1, "finsky.DetailsFragment.cookie"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "finsky.DetailsFragment.referrerUrl"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "finsky.DetailsFragment.externalUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->requestData()V

    .line 47
    return-void
.end method

.method public onDataChanged()V
    .registers 8

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_19

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0700fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :goto_18
    return-void

    .line 91
    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsFragment.cookie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsFragment.referrerUrl"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "finsky.DetailsFragment.externalUrl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method protected rebindViews()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method protected requestData()V
    .registers 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_e

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 74
    :cond_e
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsFragment.cookie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->switchToLoading()V

    .line 78
    return-void
.end method
