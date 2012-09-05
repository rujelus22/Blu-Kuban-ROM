.class public Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;
.super Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.source "SocialHubExtendFeedChooserActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/IActivityUIHandler;


# instance fields
.field private flag:Z

.field private mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mListViewAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mMenuRefresh:Landroid/view/MenuItem;

.field private mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

.field protected mSpType:I

.field protected mViewType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mContext:Landroid/content/Context;

    .line 59
    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSpType:I

    .line 60
    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mViewType:I

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    .line 64
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 74
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    .line 75
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mListViewAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 77
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 79
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    return-void
.end method

.method private RefreshOptionMenu(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 158
    :cond_9
    return-void
.end method

.method private onHandleCallback(IIILandroid/net/Uri;ZZ)V
    .registers 16
    .parameter "reqID"
    .parameter "reqType"
    .parameter "spType"
    .parameter "uri"
    .parameter "bSuccess"
    .parameter "bContinue"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->onHandledResponse(Lcom/sec/android/socialhub/parent/IActivityUIHandler;IIILandroid/net/Uri;ZZ)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 236
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1e

    .line 238
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 242
    :cond_1e
    iput-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 244
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mListViewAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    if-eqz v0, :cond_32

    .line 250
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->getAbsBouningLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->changeCursor(Landroid/database/Cursor;)V

    .line 252
    :cond_32
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setTitle()V

    .line 255
    const/4 v0, 0x1

    if-ne p5, v0, :cond_45

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    if-eqz v0, :cond_45

    .line 257
    const/4 v0, 0x1

    if-ne p6, v0, :cond_46

    .line 259
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->useFlickUp(Z)V

    .line 267
    :cond_45
    :goto_45
    return-void

    .line 263
    :cond_46
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->useFlickUp(Z)V

    goto :goto_45
.end method

.method private setListener()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    if-eqz v0, :cond_f

    .line 197
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v1}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->getItemClickListenr()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    :cond_f
    return-void
.end method

.method private setTitle()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 203
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->isUseTitleCount()Z

    move-result v0

    if-ne v0, v4, :cond_49

    .line 205
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3b

    .line 207
    const-string v0, "%1$d %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v2}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->getTitleResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setTitle(Ljava/lang/String;)V

    .line 220
    :goto_3a
    return-void

    .line 211
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->getTitleResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_3a

    .line 216
    :cond_49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->getTitleResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_3a
.end method


# virtual methods
.method public disableRefreshMenu()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 183
    :cond_a
    return-void
.end method

.method public enableRefreshMenu()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    .line 189
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 191
    :cond_a
    return-void
.end method

.method public getAdapter()Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    .registers 3

    .prologue
    .line 118
    invoke-static {p0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;->createBaseListInterface(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentData()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "param"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSpType:I

    .line 226
    const-string v1, "view_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mViewType:I

    .line 227
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    .line 228
    return-void
.end method

.method public onApiCalled(I)V
    .registers 3
    .parameter "reqType"

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onApiCalled(I)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    .line 293
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->RefreshOptionMenu(Z)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->onApiCalled(ILcom/sec/android/socialhub/parent/IActivityUIHandler;)V

    .line 295
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setUse(Z)V

    .line 96
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setLayout(I)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getIntentData()V

    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setUseEmptyView(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->getAdapter()Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->getListAdapter()Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mListViewAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mListViewAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    const v0, 0x7f0b00d8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setTitle()V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->setListener()V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->requestConnect()V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 141
    const v0, 0x7f080083

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    .line 146
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->RefreshOptionMenu(Z)V

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 136
    :cond_f
    return-void
.end method

.method public onFlickUp()V
    .registers 6

    .prologue
    .line 330
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onFlickUp()V

    .line 331
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I

    .line 332
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 174
    :goto_8
    return v0

    .line 170
    :pswitch_9
    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    .line 171
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I

    .line 172
    const/4 v0, 0x1

    goto :goto_8

    .line 163
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onServiceConnected()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 274
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onServiceConnected()V

    .line 276
    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSpType:I

    move-object v0, p0

    move v2, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->setFeedProfile(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;->requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I

    .line 280
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 14
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v5, 0x1

    .line 305
    iput-boolean v5, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    .line 306
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_e

    .line 307
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_e
    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p3

    move-object v4, p5

    move v6, p6

    .line 308
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    .line 309
    return-void
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 18
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    .line 322
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_e

    .line 323
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->mMenuRefresh:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->flag:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 324
    :cond_e
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    .line 325
    return-void
.end method
