.class public Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;
.super Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.source "SocialHubNotificationActivity.java"


# static fields
.field public static final CHECK:[Ljava/lang/String;


# instance fields
.field private flag:Z

.field private mAdapter:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMenuRefresh:Landroid/view/MenuItem;

.field private mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

.field private mSpType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "param"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->CHECK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSpType:I

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    .line 45
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    .line 47
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    return-void
.end method

.method private RefreshOptionMenu(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 108
    :cond_9
    return-void
.end method

.method private getIntentData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getIntentWithCheck()Landroid/content/Intent;

    move-result-object v1

    .line 217
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "param"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSpType:I

    .line 218
    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :try_end_15
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_0 .. :try_end_15} :catch_16

    .line 225
    return-void

    .line 220
    .end local v1           #intent:Landroid/content/Intent;
    :catch_16
    move-exception v0

    .line 222
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;->printStackTrace()V

    .line 223
    throw v0
.end method

.method private onHandleCallback(IIILandroid/net/Uri;ZZ)V
    .registers 14
    .parameter "reqID"
    .parameter "reqType"
    .parameter "spType"
    .parameter "uri"
    .parameter "bSuccess"
    .parameter "bContinue"

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$NotificationList;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->PROJECTION:[Ljava/lang/String;

    const-string v3, "name=\'notice\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_20

    .line 271
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    .line 274
    :cond_20
    iput-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    .line 276
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setTitle()V

    .line 278
    sparse-switch p2, :sswitch_data_34

    .line 287
    :goto_28
    return-void

    .line 281
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->hideTitleProgress()V

    goto :goto_28

    .line 284
    :sswitch_2d
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, p6}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onFlickUpComplete(Z)V

    goto :goto_28

    .line 278
    nop

    :sswitch_data_34
    .sparse-switch
        0x1a -> :sswitch_29
        0x2e -> :sswitch_2d
    .end sparse-switch
.end method

.method private requestNotification(Z)V
    .registers 6
    .parameter "bIsNext"

    .prologue
    const/4 v3, 0x1

    .line 229
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    if-eqz v1, :cond_1c

    .line 233
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    const/16 v2, 0x16

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v1

    if-ne v1, v3, :cond_1c

    .line 235
    if-ne p1, v3, :cond_1d

    .line 237
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSpType:I

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->notificationRetrieveNext(Landroid/content/Context;I)I

    .line 261
    :cond_1c
    :goto_1c
    return-void

    .line 245
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSpType:I

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->notificationRetrieve(Landroid/content/Context;IZ)I
    :try_end_29
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 254
    :catch_2a
    move-exception v0

    .line 256
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_1c
.end method

.method private setListener()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    :cond_e
    return-void
.end method

.method private setTitle()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 162
    const/4 v6, 0x0

    .line 164
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 168
    .local v8, unread_noti_cnt:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$Notification;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "count"

    aput-object v4, v2, v3

    const-string v3, "name=\'notice\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v9, :cond_30

    .line 172
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_3a

    move-result v8

    .line 181
    :cond_30
    if-eqz v6, :cond_36

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :goto_35
    const/4 v6, 0x0

    .line 188
    :cond_36
    invoke-virtual {p0, v8}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->drawTitle(I)V

    .line 189
    return-void

    .line 175
    :catch_3a
    move-exception v7

    .line 177
    .local v7, e:Ljava/lang/Exception;
    :try_start_3b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_44

    .line 181
    if-eqz v6, :cond_36

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 181
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v0

    if-eqz v6, :cond_4b

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    const/4 v6, 0x0

    .line 181
    :cond_4b
    throw v0
.end method


# virtual methods
.method public drawTitle(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, format:Ljava/lang/String;
    if-gtz p1, :cond_f

    .line 197
    const v1, 0x7f0800cd

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setTitle(Ljava/lang/String;)V

    .line 210
    :goto_e
    return-void

    .line 200
    :cond_f
    if-le p1, v2, :cond_29

    .line 202
    const v1, 0x7f080104

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_18
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_e

    .line 206
    :cond_29
    const v1, 0x7f080103

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public onApiCalled(I)V
    .registers 3
    .parameter "reqType"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onApiCalled(I)V

    .line 308
    packed-switch p1, :pswitch_data_14

    .line 325
    :goto_6
    return-void

    .line 311
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->showTitleProgress()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    .line 317
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->RefreshOptionMenu(Z)V

    goto :goto_6

    .line 308
    nop

    :pswitch_data_14
    .packed-switch 0x1a
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setUse(Z)V

    .line 66
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setLayout(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setEmptyMessage(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setUseEmptyView(Z)V

    .line 71
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;

    const v2, 0x7f03002f

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/String;

    new-array v5, v5, [I

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->getAbsBouningLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;

    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    const v0, 0x7f0b00d8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :try_start_4c
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->CHECK:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setIntentCompareData([Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->getIntentData()V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setTitle()V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setListener()V
    :try_end_5a
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_4c .. :try_end_5a} :catch_5e

    .line 89
    :goto_5a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->requestConnect()V

    .line 90
    return-void

    .line 84
    :catch_5e
    move-exception v7

    .line 86
    .local v7, e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->finish()V

    goto :goto_5a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 113
    const v0, 0x7f080083

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    .line 118
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->RefreshOptionMenu(Z)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mCursor:Landroid/database/Cursor;

    .line 102
    :cond_f
    return-void
.end method

.method public onFlickUp()V
    .registers 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onFlickUp()V

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->requestNotification(Z)V

    .line 380
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_10

    .line 136
    :goto_8
    return v0

    .line 132
    :pswitch_9
    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    .line 133
    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->requestNotification(Z)V

    .line 134
    const/4 v0, 0x1

    goto :goto_8

    .line 125
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onServiceConnected()V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 294
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onServiceConnected()V

    .line 296
    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mSpType:I

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    .line 298
    invoke-direct {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->requestNotification(Z)V

    .line 299
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

    .line 331
    sparse-switch p4, :sswitch_data_26

    .line 348
    :goto_4
    return-void

    .line 338
    :sswitch_5
    iput-boolean v5, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    .line 339
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_12

    .line 340
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_12
    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p3

    move-object v4, p5

    move v6, p6

    .line 341
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    goto :goto_4

    :sswitch_1c
    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p3

    move-object v4, p5

    move v6, p6

    .line 345
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    goto :goto_4

    .line 331
    :sswitch_data_26
    .sparse-switch
        0x1a -> :sswitch_5
        0x2e -> :sswitch_1c
    .end sparse-switch
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
    .line 356
    sparse-switch p4, :sswitch_data_28

    .line 373
    :goto_3
    return-void

    .line 363
    :sswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    .line 364
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_12

    .line 365
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->mMenuRefresh:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->flag:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 366
    :cond_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    goto :goto_3

    .line 370
    :sswitch_1d
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->onHandleCallback(IIILandroid/net/Uri;ZZ)V

    goto :goto_3

    .line 356
    :sswitch_data_28
    .sparse-switch
        0x1a -> :sswitch_4
        0x2e -> :sswitch_1d
    .end sparse-switch
.end method
