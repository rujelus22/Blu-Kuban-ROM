.class public abstract Lcom/google/android/finsky/fragments/PageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PageFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field protected mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mContext:Landroid/content/Context;

.field protected mDataView:Landroid/view/ViewGroup;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

.field protected mRefreshRequired:Z

.field protected mSaveInstanceStateCalled:Z

.field private mTheme:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    const v0, 0x7f0e002c

    iput v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected abstract getLayoutRes()I
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public isSaveInstanceStateCalled()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragmentHost;

    .line 125
    .local v0, host:Lcom/google/android/finsky/fragments/PageFragmentHost;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    if-eq v0, v1, :cond_37

    .line 126
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/fragments/PageFragmentHost;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onInitViewBinders()V

    .line 133
    :cond_37
    iput-boolean v2, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 134
    const-string v1, "Views bound"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.toc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeToc;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f080108

    const/4 v8, 0x0

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_25

    .line 92
    if-eqz p3, :cond_16

    .line 93
    const-string v0, "finsky.PageFragment.theme"

    iget v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    .line 95
    :cond_16
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-direct {v7, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 96
    .local v7, wrapper:Landroid/content/Context;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 99
    .end local v7           #wrapper:Landroid/content/Context;
    :cond_25
    const v0, 0x7f04007a

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ContentFrame;

    .line 101
    .local v1, frame:Lcom/google/android/finsky/layout/ContentFrame;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getLayoutRes()I

    move-result v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/finsky/layout/ContentFrame;->setDataLayout(Landroid/view/LayoutInflater;II)V

    .line 102
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ContentFrame;->getDataLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDataView:Landroid/view/ViewGroup;

    .line 103
    iput-boolean v8, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 106
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    const v3, 0x7f080147

    const v4, 0x7f0800cf

    const/4 v6, 0x2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 110
    const-string v0, "Views inflated"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-object v1
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 219
    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    .line 220
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToData()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->rebindViews()V

    .line 222
    const-string v0, "Views rebound"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :goto_16
    return-void

    .line 224
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    goto :goto_16
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, errorMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToError(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected abstract onInitViewBinders()V
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 187
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    if-eqz v0, :cond_d

    .line 188
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 190
    :cond_d
    return-void
.end method

.method public onRetry()V
    .registers 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 195
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 146
    const-string v0, "finsky.PageFragment.theme"

    iget v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 148
    return-void
.end method

.method public rebindActionBar()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method

.method protected abstract rebindViews()V
.end method

.method public refresh()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 169
    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->requestData()V

    .line 171
    const-string v0, "requestData called"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public refreshOnResume()V
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    .line 181
    return-void
.end method

.method protected abstract requestData()V
.end method

.method protected setArgument(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method protected setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    return-void
.end method

.method protected setArgument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method protected setArgument(Ljava/lang/String;Z)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    return-void
.end method

.method protected setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "toc"

    .prologue
    .line 269
    const-string v0, "finsky.PageFragment.toc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    return-void
.end method

.method protected setTheme(I)V
    .registers 2
    .parameter "themeResId"

    .prologue
    .line 76
    iput p1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    .line 77
    return-void
.end method

.method protected switchToBlank()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToBlankMode()V

    .line 242
    return-void
.end method

.method protected switchToData()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 260
    return-void
.end method

.method protected switchToError(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected switchToLoading()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 248
    return-void
.end method

.method protected switchToLoadingImmediately()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    .line 252
    return-void
.end method
