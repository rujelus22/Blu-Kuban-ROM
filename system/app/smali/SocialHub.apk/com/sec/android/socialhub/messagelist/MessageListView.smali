.class public Lcom/sec/android/socialhub/messagelist/MessageListView;
.super Lcom/sec/android/socialhub/view/SearchBaseLayout;
.source "MessageListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/messagelist/IMessageAPI;
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;
.implements Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;,
        Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;
    }
.end annotation


# static fields
.field private static INIT_ACCOUNTID:I

.field public static mAccountType:Ljava/lang/String;

.field public static mEmailViewMode:I

.field public static mListbyMode:I

.field public static mListbyModeofAll:I

.field private static mMessageViewMode:I

.field public static mOpenedThreadIndex:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mOpenedThreadList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bAllCheckState:Z

.field private bSuccess:Ljava/lang/Boolean;

.field private bhasLoading:Ljava/lang/Boolean;

.field private mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

.field public mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

.field public mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mDeleteId:I

.field mDeleteIdOrigin:Ljava/lang/String;

.field public mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

.field private mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

.field private mFastObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field public mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

.field private mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field private mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

.field private mPrevAccount:Ljava/lang/String;

.field private mPrevAccountId:I

.field private mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

.field private mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

.field private mQueryLoadingDlg:Landroid/app/ProgressDialog;

.field private mState:Lcom/sec/android/socialhub/state/tab/TabState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 98
    sput v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountType:Ljava/lang/String;

    .line 108
    sput v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mMessageViewMode:I

    .line 110
    const/4 v0, -0x3

    sput v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->INIT_ACCOUNTID:I

    .line 117
    sput v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    .line 118
    sput v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyModeofAll:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 69
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    .line 71
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    .line 73
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    .line 76
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mCursor:Landroid/database/Cursor;

    .line 88
    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteId:I

    .line 89
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteIdOrigin:Ljava/lang/String;

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bAllCheckState:Z

    .line 106
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 111
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->INIT_ACCOUNTID:I

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mPrevAccountId:I

    .line 112
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mPrevAccount:Ljava/lang/String;

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bSuccess:Ljava/lang/Boolean;

    .line 124
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryLoadingDlg:Landroid/app/ProgressDialog;

    .line 126
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bhasLoading:Ljava/lang/Boolean;

    .line 128
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    .line 210
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView$1;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mFastObserver:Landroid/database/ContentObserver;

    .line 134
    const-string v0, "MessageListView"

    const-string v1, "MessageListView"

    const-string v2, "start MessageListView"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->initialize()V

    .line 138
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->initLayout()V

    .line 139
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->initListener()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/messagelist/MessageListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->startQuery(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/messagelist/MessageListView;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bSuccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static clearOpenedThreadList()V
    .registers 1

    .prologue
    .line 328
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadIndex:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 329
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 330
    return-void
.end method

.method public static getMessageViewMode()I
    .registers 1

    .prologue
    .line 582
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mMessageViewMode:I

    return v0
.end method

.method private getOrderBy(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;I)Ljava/lang/String;
    .registers 6
    .parameter "mode"
    .parameter "accounts"
    .parameter "listBy"

    .prologue
    .line 490
    packed-switch p1, :pswitch_data_2a

    .line 497
    :cond_3
    packed-switch p3, :pswitch_data_30

    .line 509
    const-string v0, "date DESC"

    :goto_8
    return-object v0

    .line 493
    :pswitch_9
    const-string v0, "2_Email"

    iget-object v1, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "3_SevenEmail"

    iget-object v1, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    :cond_1d
    const-string v0, "date DESC"

    goto :goto_8

    .line 500
    :pswitch_20
    const-string v0, "date DESC"

    goto :goto_8

    .line 503
    :pswitch_23
    const-string v0, "date ASC"

    goto :goto_8

    .line 506
    :pswitch_26
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->SENDER_SORT_ORDER:Ljava/lang/String;

    goto :goto_8

    .line 490
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    .line 497
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method private getProjection(I)[Ljava/lang/String;
    .registers 11
    .parameter "mode"

    .prologue
    .line 421
    const/4 v5, 0x0

    .line 423
    .local v5, projection:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_3c

    .line 450
    :goto_4
    return-object v5

    .line 426
    :pswitch_5
    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    .line 427
    goto :goto_4

    .line 430
    :pswitch_8
    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    .line 431
    .local v6, tmpProjection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 432
    .local v2, i:I
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_33

    aget-object v0, v1, v3

    .line 434
    .local v0, a:Ljava/lang/String;
    const-string v7, "date"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 435
    const-string v0, "max(date) as date"

    .line 436
    :cond_22
    const-string v7, "new"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 437
    const-string v0, "sum(new) as new"

    .line 438
    :cond_2c
    aput-object v0, v6, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 441
    .end local v0           #a:Ljava/lang/String;
    :cond_33
    sget v7, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->PROJECTION_CNT:I

    const-string v8, "count(thread_id) as thread_count"

    aput-object v8, v6, v7

    .line 442
    move-object v5, v6

    .line 443
    goto :goto_4

    .line 423
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private getSelection(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "mode"
    .parameter "selection"

    .prologue
    .line 455
    move-object v0, p2

    .line 457
    .local v0, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_1c

    .line 467
    :cond_4
    :goto_4
    return-object v0

    .line 460
    :pswitch_5
    if-eqz v0, :cond_4

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group by thread_id , app_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 457
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private getToken(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)I
    .registers 5
    .parameter "mode"
    .parameter "accounts"

    .prologue
    .line 472
    packed-switch p1, :pswitch_data_18

    .line 485
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 475
    :pswitch_5
    if-eqz p2, :cond_11

    iget-object v0, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v1, "0_All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 477
    :cond_11
    const/4 v0, 0x0

    goto :goto_4

    .line 479
    :cond_13
    const/4 v0, 0x1

    goto :goto_4

    .line 482
    :pswitch_15
    const/4 v0, 0x2

    goto :goto_4

    .line 472
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_15
    .end packed-switch
.end method

.method private initLayout()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 171
    const-string v2, "MessageListView"

    const-string v3, "initLayout()"

    const-string v4, "start initLayout"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    .line 177
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->setListview(Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;)V

    .line 180
    new-instance v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-direct {v2, v3, v4, p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 181
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setOrientation(I)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mSoftKey:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 189
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setNextFocusUpId(I)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setNextFocusUpId(I)V

    .line 194
    return-void
.end method

.method private initListener()V
    .registers 4

    .prologue
    .line 203
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    .line 205
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mGroupClick:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mChildClick:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 208
    return-void
.end method

.method private initialize()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 144
    const-string v0, "MessageListView"

    const-string v1, "initialize()"

    const-string v2, "start initialize"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    .line 150
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    const v2, 0x7f030019

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->getBouncingLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;-><init>(Landroid/content/Context;ILcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    .line 151
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    .line 152
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->setAdapter(Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->setMessageListview(Lcom/sec/android/socialhub/messagelist/MessageListView;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 156
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/AsyncQueryHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    .line 157
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->FAST_REQUERY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mFastObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadList:Ljava/util/HashSet;

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadIndex:Ljava/util/HashSet;

    .line 165
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 167
    return-void
.end method

.method private startQuery(Z)V
    .registers 13
    .parameter "dialog_show"

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "MessageListView"

    const-string v3, "startQuery()"

    const-string v6, "Start startQuery()"

    invoke-static {v0, v3, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1c

    .line 519
    const-string v0, "MessageListView"

    const-string v2, "startQuery()"

    const-string v3, "visible is gone. no more query."

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_1b
    return-void

    .line 523
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v9

    .line 525
    .local v9, current:Lcom/sec/android/socialhub/state/BaseState;
    invoke-virtual {v9}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v8

    .line 527
    .local v8, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    if-eqz v0, :cond_104

    .line 529
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    invoke-direct {p0, v0, v8}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getToken(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)I

    move-result v1

    .line 530
    .local v1, token:I
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getProjection(I)[Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, projection:[Ljava/lang/String;
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v3, v8}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, selection:Ljava/lang/String;
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    sget v3, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    invoke-direct {p0, v0, v8, v3}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getOrderBy(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;I)Ljava/lang/String;

    move-result-object v10

    .line 534
    .local v10, orderBy:Ljava/lang/String;
    const-string v0, "MessageListView"

    const-string v3, " startQuery()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " token  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "MessageListView"

    const-string v3, " startQuery()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " projection  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "MessageListView"

    const-string v3, " startQuery()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " selection  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "MessageListView"

    const-string v3, " startQuery()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " orderBy  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->changeQuery(I[Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setListItemCount()V

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->stopDialog()V

    .line 544
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d8

    .line 546
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bhasLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 548
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Lcom/sec/android/socialhub/state/BaseState;->showLoadingDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryLoadingDlg:Landroid/app/ProgressDialog;

    .line 551
    :cond_d8
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateLocalBadge(Landroid/content/Context;)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x9c4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 556
    .end local v1           #token:I
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v10           #orderBy:Ljava/lang/String;
    :cond_104
    const-string v0, "MessageListView"

    const-string v2, "startQuery()"

    const-string v3, "mQueryBuilder is null"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b
.end method


# virtual methods
.method public getCursorCount()I
    .registers 3

    .prologue
    .line 408
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    if-eqz v1, :cond_11

    .line 410
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 411
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    .line 413
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 416
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
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
    .line 730
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v5, field_elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v6, name_field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v4, date_field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "m_content"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    const-string v8, "m_subject"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    const-string v8, "name"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    const-string v8, "date"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e0

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 741
    .local v0, all:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e3

    invoke-direct {v2, v8, v5}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 742
    .local v2, contents:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v7, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e1

    invoke-direct {v7, v8, v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 743
    .local v7, sender:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v3, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v8, 0x7f0800e2

    invoke-direct {v3, v8, v4}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 745
    .local v3, date:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    return-object v1
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 652
    return-void
.end method

.method public onChangeAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 779
    return-void
.end method

.method public onChangeViewMode()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 664
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/state/MessageBaseState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->getMode()I

    move-result v1

    sput v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mMessageViewMode:I

    .line 666
    sget v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mMessageViewMode:I

    packed-switch v1, :pswitch_data_a4

    .line 707
    :goto_17
    return-void

    .line 669
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1, v5}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->clean(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 677
    .local v0, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v2, "0_All"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v2, "2_Email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v2, "3_SevenEmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v2, "5_SNS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 679
    :cond_65
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v1, v4}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->useFlickDown(Z)V

    .line 682
    :goto_6a
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setDeleteModeEnabled(Z)V

    goto :goto_17

    .line 681
    :cond_70
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->useFlickDown(Z)V

    goto :goto_6a

    .line 686
    .end local v0           #accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :pswitch_76
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1, v5}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 691
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->clean(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->useFlickDown(Z)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v1, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setDeleteModeEnabled(Z)V

    goto :goto_17

    .line 697
    :pswitch_93
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->useFlickDown(Z)V

    .line 704
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setDeleteModeEnabled(Z)V

    goto/16 :goto_17

    .line 666
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_18
        :pswitch_76
        :pswitch_93
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 335
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mCursor:Landroid/database/Cursor;

    .line 339
    :cond_c
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    if-eqz v0, :cond_17

    .line 341
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->onDestroy()V

    .line 342
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    .line 345
    :cond_17
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    if-eqz v0, :cond_28

    .line 347
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 348
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    .line 351
    :cond_28
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mFastObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_39

    .line 353
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mFastObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 354
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mFastObserver:Landroid/database/ContentObserver;

    .line 357
    :cond_39
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    if-eqz v0, :cond_44

    .line 359
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->destroy()V

    .line 360
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryHandler:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    .line 363
    :cond_44
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    if-eqz v0, :cond_4f

    .line 365
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->onDestroy()V

    .line 366
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    .line 369
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    if-eqz v0, :cond_5a

    .line 371
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onDestroy()V

    .line 372
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 375
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    if-eqz v0, :cond_65

    .line 377
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->onDestroy()V

    .line 378
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEventHandler:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    .line 381
    :cond_65
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->stopDialog()V

    .line 383
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setEnabledEmailNotify(Ljava/lang/Boolean;)V

    .line 385
    invoke-super {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onDestroy()V

    .line 387
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mHandler:Landroid/os/Handler;

    .line 388
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    .line 391
    return-void
.end method

.method public onGatewayButtonClick()V
    .registers 4

    .prologue
    .line 402
    invoke-super {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onGatewayButtonClick()V

    .line 403
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 404
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 930
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onMessageApiCalled(III)V

    .line 932
    packed-switch p2, :pswitch_data_22

    .line 962
    :cond_6
    :goto_6
    :pswitch_6
    :sswitch_6
    return-void

    .line 945
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_6

    .line 947
    sparse-switch p3, :sswitch_data_34

    .line 954
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_6

    .line 932
    :pswitch_data_22
    .packed-switch 0x13
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 947
    :sswitch_data_34
    .sparse-switch
        0x2 -> :sswitch_6
        0x8 -> :sswitch_6
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 835
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onMessageReponse(IIZILjava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bSuccess:Ljava/lang/Boolean;

    monitor-enter v1

    .line 839
    :try_start_6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bSuccess:Ljava/lang/Boolean;

    .line 842
    packed-switch p2, :pswitch_data_6e

    .line 924
    :cond_f
    :goto_f
    :pswitch_f
    monitor-exit v1

    .line 925
    return-void

    .line 847
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getReqMap()Ljava/util/ArrayList;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_f

    .line 851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 853
    const-string v2, "MessageListView"

    const-string v3, "onMessageReponse()"

    const-string v4, "ArrayList contains reqID"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 857
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 859
    const-string v0, "MessageListView"

    const-string v2, "onMessageReponse()"

    const-string v3, "all request are handled."

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageListView$2;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 924
    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_4d

    throw v0

    .line 875
    :pswitch_50
    :try_start_50
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_f

    .line 877
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_f

    .line 891
    :pswitch_5a
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 893
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/socialhub/messagelist/MessageListView$3;

    invoke-direct {v2, p0, p4}, Lcom/sec/android/socialhub/messagelist/MessageListView$3;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListView;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_4d

    goto :goto_f

    .line 842
    nop

    :pswitch_data_6e
    .packed-switch 0x13
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_5a
        :pswitch_f
        :pswitch_50
        :pswitch_50
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_5a
    .end packed-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 223
    const-string v1, "MessageListView"

    const-string v2, "onPause()"

    const-string v3, "Start onPause()"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->onChangeViewMode()V

    .line 226
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 231
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const-string v1, "2_Email"

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "3_SevenEmail"

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "0_All"

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 233
    :cond_40
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setEnabledEmailNotify(Ljava/lang/Boolean;)V

    .line 237
    :cond_48
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .prologue
    .line 711
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 713
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->onPause()V

    .line 714
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->onResume()V

    .line 716
    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 245
    invoke-super {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onResume()V

    .line 247
    const-string v5, "MessageListView"

    const-string v6, "onResume()"

    const-string v7, "Start onResume()"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 250
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v5

    if-ne v5, v8, :cond_33

    .line 252
    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v1

    .line 254
    .local v1, display_account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :goto_21
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v5

    if-ne v5, v8, :cond_2a

    .line 256
    invoke-static {v8, v1}, Lcom/sec/android/socialhub/split/HubSplitSetting;->setSelectedAccount(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 259
    :cond_2a
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    if-eqz v5, :cond_33

    .line 261
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    invoke-interface {v5, v1}, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;->onAccountDisplayed(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 265
    .end local v1           #display_account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_33
    const/4 v3, 0x0

    .line 267
    .local v3, isModeChanged:Z
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mObserver:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/sec/android/socialhub/util/SocialHubUtil;->AccountVaildCheck(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 273
    :try_start_49
    sget v4, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    .line 274
    .local v4, prevEmailViewMode:I
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prefer_view_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    .line 275
    sget v5, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_c8

    if-eq v4, v5, :cond_5f

    .line 276
    const/4 v3, 0x1

    .line 283
    .end local v4           #prevEmailViewMode:I
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->onChangeViewMode()V

    .line 284
    invoke-virtual {p0, v9}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setVisibility(I)V

    .line 286
    if-nez v3, :cond_7b

    iget v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mPrevAccountId:I

    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_7b

    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mPrevAccount:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d5

    .line 288
    :cond_7b
    const/4 v3, 0x0

    .line 290
    iget-object v5, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mPrevAccountId:I

    .line 291
    iget-object v5, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    iput-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mPrevAccount:Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v5, v10}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 294
    invoke-virtual {p0, v9}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setEnabledEmptyView(Z)V

    .line 295
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bhasLoading:Ljava/lang/Boolean;

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->startQuery()V

    .line 305
    :goto_99
    const-string v5, "2_Email"

    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b7

    const-string v5, "3_SevenEmail"

    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b7

    const-string v5, "0_All"

    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 307
    :cond_b7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setEnabledEmailNotify(Ljava/lang/Boolean;)V

    .line 314
    :cond_be
    :goto_be
    return-void

    .line 252
    .end local v3           #isModeChanged:Z
    :cond_bf
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v10}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_21

    .line 278
    .restart local v3       #isModeChanged:Z
    :catch_c8
    move-exception v2

    .line 280
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MessageListView"

    const-string v6, "onResume()"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 300
    .end local v2           #e:Ljava/lang/Exception;
    :cond_d5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->bhasLoading:Ljava/lang/Boolean;

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->startQuery()V

    goto :goto_99

    .line 312
    :cond_df
    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_be
.end method

.method public onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    .registers 7
    .parameter "str"
    .parameter "model"

    .prologue
    .line 756
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "all_field"

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 760
    const-string v1, "search_model"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 762
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    if-eqz v1, :cond_21

    .line 764
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->setBundle(Landroid/os/Bundle;)V

    .line 765
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->startQuery()V

    .line 771
    :goto_20
    return-void

    .line 769
    :cond_21
    const-string v1, "MessageListView"

    const-string v2, "onSearchText()"

    const-string v3, "mQueryBuilder is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 15
    .parameter "app_type"
    .parameter "id"
    .parameter "folder"
    .parameter "message"
    .parameter "thread"
    .parameter "isAll"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 783
    if-nez p2, :cond_2d

    new-array v3, v1, [Ljava/lang/String;

    aput-object v2, v3, v0

    .line 784
    .local v3, _id:[Ljava/lang/String;
    :goto_9
    if-nez p3, :cond_2f

    new-array v4, v1, [Ljava/lang/String;

    aput-object v2, v4, v0

    .line 785
    .local v4, _folder:[Ljava/lang/String;
    :goto_f
    if-nez p4, :cond_31

    new-array v5, v1, [Ljava/lang/String;

    aput-object v2, v5, v0

    .line 786
    .local v5, _message:[Ljava/lang/String;
    :goto_15
    if-nez p5, :cond_33

    new-array v6, v1, [Ljava/lang/String;

    aput-object v2, v6, v0

    .line 788
    .local v6, _thread:[Ljava/lang/String;
    :goto_1b
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0

    .end local v3           #_id:[Ljava/lang/String;
    .end local v4           #_folder:[Ljava/lang/String;
    .end local v5           #_message:[Ljava/lang/String;
    .end local v6           #_thread:[Ljava/lang/String;
    :cond_2d
    move-object v3, p2

    .line 783
    goto :goto_9

    .restart local v3       #_id:[Ljava/lang/String;
    :cond_2f
    move-object v4, p3

    .line 784
    goto :goto_f

    .restart local v4       #_folder:[Ljava/lang/String;
    :cond_31
    move-object v5, p4

    .line 785
    goto :goto_15

    .restart local v5       #_message:[Ljava/lang/String;
    :cond_33
    move-object v6, p5

    .line 786
    goto :goto_1b
.end method

.method public requestRefresh()V
    .registers 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    if-eqz v0, :cond_9

    .line 1031
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->onFlickDown()V

    .line 1033
    :cond_9
    return-void
.end method

.method public requestRemoteSync(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "type"
    .parameter "id"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestServerSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setEnabledEmailNotify(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "flag"

    .prologue
    .line 318
    const-string v1, "MessageListView"

    const-string v2, "setEnabledEmailNotify()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.ACTION_SOCIALHUB_ON_TOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "com.android.email.intent.extra.SOCIALHUB_ON_TOP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 324
    return-void
.end method

.method public setEnabledEmptyView(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    if-eqz v0, :cond_11

    .line 396
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mBouncingLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;->setVisibleEmptView(Z)V

    .line 397
    :cond_11
    return-void
.end method

.method public setOnSplitAccountDisplayListener(Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountChangeListner:Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    .line 199
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 6
    .parameter "builder"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 722
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 723
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->setEditText(Landroid/widget/EditText;)V

    .line 724
    const-string v0, "MessageListView"

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

    .line 725
    return-void
.end method

.method public startQuery()V
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->startQuery(Z)V

    .line 563
    return-void
.end method

.method public stopDialog()V
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 569
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mQueryLoadingDlg:Landroid/app/ProgressDialog;

    .line 572
    :cond_c
    return-void
.end method

.method public updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 18
    .parameter "app_type"
    .parameter "id"
    .parameter "option"
    .parameter "folder"
    .parameter "message"
    .parameter "thread"
    .parameter "status"

    .prologue
    .line 803
    if-nez p2, :cond_38

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v3, v0

    .line 804
    .local v3, _id:[Ljava/lang/String;
    :goto_9
    if-nez p4, :cond_3a

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v5, v0

    .line 805
    .local v5, _folder:[Ljava/lang/String;
    :goto_12
    if-nez p5, :cond_3c

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v6, v0

    .line 806
    .local v6, _message:[Ljava/lang/String;
    :goto_1b
    if-nez p6, :cond_3e

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v7, v0

    .line 808
    .local v7, _thread:[Ljava/lang/String;
    :goto_24
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->updateMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v9

    .line 822
    .local v9, ret:I
    return v9

    .end local v3           #_id:[Ljava/lang/String;
    .end local v5           #_folder:[Ljava/lang/String;
    .end local v6           #_message:[Ljava/lang/String;
    .end local v7           #_thread:[Ljava/lang/String;
    .end local v9           #ret:I
    :cond_38
    move-object v3, p2

    .line 803
    goto :goto_9

    .restart local v3       #_id:[Ljava/lang/String;
    :cond_3a
    move-object v5, p4

    .line 804
    goto :goto_12

    .restart local v5       #_folder:[Ljava/lang/String;
    :cond_3c
    move-object v6, p5

    .line 805
    goto :goto_1b

    .restart local v6       #_message:[Ljava/lang/String;
    :cond_3e
    move-object/from16 v7, p6

    .line 806
    goto :goto_24
.end method
