.class public Lcom/android/browser/BrowserHistoryPage;
.super Landroid/app/Fragment;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;,
        Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;,
        Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;,
        Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;,
        Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;,
        Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;,
        Lcom/android/browser/BrowserHistoryPage$HistoryQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

.field mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

.field private mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mChildList:Landroid/widget/ListView;

.field mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

.field mContextHeader:Lcom/android/browser/HistoryItem;

.field mDisableNewWindow:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mGroupList:Landroid/widget/ListView;

.field private mHistoryList:Landroid/widget/ExpandableListView;

.field mMostVisitsLimit:Ljava/lang/String;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 262
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$1;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 273
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$2;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 593
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserHistoryPage;)Landroid/app/FragmentBreadCrumbs;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 114
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method private inflateSinglePane()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    .line 236
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 237
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->registerForContextMenu(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method private inflateTwoPane(Landroid/view/ViewStub;)V
    .registers 7
    .parameter "stub"

    .prologue
    const/4 v4, 0x1

    .line 242
    const v1, 0x7f040032

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 243
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 244
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    .line 245
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 246
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 247
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 248
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 249
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mPrefsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-direct {v2, v3}, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 253
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    .line 254
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    .line 255
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserHistoryPage;->registerForContextMenu(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    .local v0, prefs:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    return-void
.end method


# virtual methods
.method checkIfEmpty()V
    .registers 7

    .prologue
    const v5, 0x7f0d006b

    const v4, 0x1020004

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v1, 0x7f0d006c

    .line 153
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    #getter for: Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->access$000(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    #getter for: Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->access$100(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 155
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 156
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 159
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_47
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 169
    :cond_4e
    :goto_4e
    return-void

    .line 163
    :cond_4f
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 166
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4e
.end method

.method getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;
    .registers 3
    .parameter "menuInfo"

    .prologue
    .line 400
    instance-of v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_9

    .line 401
    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p1
    iget-object v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 406
    :goto_8
    return-object v0

    .line 403
    .restart local p1
    :cond_9
    instance-of v0, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-eqz v0, :cond_12

    .line 404
    check-cast p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .end local p1
    iget-object v0, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    goto :goto_8

    .line 406
    .restart local p1
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 9
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    check-cast p2, Lcom/android/browser/HistoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    .line 455
    .local v2, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    if-nez v2, :cond_9

    .line 499
    :cond_8
    :goto_8
    return v6

    .line 458
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v3

    .line 459
    .local v3, targetView:Landroid/view/View;
    instance-of v8, v3, Lcom/android/browser/HistoryItem;

    if-eqz v8, :cond_8

    move-object v1, v3

    .line 462
    check-cast v1, Lcom/android/browser/HistoryItem;

    .line 463
    .local v1, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 466
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_8e

    .line 499
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_8

    .line 468
    :sswitch_2c
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    invoke-interface {v6, v5}, Lcom/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    move v6, v7

    .line 469
    goto :goto_8

    .line 471
    :sswitch_33
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    new-array v9, v7, [Ljava/lang/String;

    aput-object v5, v9, v6

    invoke-interface {v8, v9}, Lcom/android/browser/CombinedBookmarksCallbacks;->openInNewTab([Ljava/lang/String;)V

    move v6, v7

    .line 472
    goto :goto_8

    .line 474
    :sswitch_3e
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 475
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v0, v6, v5, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    move v6, v7

    .line 480
    goto :goto_8

    .line 478
    :cond_4d
    invoke-static {v0, v4, v5}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 482
    :sswitch_51
    const v6, 0x7f0c006f

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 484
    goto :goto_8

    .line 486
    :sswitch_61
    invoke-direct {p0, v5}, Lcom/android/browser/BrowserHistoryPage;->copy(Ljava/lang/CharSequence;)V

    .line 487
    const v6, 0x10405c2

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 488
    goto :goto_8

    .line 490
    :sswitch_70
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    move v6, v7

    .line 491
    goto :goto_8

    .line 493
    :sswitch_79
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 494
    const v6, 0x7f0c0044

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 495
    goto/16 :goto_8

    .line 466
    nop

    :sswitch_data_8e
    .sparse-switch
        0x7f0d0043 -> :sswitch_2c
        0x7f0d0044 -> :sswitch_33
        0x7f0d010a -> :sswitch_51
        0x7f0d010b -> :sswitch_61
        0x7f0d010c -> :sswitch_70
        0x7f0d010d -> :sswitch_79
        0x7f0d0154 -> :sswitch_3e
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->setHasOptionsMenu(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "disable_new_window"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 211
    .local v1, mvlimit:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mMostVisitsLimit:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/browser/CombinedBookmarksCallbacks;

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    .line 213
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 412
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserHistoryPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v7

    .line 413
    .local v7, targetView:Landroid/view/View;
    instance-of v8, v7, Lcom/android/browser/HistoryItem;

    if-nez v8, :cond_b

    .line 450
    :goto_a
    return-void

    :cond_b
    move-object v0, v7

    .line 416
    check-cast v0, Lcom/android/browser/HistoryItem;

    .line 419
    .local v0, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 420
    .local v3, parent:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 421
    .local v1, inflater:Landroid/view/MenuInflater;
    const v8, 0x7f10000e

    invoke-virtual {v1, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 424
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    if-nez v8, :cond_7e

    .line 425
    new-instance v8, Lcom/android/browser/HistoryItem;

    invoke-direct {v8, v3, v10}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    .line 426
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8, v9}, Lcom/android/browser/HistoryItem;->setEnableScrolling(Z)V

    .line 430
    :cond_2c
    :goto_2c
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v0, v8}, Lcom/android/browser/HistoryItem;->copyTo(Lcom/android/browser/HistoryItem;)V

    .line 431
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 434
    iget-boolean v8, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    if-eqz v8, :cond_44

    .line 435
    const v8, 0x7f0d0044

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    :cond_44
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 439
    const v8, 0x7f0d0154

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 440
    .local v2, item:Landroid/view/MenuItem;
    const v8, 0x7f0c003f

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 443
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_57
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 444
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v6, send:Landroid/content/Intent;
    const-string v8, "text/plain"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/high16 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 447
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    const v8, 0x7f0d010a

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v5, :cond_94

    move v8, v9

    :goto_77
    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_a

    .line 427
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v6           #send:Landroid/content/Intent;
    :cond_7e
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8}, Lcom/android/browser/HistoryItem;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_2c

    .line 428
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8}, Lcom/android/browser/HistoryItem;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2c

    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v6       #send:Landroid/content/Intent;
    :cond_94
    move v8, v10

    .line 447
    goto :goto_77
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 20
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v2, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    .line 121
    .local v15, combinedBuilder:Landroid/net/Uri$Builder;
    packed-switch p1, :pswitch_data_4a

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 123
    :pswitch_f
    const-string v7, "date DESC"

    .line 124
    .local v7, sort:Ljava/lang/String;
    const-string v5, "visits > 0"

    .line 125
    .local v5, where:Ljava/lang/String;
    new-instance v1, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v1, loader:Landroid/content/CursorLoader;
    move-object/from16 v16, v1

    .line 137
    .end local v1           #loader:Landroid/content/CursorLoader;
    .end local v7           #sort:Ljava/lang/String;
    .local v16, loader:Ljava/lang/Object;
    :goto_25
    return-object v16

    .line 131
    .end local v5           #where:Ljava/lang/String;
    .end local v16           #loader:Ljava/lang/Object;
    :pswitch_26
    const-string v2, "limit"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/BrowserHistoryPage;->mMostVisitsLimit:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 134
    .local v10, uri:Landroid/net/Uri;
    const-string v5, "visits > 0"

    .line 135
    .restart local v5       #where:Ljava/lang/String;
    new-instance v1, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    sget-object v11, Lcom/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "visits DESC"

    move-object v8, v1

    move-object v12, v5

    invoke-direct/range {v8 .. v14}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #loader:Landroid/content/CursorLoader;
    move-object/from16 v16, v1

    .line 137
    .restart local v16       #loader:Ljava/lang/Object;
    goto :goto_25

    .line 121
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_26
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 298
    const v0, 0x7f10000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 299
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 218
    const v1, 0x7f040025

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    .line 219
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 220
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 221
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_39

    .line 222
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->inflateTwoPane(Landroid/view/ViewStub;)V

    .line 228
    :goto_26
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 229
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 231
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    return-object v1

    .line 224
    :cond_39
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage;->inflateSinglePane()V

    goto :goto_26
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 291
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 293
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 175
    :pswitch_d
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 176
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->selectGroup(I)V

    .line 181
    :cond_2b
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->checkIfEmpty()V

    .line 196
    :goto_2e
    return-void

    .line 186
    :pswitch_2f
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->changeMostVisitedCursor(Landroid/database/Cursor;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->checkIfEmpty()V

    goto :goto_2e

    .line 173
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_d
        :pswitch_2f
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d0151

    if-ne v1, v2, :cond_e

    .line 356
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->promptToClearHistory()V

    .line 365
    :goto_d
    return v0

    .line 359
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d0152

    if-ne v1, v2, :cond_26

    .line 361
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->promptToClearTodayHistory()V

    goto :goto_d

    .line 365
    :cond_26
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    if-eqz v0, :cond_19

    .line 304
    const v0, 0x7f0d0151

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v1

    :goto_16
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 307
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    if-eqz v0, :cond_39

    .line 308
    const v0, 0x7f0d0152

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v3}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    :goto_36
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 304
    goto :goto_16

    :cond_3c
    move v1, v2

    .line 308
    goto :goto_36
.end method

.method promptToClearHistory()V
    .registers 8

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 314
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;

    invoke-direct {v1, v3}, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;-><init>(Landroid/content/ContentResolver;)V

    .line 315
    .local v1, clear:Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0070

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0013

    new-instance v6, Lcom/android/browser/BrowserHistoryPage$3;

    invoke-direct {v6, p0, v1}, Lcom/android/browser/BrowserHistoryPage$3;-><init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 328
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 329
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 330
    return-void
.end method

.method promptToClearTodayHistory()V
    .registers 8

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 335
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;

    invoke-direct {v1, v3}, Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;-><init>(Landroid/content/ContentResolver;)V

    .line 336
    .local v1, clearToday:Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0070

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0013

    new-instance v6, Lcom/android/browser/BrowserHistoryPage$4;

    invoke-direct {v6, p0, v1}, Lcom/android/browser/BrowserHistoryPage$4;-><init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 349
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 350
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 351
    return-void
.end method

.method selectGroup(I)V
    .registers 8
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    int-to-long v4, p1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 150
    return-void
.end method
