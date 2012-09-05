.class public Lcom/sec/android/socialhub/feedslist/FeedListView;
.super Lcom/sec/android/socialhub/view/SearchBaseLayout;
.source "FeedListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;,
        Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;
    }
.end annotation


# static fields
.field private static param:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field private bChanged:Z

.field private bFirstLaunch:Z

.field private mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

.field protected mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

.field protected mAddAccount:Landroid/widget/LinearLayout;

.field protected mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

.field protected mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field protected mCursor:Landroid/database/Cursor;

.field private mFeedViewMode:I

.field protected mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field public mLastNextReqID:I

.field public mLastReqID:I

.field private mLastSp:I

.field public mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

.field public mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

.field protected mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

.field private mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field private mState:Lcom/sec/android/socialhub/state/tab/TabState;

.field private mViewState:Lcom/sec/android/socialhub/state/FeedBaseState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sec/android/socialhub/feedslist/FeedListView;->param:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    .line 53
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 54
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    .line 55
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAddAccount:Landroid/widget/LinearLayout;

    .line 57
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 59
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    .line 61
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 65
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 66
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 68
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastSp:I

    .line 70
    iput v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastReqID:I

    .line 71
    iput v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    .line 73
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    invoke-direct {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bChanged:Z

    .line 77
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 78
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mViewState:Lcom/sec/android/socialhub/state/FeedBaseState;

    .line 80
    iput v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mFeedViewMode:I

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bFirstLaunch:Z

    .line 84
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    .line 90
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;-><init>(Lcom/sec/android/socialhub/feedslist/FeedListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 94
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setItemsCanFocus(Z)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setOrientation(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    sget-object v1, Lcom/sec/android/socialhub/feedslist/FeedListView;->param:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->getFeedListAdapter()Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    .line 102
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 106
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setNextFocusUpId(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setNextFocusUpId(I)V

    .line 112
    return-void
.end method


# virtual methods
.method protected getAbsListView()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f080080

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;-><init>(Lcom/sec/android/socialhub/feedslist/FeedListView;Landroid/content/Context;I)V

    return-object v0
.end method

.method public getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "selection"
    .parameter "is_all"
    .parameter "sp"
    .parameter "Projection"

    .prologue
    const/4 v8, 0x0

    .line 431
    const/4 v6, 0x0

    .line 433
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p1, :cond_f

    .line 435
    const-string v0, "FeedListView"

    const-string v1, "getCursor()"

    const-string v2, "uri is null!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 464
    :goto_e
    return-object v0

    .line 444
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_2b

    move-result-object v6

    .line 456
    :goto_1e
    if-nez v6, :cond_36

    .line 458
    const-string v0, "FeedListView"

    const-string v1, "getCursor()"

    const-string v2, "cursor is null!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 459
    goto :goto_e

    .line 446
    :catch_2b
    move-exception v7

    .line 448
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_32

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    const/4 v6, 0x0

    .line 453
    :cond_32
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 461
    .end local v7           #e:Ljava/lang/Exception;
    :cond_36
    const-string v0, "FeedListView"

    const-string v1, "getCursor()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v6

    .line 464
    goto :goto_e
.end method

.method protected getFeedListAdapter()Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    .registers 5

    .prologue
    .line 126
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f03001d

    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;-><init>(Landroid/content/Context;ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    return-object v0
.end method

.method public getSearchFieldList()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v5, field_elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v6, name_field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v4, date_field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "content"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    const-string v8, "attach_caption"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    const-string v8, "attach_desc"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    const-string v8, "actor_name"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    const-string v8, "target_display_name"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    const-string v8, "time"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e0

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 707
    .local v0, all:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e3

    invoke-direct {v2, v8, v5}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 708
    .local v2, contents:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v7, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e1

    invoke-direct {v7, v8, v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 709
    .local v7, sender:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v3, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e2

    invoke-direct {v3, v8, v4}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 711
    .local v3, date:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    return-object v1
.end method

.method public handleError(Ljava/lang/String;Z)V
    .registers 3
    .parameter "error"
    .parameter "bSuccess"

    .prologue
    .line 480
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 511
    return-void
.end method

.method public onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V
    .registers 13
    .parameter "uri"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "bContinue"
    .parameter "bSuccess"
    .parameter "error"
    .parameter "bFetch"

    .prologue
    const/4 v3, 0x1

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setLoading(Z)V

    .line 417
    if-ne p8, v3, :cond_15

    if-nez p6, :cond_15

    .line 419
    const-string v0, "FeedListView"

    const-string v1, "onChange()"

    const-string v2, "bSuccess is fail."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, p7, p6}, Lcom/sec/android/socialhub/feedslist/FeedListView;->handleError(Ljava/lang/String;Z)V

    .line 423
    :cond_15
    invoke-virtual {p0, p4, p2, p5}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshView(IIZ)V

    .line 425
    sput-boolean v3, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    .line 426
    const-string v0, "FeedListView"

    const-string v1, "onChange()"

    const-string v2, "compelted"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public onChangeViewMode(Lcom/sec/android/socialhub/state/FeedBaseState;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 269
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mViewState:Lcom/sec/android/socialhub/state/FeedBaseState;

    .line 270
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mViewState:Lcom/sec/android/socialhub/state/FeedBaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/FeedBaseState;->getMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mFeedViewMode:I

    .line 272
    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mFeedViewMode:I

    packed-switch v0, :pswitch_data_36

    .line 293
    :goto_10
    return-void

    .line 279
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->clean(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    goto :goto_10

    .line 290
    :pswitch_2f
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    goto :goto_10

    .line 272
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2f
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    if-eqz v0, :cond_17

    .line 218
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDestroy()V

    .line 219
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    .line 222
    :cond_17
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_22

    .line 224
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->onDestroy()V

    .line 225
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    .line 228
    :cond_22
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 229
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAddAccount:Landroid/widget/LinearLayout;

    .line 231
    invoke-super {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onDestroy()V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->removeAllViews()V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->removeAllViewsInLayout()V

    .line 235
    return-void
.end method

.method public onGatewayButtonClick()V
    .registers 4

    .prologue
    .line 240
    invoke-super {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onGatewayButtonClick()V

    .line 241
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 242
    return-void
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 6
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 723
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 138
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    if-eqz v0, :cond_11

    .line 142
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->getListViewPosition()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    .line 144
    :cond_11
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onPause()V

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onResume()V

    .line 671
    return-void
.end method

.method public onResume()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 149
    invoke-virtual {p0, v7}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setVisibility(I)V

    .line 155
    invoke-super {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onResume()V

    .line 157
    const-string v3, "FeedListView"

    const-string v4, "onResume()"

    const-string v5, "============================="

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->getIntEx(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastSp:I

    .line 160
    const-string v3, "FeedListView"

    const-string v4, "onResume()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last sp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastSp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 164
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v3

    if-ne v3, v8, :cond_5c

    .line 166
    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    .line 168
    .local v2, display_account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :goto_4a
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v3

    if-ne v3, v8, :cond_53

    .line 170
    invoke-static {v7, v2}, Lcom/sec/android/socialhub/split/HubSplitSetting;->setSelectedAccount(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 173
    :cond_53
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    if-eqz v3, :cond_5c

    .line 175
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    invoke-interface {v3, v2}, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;->onAccountDisplayed(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 179
    .end local v2           #display_account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_5c
    if-eqz v0, :cond_68

    const-string v3, "0_All"

    iget-object v4, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    :cond_68
    const/4 v1, -0x1

    .line 181
    .local v1, current:I
    :goto_69
    const-string v3, "FeedListView"

    const-string v4, "onResume()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current sp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/BaseState;->getQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 185
    iget-boolean v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bFirstLaunch:Z

    if-nez v3, :cond_98

    iget v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastSp:I

    if-eq v3, v1, :cond_c2

    .line 187
    :cond_98
    iput-boolean v7, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bFirstLaunch:Z

    .line 188
    iput-boolean v8, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bChanged:Z

    .line 194
    :goto_9c
    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->AccountVaildCheck(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->startQuery()V

    .line 203
    :goto_a7
    sput-boolean v8, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    .line 205
    const-string v3, "FeedListView"

    const-string v4, "onResume()"

    const-string v5, "============================="

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 166
    .end local v1           #current:I
    :cond_b3
    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v9}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_4a

    .line 179
    :cond_bb
    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_69

    .line 192
    .restart local v1       #current:I
    :cond_c2
    iput-boolean v7, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bChanged:Z

    goto :goto_9c

    .line 200
    :cond_c5
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_a7
.end method

.method public onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    .registers 7
    .parameter "str"
    .parameter "model"

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "all_field"

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    const-string v1, "search_model"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    if-eqz v1, :cond_21

    .line 257
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->setBundle(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->startQuery()V

    .line 264
    :goto_20
    return-void

    .line 262
    :cond_21
    const-string v1, "FeedListView"

    const-string v2, "onSearchText()"

    const-string v3, "mQueryBuilder is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public refreshActivity()V
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDown()V

    .line 399
    return-void
.end method

.method public refreshView(IIZ)V
    .registers 13
    .parameter "reqType"
    .parameter "reqID"
    .parameter "bContinue"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v6

    .line 336
    .local v6, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const/4 v2, 0x0

    .line 337
    .local v2, selection:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "owner"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 338
    .local v1, mUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 340
    .local v7, cursor:Landroid/database/Cursor;
    sparse-switch p1, :sswitch_data_9c

    .line 362
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    if-eqz v0, :cond_57

    .line 364
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v0, v6}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_44

    .line 371
    if-eqz v6, :cond_2f

    const-string v0, "0_All"

    iget-object v3, v6, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_2f
    const/4 v3, 0x1

    :goto_30
    if-eqz v6, :cond_3c

    const-string v0, "0_All"

    iget-object v4, v6, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_3c
    const/4 v4, -0x1

    :goto_3d
    sget-object v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->FeedViewProjection:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/feedslist/FeedListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 376
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0, v7}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_55

    .line 381
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    .line 385
    :cond_55
    iput-object v7, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_57} :catch_79

    .line 394
    :cond_57
    :goto_57
    return-void

    .line 345
    :sswitch_58
    if-ltz p2, :cond_17

    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastReqID:I

    if-ne p2, v0, :cond_17

    .line 347
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDownComplete(Z)V

    goto :goto_17

    .line 355
    :sswitch_64
    if-ltz p2, :cond_17

    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    if-ne p2, v0, :cond_17

    .line 357
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUpComplete(Z)V

    goto :goto_17

    .line 371
    :cond_70
    const/4 v3, 0x0

    goto :goto_30

    :cond_72
    iget-object v0, v6, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3d

    .line 387
    :catch_79
    move-exception v8

    .line 389
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "FeedListView"

    const-string v3, "refreshView()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    .line 340
    :sswitch_data_9c
    .sparse-switch
        0x5 -> :sswitch_58
        0x6 -> :sswitch_58
        0x27 -> :sswitch_58
        0x2b -> :sswitch_64
        0x30 -> :sswitch_64
        0x33 -> :sswitch_64
    .end sparse-switch
.end method

.method public requestActivityRetrieve(Z)V
    .registers 12
    .parameter "is_next"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 515
    const/4 v2, 0x0

    .line 516
    .local v2, bCanLoad:Z
    const/4 v3, 0x1

    .line 518
    .local v3, code:I
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 520
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_1b

    const-string v5, "0_All"

    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 524
    :cond_1b
    iget-object v5, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-static {v5, v6, v8}, Lcom/sec/android/socialhub/util/SocialHubUtil;->checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;Z)Ljava/util/HashMap;

    move-result-object v4

    .line 526
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 527
    const/4 v2, 0x1

    .line 539
    :goto_2c
    if-nez v2, :cond_6e

    .line 541
    const-string v5, "FeedListView"

    const-string v6, "requestActivityRetrieve()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can down load is false. code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v5, v9}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDownComplete(Z)V

    .line 563
    :goto_4d
    return-void

    .line 529
    :cond_4e
    const/4 v2, 0x0

    goto :goto_2c

    .line 533
    :cond_50
    iget-object v5, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    iget-object v7, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/socialhub/util/SocialHubUtil;->checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;IZ)Z

    move-result v2

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "owner"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v5, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 546
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6e
    if-ne p1, v8, :cond_94

    .line 548
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v9}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->activityRetrieveNext(Landroid/content/Context;Ljava/util/Map;Z)I

    move-result v5

    iput v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    .line 550
    iget v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    if-gez v5, :cond_90

    .line 552
    const-string v5, "FeedListView"

    const-string v6, "requestActivityRetrieve()"

    const-string v7, "Some thing wrong!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v5, v9}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUpComplete(Z)V

    .line 562
    :cond_90
    :goto_90
    invoke-virtual {p0, v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setLoading(Z)V

    goto :goto_4d

    .line 558
    :cond_94
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v9, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->activityRetrieve(Landroid/content/Context;Ljava/util/Map;ZZ)I

    move-result v5

    iput v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastReqID:I

    .line 559
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDisableFooter()V

    goto :goto_90
.end method

.method public requestRefresh()V
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    if-eqz v0, :cond_9

    .line 739
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDown()V

    .line 741
    :cond_9
    return-void
.end method

.method public setLoading(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    .line 474
    const-string v0, "FeedListView"

    const-string v1, "setLoading()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setOnSplitAccountDisplayListener(Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    .line 117
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 6
    .parameter "builder"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 676
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->setEditText(Landroid/widget/EditText;)V

    .line 677
    const-string v0, "FeedListView"

    const-string v1, "setQueryBuilder()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Builder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public declared-synchronized startQuery()V
    .registers 4

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    const-string v0, "FeedListView"

    const-string v1, "startQuery()"

    const-string v2, "start startQuery"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bChanged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->bChanged:Z

    .line 302
    const-string v0, "FeedListView"

    const-string v1, "startQuery()"

    const-string v2, "it\'s different sp!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setSelection(I)V

    .line 304
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshView(IIZ)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDown()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_35

    .line 319
    :goto_2c
    monitor-exit p0

    return-void

    .line 309
    :cond_2e
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_31
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshView(IIZ)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_2c

    .line 297
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useFlickUp(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->useFlickUp(Z)V

    .line 683
    return-void
.end method
