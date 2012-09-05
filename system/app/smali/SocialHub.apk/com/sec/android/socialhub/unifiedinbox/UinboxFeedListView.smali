.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;
.super Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;
.source "UinboxFeedListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;


# instance fields
.field mHeaderText:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field mListView:Landroid/widget/ListView;

.field mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

.field mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

.field mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    .line 42
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderText:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    .line 47
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    .line 53
    instance-of v0, p1, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_19

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    .line 58
    :cond_19
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->initialize(Landroid/content/Context;)V

    .line 60
    const-string v0, "UinboxFeedListView"

    const-string v1, "UinboxListView"

    const-string v2, "create complete"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 66
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    .line 70
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/AsyncQueryHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    const-string v1, "app=\'5_SNS\'"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->setCondition(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f03003e

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    .line 77
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    const-string v1, "app=\'5_SNS\'"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->setSelection(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0, v9, v9}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->addView(Landroid/view/View;II)V

    .line 84
    const v0, 0x7f030003

    invoke-static {p1, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderText:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 88
    .local v7, icon:Landroid/widget/ImageView;
    const v0, 0x7f020069

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 91
    new-instance v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    invoke-direct {v8, p1, v0, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 92
    .local v8, tag:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method

.method public onAccountDisplayed(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 4
    .parameter "wrapper"

    .prologue
    .line 246
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-static {v1, v0}, Lcom/sec/android/socialhub/split/HubFragmentResizer;->drawSplitArrow(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 247
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->backPressed()V

    .line 211
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->unregisterObserver()V

    .line 188
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    if-eqz v1, :cond_c

    .line 192
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_10

    .line 199
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->removeAllViews()V

    .line 200
    return-void

    .line 194
    :catch_10
    move-exception v0

    .line 196
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->unregisterObserver()V

    .line 177
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->setVisibility(I)V

    .line 178
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->registerObserver()V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->startQuery()V

    .line 171
    return-void
.end method

.method public registerObserver()V
    .registers 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    :goto_12
    return-void

    .line 141
    :cond_13
    const-string v0, "UinboxFeedListView"

    const-string v1, "registerObserver()"

    const-string v2, "context is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public requestRefresh()V
    .registers 1

    .prologue
    .line 241
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 236
    return-void
.end method

.method public startQuery()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mQueryHandler:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app=\'5_SNS\'"

    const-string v7, "_order, account_id asc"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "UinboxFeedListView"

    const-string v1, "startQuery()"

    const-string v2, "query is called"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public unregisterObserver()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    :cond_f
    return-void
.end method
