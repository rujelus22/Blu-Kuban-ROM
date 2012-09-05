.class public abstract Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DetailsDataBasedFragment.java"


# instance fields
.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mHaveLoggedBefore:Z

.field private mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

.field private mPageCreationTime:J

.field private mReferrer:Ljava/lang/String;

.field protected mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    return-void
.end method

.method private logPageView()V
    .registers 5

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    if-nez v0, :cond_1e

    .line 228
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mReferrer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    .line 231
    :cond_1e
    return-void
.end method


# virtual methods
.method protected getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method protected getReferrer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method protected hasDetailsDataLoaded()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected final isDataReady()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-static {p0}, Lcom/google/android/finsky/utils/Nfc;->getHandler(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsDataBasedFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 118
    if-eqz p1, :cond_1b

    .line 119
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 122
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->switchToBlank()V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-nez v0, :cond_2c

    .line 125
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->rebindActionBar()V

    .line 132
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    .line 133
    return-void

    .line 128
    :cond_2c
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_28
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageCreationTime:J

    .line 106
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onDataChanged()V
    .registers 5

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_33

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0700fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onDataChanged()V

    .line 197
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    .line 199
    :cond_32
    return-void

    .line 190
    :cond_33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->updateDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 191
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->logPageView()V

    goto :goto_2a
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_11

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 218
    :cond_11
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 219
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onPause()V

    .line 145
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onResume()V

    .line 151
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->recordState(Landroid/os/Bundle;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 159
    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method protected final rebindViews()V
    .registers 8

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->rebindViews(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "Page [class=%s] loaded in [%s ms] (partial? %b)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageCreationTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method protected abstract rebindViews(Landroid/os/Bundle;)V
.end method

.method protected final recordState()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->recordState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method protected abstract recordState(Landroid/os/Bundle;)V
.end method

.method protected requestData()V
    .registers 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_e

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 173
    :cond_e
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mReferrer:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 177
    return-void
.end method

.method protected setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 73
    const-string v0, "finsky.DetailsDataBasedFragment.document"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    return-void
.end method

.method protected updateDocument(Lcom/google/android/finsky/api/model/Document;)V
    .registers 2
    .parameter "document"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 79
    return-void
.end method
