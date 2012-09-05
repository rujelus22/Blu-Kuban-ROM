.class public Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FeedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;
    }
.end annotation


# static fields
.field public static isLikeFavoriteClicked:Z

.field private static mResource:Landroid/content/res/Resources;


# instance fields
.field public bIsClick:Z

.field expand:Ljava/lang/Boolean;

.field private mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

.field private mContext:Landroid/content/Context;

.field private mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field protected mIndexer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field public mOpenedExpandMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/socialhub/feedslist/FeedView;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mResource:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V
    .registers 11
    .parameter "context"
    .parameter "layout"
    .parameter "bouncing"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 77
    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 47
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->expand:Ljava/lang/Boolean;

    .line 52
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 54
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 56
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 57
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->bIsClick:Z

    .line 67
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 71
    iput-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTagList:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$1;-><init>(Lcom/sec/android/socialhub/feedslist/FeedListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 79
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mResource:Landroid/content/res/Resources;

    .line 82
    iput-object p3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 86
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTagList:Ljava/util/ArrayList;

    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    .line 94
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 233
    .local v0, feed:Lcom/sec/android/socialhub/feedslist/FeedView;
    iget-object v6, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v6, p3}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->changeCursor(Landroid/database/Cursor;)V

    .line 235
    const v6, 0x7f0b000c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, headerView:Landroid/view/View;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    .local v2, id:I
    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 241
    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 242
    .local v3, index:I
    const v6, 0x7f0b0025

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 243
    .local v5, tv:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .end local v3           #index:I
    .end local v5           #tv:Landroid/widget/TextView;
    :goto_44
    iget-object v6, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v6}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v4

    .line 252
    .local v4, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    invoke-interface {v4, p1, p2, p3, p0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/Adapter;)V

    .line 254
    return-void

    .line 248
    .end local v4           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_50
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44
.end method

.method public calcSection(J)Ljava/lang/String;
    .registers 6
    .parameter "lDate"

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, date:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 279
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_14
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 294
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v0           #date:Ljava/lang/String;
    :goto_21
    return-object v0

    .line 282
    .restart local v0       #date:Ljava/lang/String;
    :cond_22
    const-wide/32 v1, 0x5265c00

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 284
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 289
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 299
    :cond_41
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    if-eqz v0, :cond_9

    .line 307
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->changeCursor(Landroid/database/Cursor;)V

    .line 310
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->makeIndexer(Landroid/database/Cursor;)V

    .line 311
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 312
    return-void
.end method

.method public drawExpandMenu(Landroid/view/View;I)V
    .registers 13
    .parameter "expand_view"
    .parameter "visible"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 384
    .local v3, view:Lcom/sec/android/socialhub/feedslist/FeedView;
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v6}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    .line 386
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    if-nez v6, :cond_a0

    .line 388
    const-string v6, "FeedListAdapter"

    const-string v7, "drawExpandMenu()"

    const-string v8, "activityID is null!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    invoke-virtual {v6, v4}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->setVisible(I)V

    .line 396
    :goto_28
    const/4 v1, 0x0

    .line 398
    .local v1, otherFeed:I
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v7, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v7, v7, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isMyMessage(Ljava/lang/String;I)Z

    move-result v6

    if-eq v6, v9, :cond_39

    if-ne p2, v4, :cond_3b

    .line 400
    :cond_39
    const/16 v1, 0x8

    .line 404
    :cond_3b
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    invoke-virtual {v6, p2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->setAllExpandViewVisible(I)V

    .line 406
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mEntireLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 407
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v6, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 411
    const/4 v6, 0x5

    :try_start_55
    invoke-interface {v2, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v6

    if-ne v6, v9, :cond_a8

    .line 413
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v6, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 420
    :goto_64
    const/16 v6, 0x17

    invoke-interface {v2, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v6

    if-nez v6, :cond_77

    .line 422
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V
    :try_end_77
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_55 .. :try_end_77} :catch_b4

    .line 431
    :cond_77
    :goto_77
    if-nez p2, :cond_7e

    .line 433
    sget-object v6, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mResource:Landroid/content/res/Resources;

    invoke-interface {v2, v3, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->setExpandResource(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/content/res/Resources;)V

    .line 436
    :cond_7e
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    if-nez p2, :cond_b9

    :goto_86
    invoke-virtual {v6, v4}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 437
    iget-object v4, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v5, v4, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickExpand:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    if-nez p2, :cond_bb

    const v4, 0x7f020056

    :goto_94
    invoke-virtual {v5, v4}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeImageResource(I)V

    .line 438
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/feedslist/FeedView;->alphaReply(I)V

    .line 440
    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 441
    return-void

    .line 393
    .end local v1           #otherFeed:I
    :cond_a0
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    invoke-virtual {v6, v5}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->setVisible(I)V

    goto :goto_28

    .line 417
    .restart local v1       #otherFeed:I
    :cond_a8
    :try_start_a8
    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V
    :try_end_b3
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_a8 .. :try_end_b3} :catch_b4

    goto :goto_64

    .line 425
    :catch_b4
    move-exception v0

    .line 427
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_77

    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_b9
    move v4, v5

    .line 436
    goto :goto_86

    .line 437
    :cond_bb
    const v4, 0x7f02004e

    goto :goto_94
.end method

.method public getCurrentQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    .line 211
    .local v1, tab_state:Lcom/sec/android/socialhub/state/tab/FeedTabState;
    if-nez v1, :cond_17

    .line 213
    const-string v3, "FeedListAdapter"

    const-string v4, "getCurrentQueryBuilder()"

    const-string v5, "tab_state is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_16
    return-object v2

    .line 217
    :cond_17
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/state/FeedBaseState;

    .line 219
    .local v0, current:Lcom/sec/android/socialhub/state/FeedBaseState;
    if-nez v0, :cond_29

    .line 221
    const-string v3, "FeedListAdapter"

    const-string v4, "getCurrentQueryBuilder()"

    const-string v5, "current is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 225
    :cond_29
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/FeedBaseState;->getQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    move-result-object v2

    goto :goto_16
.end method

.method public getOpenedExpandMenuList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 180
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    .line 181
    .local v0, wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    return-object v0
.end method

.method public isMyMessage(Ljava/lang/String;I)Z
    .registers 8
    .parameter "senderId"
    .parameter "sp_type"

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, isMyMessage:Z
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-eqz v3, :cond_26

    .line 156
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-virtual {v3, p2}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, actorId:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26

    .line 160
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 161
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v0           #actorId:Ljava/lang/String;
    :cond_26
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    if-eqz v3, :cond_3f

    .line 168
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_3f

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 171
    const/4 v2, 0x1

    .line 175
    .end local v1           #id:Ljava/lang/String;
    :cond_3f
    return v2
.end method

.method public isSearchMode()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v2

    .line 188
    .local v2, tab_state:Lcom/sec/android/socialhub/state/tab/FeedTabState;
    if-nez v2, :cond_17

    .line 190
    const-string v4, "FeedListAdapter"

    const-string v5, "isSearchMode()"

    const-string v6, "tab_state is null!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_16
    return v3

    .line 194
    :cond_17
    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/state/FeedBaseState;

    .line 196
    .local v1, current:Lcom/sec/android/socialhub/state/FeedBaseState;
    if-nez v1, :cond_29

    .line 198
    const-string v4, "FeedListAdapter"

    const-string v5, "isSearchMode()"

    const-string v6, "current is null!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 202
    :cond_29
    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 204
    .local v0, bSearchMode:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_16
.end method

.method public makeIndexer(Landroid/database/Cursor;)V
    .registers 11
    .parameter "cursor"

    .prologue
    .line 316
    iget-object v7, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v7, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 319
    if-eqz p1, :cond_42

    .line 321
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 323
    .local v0, count:I
    if-eqz v0, :cond_42

    .line 325
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 326
    const-string v1, ""

    .line 327
    .local v1, date:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 328
    .local v4, lDate:J
    const/4 v3, 0x0

    .line 329
    .local v3, id:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 331
    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 333
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 334
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->calcSection(J)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, sectionName:Ljava/lang/String;
    if-eqz v6, :cond_3f

    .line 338
    iget-object v7, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 343
    .end local v0           #count:I
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #lDate:J
    .end local v6           #sectionName:Ljava/lang/String;
    :cond_42
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 260
    const/4 v6, 0x0

    .line 261
    .local v6, view:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001d

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 263
    new-instance v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    invoke-direct {v2, v6}, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;-><init>(Landroid/view/View;)V

    .line 264
    .local v2, mFeedView:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-result-object v3

    .line 265
    .local v3, mData:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/feedslist/FeedView;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;Lcom/sec/android/socialhub/image/ImageCacheManager;Landroid/widget/Adapter;)V

    .line 267
    .local v0, wrapper:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v1, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickExpand:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    new-instance v4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;

    invoke-direct {v4, p0, v7}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;-><init>(Lcom/sec/android/socialhub/feedslist/FeedListAdapter;Lcom/sec/android/socialhub/feedslist/FeedListAdapter$1;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-object v6
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-eqz v3, :cond_c

    .line 100
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->close()V

    .line 101
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 104
    :cond_c
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    if-eqz v3, :cond_17

    .line 106
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 107
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOwnerIds:Ljava/util/HashMap;

    .line 110
    :cond_17
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    if-eqz v3, :cond_22

    .line 112
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 113
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    .line 116
    :cond_22
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    if-eqz v3, :cond_2d

    .line 118
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 119
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    .line 122
    :cond_2d
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTagList:Ljava/util/ArrayList;

    if-eqz v3, :cond_54

    .line 124
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 126
    .local v2, tag_ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sec/android/socialhub/feedslist/FeedView;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 127
    .local v1, tag:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/feedslist/FeedView;->destroy()V

    goto :goto_37

    .line 129
    .end local v1           #tag:Lcom/sec/android/socialhub/feedslist/FeedView;
    .end local v2           #tag_ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sec/android/socialhub/feedslist/FeedView;>;"
    :cond_4d
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 130
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mTagList:Ljava/util/ArrayList;

    .line 133
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_54
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_5f

    .line 135
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 136
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mCursor:Landroid/database/Cursor;

    .line 139
    :cond_5f
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    if-eqz v3, :cond_68

    .line 141
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 144
    :cond_68
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mContext:Landroid/content/Context;

    .line 145
    sput-object v4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mResource:Landroid/content/res/Resources;

    .line 146
    iput-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 148
    return-void
.end method

.method public onGetDeepLink(II)V
    .registers 8
    .parameter "req_id"
    .parameter "spType"

    .prologue
    .line 352
    const-string v1, "FeedListAdapter"

    const-string v2, "onGetDeepLink()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "req_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 355
    .local v0, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->onGetDeepLink(I)V

    .line 356
    return-void
.end method
