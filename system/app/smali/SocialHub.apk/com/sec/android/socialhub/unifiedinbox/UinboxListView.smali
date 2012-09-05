.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;
.super Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;
.source "UinboxListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/socialhub/badge/IBadgeHandler;
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;
.implements Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;


# instance fields
.field private mAddAccount:Landroid/widget/LinearLayout;

.field private mBadgeManager:Lcom/sec/android/socialhub/badge/BadgeManager;

.field private mBubbleCntText:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mHeaderView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

.field private mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

.field private mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

.field private param:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 52
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    .line 54
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mAddAccount:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    .line 57
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleCntText:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->param:Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    instance-of v0, p1, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_25

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    .line 77
    :cond_25
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->initialize(Landroid/content/Context;)V

    .line 79
    const-string v0, "UinboxListView"

    const-string v1, "UinboxListView"

    const-string v2, "create complete"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;)Lcom/sec/android/socialhub/activity/SocialHubMainActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    return-object v0
.end method

.method private declared-synchronized setVisibleMode(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 147
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_24

    .line 150
    packed-switch p1, :pswitch_data_32

    .line 164
    :goto_18
    monitor-exit p0

    return-void

    .line 153
    :pswitch_1a
    const/4 v0, 0x0

    :try_start_1b
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    goto :goto_18

    .line 147
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :pswitch_27
    const/4 v0, 0x1

    :try_start_28
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_24

    goto :goto_18

    .line 150
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public getAccountCount()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 288
    const/4 v7, 0x0

    .line 290
    .local v7, ret:I
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "support_msg=1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    .line 296
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_1b
    return v7
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 85
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    .line 88
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->setOnQuery(Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;)V

    .line 95
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBadgeManager:Lcom/sec/android/socialhub/badge/BadgeManager;

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    const-string v1, "support_msg=1"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->setSelection(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/AsyncQueryHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    const-string v1, "support_msg=1"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->setCondition(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f03003e

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    .line 106
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->param:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v10, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const v0, 0x7f030003

    invoke-static {p1, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleCntText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 120
    new-instance v9, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    invoke-direct {v9, p1, v0, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 121
    .local v9, tag:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->setAllMessageCount()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mAddAccount:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mAddAccount:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->param:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mAddAccount:Landroid/widget/LinearLayout;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 133
    .local v8, mDescription:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mAddAccount:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0120

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 136
    .local v7, mButton:Landroid/widget/Button;
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$2;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public onAccountDisplayed(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 4
    .parameter "wrapper"

    .prologue
    .line 414
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-static {v1, v0}, Lcom/sec/android/socialhub/split/HubFragmentResizer;->drawSplitArrow(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 415
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->backPressed()V

    .line 353
    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->onConfigurationChanged()V

    .line 338
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 339
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->unregisterObserver()V

    .line 315
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    if-eqz v1, :cond_d

    .line 319
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1b

    .line 326
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->removeAllViews()V

    .line 328
    iput-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 329
    iput-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    .line 330
    iput-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mListView:Landroid/widget/ListView;

    .line 331
    iput-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mAddAccount:Landroid/widget/LinearLayout;

    .line 332
    iput-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    .line 333
    return-void

    .line 321
    :catch_1b
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v6, "UinboxListView"

    const-string v7, "onItemClick"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    iget-object v6, v6, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 187
    .local v0, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-nez v0, :cond_34

    .line 189
    const-string v6, "UinboxListView"

    const-string v7, "onItemClick()"

    const-string v8, "account is null!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_33
    :goto_33
    return-void

    .line 193
    :cond_34
    const-string v6, "4_SevenIM"

    iget-object v7, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 195
    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_84

    .line 197
    const-string v6, "UinboxListView"

    const-string v7, "onItemClick()"

    const-string v8, "IM is offline"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/socialhub/util/SocialHubUtil;->signInIMAccount(Landroid/content/Context;I)V

    goto :goto_33

    .line 202
    :cond_5c
    const-string v6, "1_Messaging"

    iget-object v7, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 204
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v3

    .line 205
    .local v3, message:Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->isSupport(I)Z

    move-result v6

    if-nez v6, :cond_84

    .line 207
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getIntent(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 208
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_33

    .line 212
    :try_start_79
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7e} :catch_7f

    goto :goto_33

    .line 214
    :catch_7f
    move-exception v1

    .line 216
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 223
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #message:Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
    :cond_84
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v4

    .line 225
    .local v4, messageTab:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v4, :cond_a4

    .line 227
    invoke-virtual {v4}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v5

    .line 229
    .local v5, state:Lcom/sec/android/socialhub/state/BaseState;
    if-eqz v5, :cond_9a

    .line 230
    invoke-virtual {v4, v5, v0}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_33

    .line 232
    :cond_9a
    const-string v6, "UinboxListView"

    const-string v7, "onItemClick()"

    const-string v8, "state is null"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 236
    .end local v5           #state:Lcom/sec/android/socialhub/state/BaseState;
    :cond_a4
    const-string v6, "UinboxListView"

    const-string v7, "onItemClick()"

    const-string v8, "messageTab is null"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->unregisterObserver()V

    .line 304
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 374
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->registerObserver()V

    .line 273
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->getAccountCount()I

    move-result v0

    if-eqz v0, :cond_14

    .line 277
    invoke-direct {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->setVisibleMode(I)V

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->startQuery()V

    .line 284
    :goto_13
    return-void

    .line 282
    :cond_14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->setVisibleMode(I)V

    goto :goto_13
.end method

.method public registerObserver()V
    .registers 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 243
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    :goto_12
    return-void

    .line 245
    :cond_13
    const-string v0, "UinboxListView"

    const-string v1, "registerObserver()"

    const-string v2, "context is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public requestRefresh()V
    .registers 1

    .prologue
    .line 384
    return-void
.end method

.method public setAllMessageCount()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBadgeManager:Lcom/sec/android/socialhub/badge/BadgeManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateLocalBadge(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 379
    return-void
.end method

.method public startQuery()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "support_msg=1"

    const-string v7, "_order, account_id asc"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "UinboxListView"

    const-string v1, "startQuery()"

    const-string v2, "query is called"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public unregisterObserver()V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 252
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    :cond_f
    return-void
.end method

.method public updateBadge(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 390
    if-lez p1, :cond_1b

    .line 392
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleCntText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :goto_11
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    if-eqz v1, :cond_1a

    .line 402
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->notifyDataSetChanged()V

    .line 409
    :cond_1a
    :goto_1a
    return-void

    .line 397
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_11

    .line 405
    :catch_23
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method
