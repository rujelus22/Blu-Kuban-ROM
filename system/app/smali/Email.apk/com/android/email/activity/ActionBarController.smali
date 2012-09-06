.class public Lcom/android/email/activity/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;,
        Lcom/android/email/activity/ActionBarController$Callback;,
        Lcom/android/email/activity/ActionBarController$SearchContext;
    }
.end annotation


# instance fields
.field private final mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

.field private final mAccountSpinner:Landroid/view/View;

.field private final mAccountSpinnerContainer:Landroid/view/ViewGroup;

.field private final mAccountSpinnerCountView:Landroid/widget/TextView;

.field private final mAccountSpinnerDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private final mAccountSpinnerLine1View:Landroid/widget/TextView;

.field private final mAccountSpinnerLine2View:Landroid/widget/TextView;

.field private final mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActionBarCustomView:Landroid/view/ViewGroup;

.field private final mAllFoldersLabel:Ljava/lang/String;

.field public final mCallback:Lcom/android/email/activity/ActionBarController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

.field private final mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

.field private mLastAccountIdForDirtyCheck:J

.field private mLastMailboxIdForDirtyCheck:J

.field private final mLoaderManager:Landroid/app/LoaderManager;

.field private final mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchMode:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mTitleMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V
    .registers 7
    .parameter "context"
    .parameter "loaderManager"
    .parameter "actionBar"
    .parameter "callback"

    .prologue
    const-wide/16 v0, -0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide v0, p0, Lcom/android/email/activity/ActionBarController;->mLastAccountIdForDirtyCheck:J

    .line 94
    iput-wide v0, p0, Lcom/android/email/activity/ActionBarController;->mLastMailboxIdForDirtyCheck:J

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 357
    new-instance v0, Lcom/android/email/activity/ActionBarController$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ActionBarController$2;-><init>(Lcom/android/email/activity/ActionBarController;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 520
    new-instance v0, Lcom/android/email/activity/ActionBarController$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ActionBarController$4;-><init>(Lcom/android/email/activity/ActionBarController;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

    .line 201
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/android/email/activity/ActionBarController;->mLoaderManager:Landroid/app/LoaderManager;

    .line 203
    iput-object p3, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    .line 204
    iput-object p4, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    .line 205
    new-instance v0, Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAllFoldersLabel:Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 214
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040015

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 215
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    .line 218
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0040

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    .line 220
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0043

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0044

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0045

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0042

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    .line 228
    new-instance v0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;-><init>(Lcom/android/email/activity/ActionBarController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    .line 229
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    new-instance v1, Lcom/android/email/activity/ActionBarController$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/ActionBarController$1;-><init>(Lcom/android/email/activity/ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ActionBarController;)Lcom/android/email/activity/AccountSelectorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ActionBarController;)Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/ActionBarController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->refreshInernal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/ActionBarController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/ActionBarController;Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/ActionBarController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->updateTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ActionBarController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/ActionBarController;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/email/activity/ActionBarController;->onAccountSpinnerItemClicked(I)V

    return-void
.end method

.method private initSearchViews()V
    .registers 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    if-nez v1, :cond_3a

    .line 242
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 243
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    .line 244
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f0e0041

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    .line 245
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 248
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_3a
    return-void
.end method

.method private loadAccountMailboxInfo(JJ)V
    .registers 14
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 386
    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v7, 0xc8

    const/4 v8, 0x0

    new-instance v0, Lcom/android/email/activity/ActionBarController$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/ActionBarController$3;-><init>(Lcom/android/email/activity/ActionBarController;JJ)V

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 405
    return-void
.end method

.method private onAccountSpinnerItemClicked(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 536
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-nez v2, :cond_5

    .line 547
    :cond_4
    :goto_4
    return-void

    .line 539
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)J

    move-result-wide v0

    .line 541
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->isAccountItem(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 542
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/ActionBarController$Callback;->onAccountSelected(J)V

    goto :goto_4

    .line 543
    :cond_19
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->isMailboxItem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v3, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getId(I)J

    move-result-wide v3

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/email/activity/ActionBarController$Callback;->onMailboxSelected(JJ)V

    goto :goto_4
.end method

.method private refreshInernal()V
    .registers 9

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isInSearchMode()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v7}, Lcom/android/email/activity/ActionBarController$Callback;->shouldShowUp()Z

    move-result v7

    if-eqz v7, :cond_42

    :cond_10
    const/4 v4, 0x1

    .line 364
    .local v4, showUp:Z
    :goto_11
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {v7, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 367
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v5}, Lcom/android/email/activity/ActionBarController$Callback;->getUIAccountId()J

    move-result-wide v0

    .line 368
    .local v0, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v5}, Lcom/android/email/activity/ActionBarController$Callback;->getMailboxId()J

    move-result-wide v2

    .line 369
    .local v2, mailboxId:J
    iget-wide v5, p0, Lcom/android/email/activity/ActionBarController;->mLastAccountIdForDirtyCheck:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_31

    iget-wide v5, p0, Lcom/android/email/activity/ActionBarController;->mLastMailboxIdForDirtyCheck:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_3e

    .line 371
    :cond_31
    iput-wide v0, p0, Lcom/android/email/activity/ActionBarController;->mLastAccountIdForDirtyCheck:J

    .line 372
    iput-wide v2, p0, Lcom/android/email/activity/ActionBarController;->mLastMailboxIdForDirtyCheck:J

    .line 374
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_3e

    .line 375
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/ActionBarController;->loadAccountMailboxInfo(JJ)V

    .line 379
    :cond_3e
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->updateTitle()V

    .line 380
    return-void

    .end local v0           #accountId:J
    .end local v2           #mailboxId:J
    .end local v4           #showUp:Z
    :cond_42
    move v4, v5

    .line 363
    goto :goto_11
.end method

.method private setSpinnerEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 498
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_a

    .line 517
    :goto_9
    return-void

    .line 502
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 503
    if-eqz p1, :cond_2a

    .line 504
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :goto_18
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 506
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18
.end method

.method private shouldShowSearchBar()Z
    .registers 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private updateTitle()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 411
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    iget-object v4, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 413
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    if-nez v3, :cond_15

    .line 415
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 495
    :goto_14
    return-void

    .line 418
    :cond_15
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 420
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountCount()I

    move-result v3

    if-nez v3, :cond_28

    .line 421
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/ActionBarController$Callback;->onNoAccountsFound()V

    goto :goto_14

    .line 425
    :cond_28
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountId()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->accountExists()Z

    move-result v3

    if-nez v3, :cond_51

    .line 427
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 428
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->exitSearchMode()V

    .line 432
    :cond_45
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ActionBarController$Callback;->onAccountSelected(J)V

    goto :goto_14

    .line 436
    :cond_51
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v3}, Lcom/android/email/activity/ActionBarController$Callback;->getTitleMode()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    .line 438
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->shouldShowSearchBar()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 439
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initSearchViews()V

    .line 442
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 443
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    .line 448
    :cond_6d
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 449
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    invoke-static {v3, v7}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 451
    iget v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_af

    .line 452
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 453
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 454
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v4}, Lcom/android/email/activity/ActionBarController$Callback;->getMessageSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    :goto_9c
    iget v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_111

    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->shouldEnableSpinner()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 494
    .local v1, spinnerEnabled:Z
    :goto_aa
    invoke-direct {p0, v1}, Lcom/android/email/activity/ActionBarController;->setSpinnerEnabled(Z)V

    goto/16 :goto_14

    .line 462
    .end local v1           #spinnerEnabled:Z
    :cond_af
    iget v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    if-ne v3, v1, :cond_ec

    .line 463
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAllFoldersLabel:Ljava/lang/String;

    .line 472
    .local v0, mailboxName:Ljava/lang/String;
    :goto_b5
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 473
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 475
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v4}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    :goto_d5
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getMailboxMessageCount()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9c

    .line 464
    .end local v0           #mailboxName:Ljava/lang/String;
    :cond_ec
    iget v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_f9

    .line 465
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mailboxName:Ljava/lang/String;
    goto :goto_b5

    .line 467
    .end local v0           #mailboxName:Ljava/lang/String;
    :cond_f9
    const/4 v0, 0x0

    .restart local v0       #mailboxName:Ljava/lang/String;
    goto :goto_b5

    .line 480
    :cond_fb
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v4}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    .end local v0           #mailboxName:Ljava/lang/String;
    :cond_111
    move v1, v2

    .line 490
    goto :goto_aa
.end method


# virtual methods
.method public enterSearchMode(Ljava/lang/String;)V
    .registers 5
    .parameter "initialQueryTerm"

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initSearchViews()V

    .line 302
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    :goto_a
    return-void

    .line 305
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 310
    :goto_16
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ActionBarController$Callback;->getSearchHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 312
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 316
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 319
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/ActionBarController$Callback;->onSearchStarted()V

    goto :goto_a

    .line 308
    :cond_32
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_16
.end method

.method public exitSearchMode()V
    .registers 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 330
    :goto_6
    return-void

    .line 326
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 328
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 329
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/ActionBarController$Callback;->onSearchExit()V

    goto :goto_6
.end method

.method public isInSearchMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 284
    iget v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityCreated()V
    .registers 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 256
    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 261
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->dismiss()V

    .line 263
    :cond_d
    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 3
    .parameter "isSystemBackKey"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->shouldShowSearchBar()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 340
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->exitSearchMode()V

    .line 341
    const/4 v0, 0x1

    .line 343
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    .line 273
    const-string v1, "ActionBarController.BUNDLE_KEY_MODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, mode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ActionBarController;->enterSearchMode(Ljava/lang/String;)V

    .line 278
    :cond_d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DelayedOperations;->removeCallbacks()V

    .line 268
    const-string v0, "ActionBarController.BUNDLE_KEY_MODE"

    iget v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;->post(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method
