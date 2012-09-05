.class public Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;
.super Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.source "SocialHubMessageCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;,
        Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;,
        Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;
    }
.end annotation


# static fields
.field private static SNS_ADD_COMMENT:I

.field private static TAG:Ljava/lang/String;

.field private static mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;


# instance fields
.field private Head_layout:Landroid/widget/LinearLayout;

.field private Soft_btn:Landroid/widget/LinearLayout;

.field private bSupportMessageDelete:Z

.field private bSupportUserName:Z

.field private hasUnread:Z

.field private mAdapter:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;

.field private mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field public mDeleteMode:Z

.field protected mDialog:Landroid/app/ProgressDialog;

.field private mFolderType:Ljava/lang/String;

.field public mIsScrolling:Z

.field private mMessageId:Ljava/lang/String;

.field public mNeedRequest:Z

.field private mReceiverCount:I

.field private mReceiverIds:[Ljava/lang/String;

.field private mRefreshMenu:Landroid/view/MenuItem;

.field protected final mReplyClickListener:Landroid/view/View$OnClickListener;

.field private mSenderId:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field private mSpType:I

.field private mThreadId:Ljava/lang/String;

.field manager:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "SocialHubMessageCommentListActivity"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->SNS_ADD_COMMENT:I

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 62
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 74
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mIsScrolling:Z

    .line 77
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDeleteMode:Z

    .line 79
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->manager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 80
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mNeedRequest:Z

    .line 91
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportUserName:Z

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportMessageDelete:Z

    .line 97
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->hasUnread:Z

    .line 339
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReplyClickListener:Landroid/view/View$OnClickListener;

    .line 914
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->SNS_ADD_COMMENT:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->isMyMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportUserName:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReceiverIds:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    return-object v0
.end method

.method private isMyMessage(Ljava/lang/String;)Z
    .registers 13
    .parameter "senderId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 383
    const/4 v9, 0x0

    .line 384
    .local v9, isMyMessage:Z
    const-string v0, "content://com.sec.android.app.provider.sns/people/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 386
    .local v1, baseUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "people.people_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 390
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_30

    move v0, v10

    .line 409
    :goto_2f
    return v0

    .line 394
    :cond_30
    :try_start_30
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_40

    move-result v6

    .line 395
    .local v6, count:I
    if-eqz v6, :cond_3e

    .line 396
    const/4 v9, 0x1

    .line 404
    :goto_37
    if-eqz v7, :cond_3c

    .line 405
    .end local v6           #count:I
    :goto_39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    move v0, v9

    .line 409
    goto :goto_2f

    .line 398
    .restart local v6       #count:I
    :cond_3e
    const/4 v9, 0x0

    goto :goto_37

    .line 400
    .end local v6           #count:I
    :catch_40
    move-exception v8

    .line 401
    .local v8, e:Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    .line 402
    const/4 v9, 0x0

    .line 404
    if-eqz v7, :cond_3c

    goto :goto_39

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_48
    move-exception v0

    if-eqz v7, :cond_4e

    .line 405
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_4e
    throw v0
.end method

.method private setButtonText()V
    .registers 3

    .prologue
    .line 497
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReceiverCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    .line 498
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonText(I)V

    .line 501
    :goto_d
    return-void

    .line 500
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonText(I)V

    goto :goto_d
.end method

.method private setOnClickListener()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method


# virtual methods
.method public drawTitle(I)V
    .registers 6
    .parameter "count"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, format:Ljava/lang/String;
    packed-switch p1, :pswitch_data_28

    .line 514
    const v1, 0x7f080102

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setTitle(Ljava/lang/String;)V

    .line 518
    :goto_1c
    return-void

    .line 510
    :pswitch_1d
    const v1, 0x7f080101

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_1c

    .line 507
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method public getIntentData()V
    .registers 5

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_61

    .line 319
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSenderName:Ljava/lang/String;

    .line 320
    const-string v1, "_id_origin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mMessageId:Ljava/lang/String;

    .line 321
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;

    .line 322
    const-string v1, "sender_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSenderId:Ljava/lang/String;

    .line 323
    const-string v1, "sp_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I

    .line 324
    const-string v1, "sns_receiver_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReceiverCount:I

    .line 325
    const-string v1, "taFolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;

    .line 326
    const-string v1, "new"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_62

    const/4 v1, 0x1

    :goto_4b
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->hasUnread:Z

    .line 328
    const-string v1, "receiveIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReceiverIds:[Ljava/lang/String;

    .line 335
    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v2, "5_SNS"

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I

    invoke-direct {v1, v2, v3}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 337
    :cond_61
    return-void

    .line 326
    :cond_62
    const/4 v1, 0x0

    goto :goto_4b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 598
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 599
    sget v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->SNS_ADD_COMMENT:I

    if-ne p1, v0, :cond_10

    .line 601
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mNeedRequest:Z

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->requestComments()V

    .line 607
    :cond_10
    return-void
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 6
    .parameter "reqType"

    .prologue
    .line 612
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    .line 614
    sparse-switch p1, :sswitch_data_44

    .line 635
    :goto_7
    :sswitch_7
    monitor-exit p0

    return-void

    .line 617
    :sswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_13

    .line 619
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 622
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->showTitleProgress()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 612
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 631
    :sswitch_1a
    :try_start_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_17

    goto :goto_7

    .line 614
    nop

    :sswitch_data_44
    .sparse-switch
        0x16 -> :sswitch_1a
        0x17 -> :sswitch_9
        0x2d -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f030015

    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iput-object p0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    .line 105
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setUse(Z)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setUseEmptyView(Z)V

    .line 110
    invoke-virtual {p0, v11}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setLayout(I)V

    .line 111
    invoke-virtual {p0, v11}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setContentView(I)V

    .line 113
    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->Head_layout:Landroid/widget/LinearLayout;

    .line 114
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->Soft_btn:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->Head_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->Soft_btn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-static {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 118
    invoke-static {p0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->manager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getIntentData()V

    .line 122
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setTitle(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setEmptyMessage(I)V

    .line 126
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    .line 127
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setButtonText()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setTextHint(I)V

    .line 129
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setOnClickListener()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setCountTextView(Landroid/widget/TextView;Z)V

    .line 133
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->getAbsBouningLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Landroid/content/Context;Lcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;

    .line 135
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 138
    .local v7, layout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 142
    .local v8, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 145
    .local v9, tSubject:Landroid/widget/TextView;
    :try_start_ba
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSenderName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/16 v0, 0xf

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportUserName:Z

    .line 147
    const/16 v0, 0x12

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportMessageDelete:Z

    .line 148
    const/16 v0, 0xb

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setSupportByte(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getButton()Landroid/widget/Button;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V
    :try_end_ef
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_ba .. :try_end_ef} :catch_fc

    .line 156
    :goto_ef
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->requestConnect()V

    .line 157
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    const-string v2, "UI End"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 151
    :catch_fc
    move-exception v6

    .line 153
    .local v6, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v6}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_ef
.end method

.method public onCreateListViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreateListViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu;->onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V

    .line 185
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    const v0, 0x7f080083

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    .line 191
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportMessageDelete:Z

    if-eqz v0, :cond_24

    .line 192
    const/4 v0, 0x2

    const v1, 0x7f080002

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    :cond_24
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 372
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onDestroy()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 376
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 379
    :cond_f
    return-void
.end method

.method public onFlickUp()V
    .registers 5

    .prologue
    .line 585
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onFlickUp()V

    .line 587
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->messageThreadRetrieveNext(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "reqOption"

    .prologue
    const/4 v3, 0x0

    .line 897
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onMessageApiCalled(III)V

    .line 899
    packed-switch p2, :pswitch_data_2c

    .line 911
    :goto_7
    :pswitch_7
    return-void

    .line 903
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0800ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 908
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 899
    :pswitch_data_2c
    .packed-switch 0x13
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 7
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 873
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onMessageReponse(IIZILjava/lang/String;)V

    .line 875
    packed-switch p2, :pswitch_data_1e

    .line 892
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 879
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 881
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 883
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->finish()V

    goto :goto_6

    .line 888
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 889
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_6

    .line 875
    :pswitch_data_1e
    .packed-switch 0x13
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_38

    .line 257
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 205
    :pswitch_a
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;
    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 207
    const v2, 0x7f0800bc

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 209
    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    const/high16 v2, 0x104

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->show()Landroid/app/AlertDialog;

    goto :goto_9

    .line 253
    .end local v0           #dialog:Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;
    :pswitch_34
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->requestComments()V

    goto :goto_9

    .line 202
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_a
    .end packed-switch
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onPause()V

    .line 368
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onResume()V

    .line 357
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onServiceConnected()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->requestComments()V

    .line 167
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 13
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v4, 0x0

    .line 640
    sparse-switch p4, :sswitch_data_7a

    .line 674
    :cond_4
    :goto_4
    return-void

    .line 643
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_f

    .line 645
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 648
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->hideTitleProgress()V

    .line 650
    invoke-virtual {p0, p6, p5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->refreshListViewUI(ZLandroid/net/Uri;)V

    .line 652
    iget-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->hasUnread:Z

    if-eqz v2, :cond_4

    .line 654
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->hasUnread:Z

    .line 655
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "new"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 662
    .end local v1           #value:Landroid/content/ContentValues;
    :sswitch_4b
    invoke-virtual {p0, p6, p5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->refreshListViewUI(ZLandroid/net/Uri;)V

    .line 663
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v2, p6}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onFlickUpComplete(Z)V

    goto :goto_4

    .line 667
    :sswitch_54
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 668
    sput-boolean v4, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->requestComments()V

    .line 670
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 671
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 672
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->clearText()V

    goto :goto_4

    .line 640
    nop

    :sswitch_data_7a
    .sparse-switch
        0x16 -> :sswitch_54
        0x17 -> :sswitch_5
        0x2d -> :sswitch_4b
    .end sparse-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 14
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
    const/4 v2, 0x0

    .line 682
    sparse-switch p4, :sswitch_data_30

    .line 705
    :goto_4
    return-void

    .line 685
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_f

    .line 687
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 689
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->hideTitleProgress()V

    .line 691
    invoke-virtual {p0, v2, p5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->refreshListViewUI(ZLandroid/net/Uri;)V

    goto :goto_4

    .line 695
    :sswitch_16
    invoke-virtual {p0, v2, p5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->refreshListViewUI(ZLandroid/net/Uri;)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onFlickUpComplete(Z)V

    goto :goto_4

    .line 699
    :sswitch_1f
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 700
    sput-boolean v2, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 701
    invoke-virtual {p0, v2, p5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->refreshListViewUI(ZLandroid/net/Uri;)V

    .line 702
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_4

    .line 682
    nop

    :sswitch_data_30
    .sparse-switch
        0x16 -> :sswitch_1f
        0x17 -> :sswitch_5
        0x2d -> :sswitch_16
    .end sparse-switch
.end method

.method public refreshListViewUI(ZLandroid/net/Uri;)V
    .registers 11
    .parameter "bContinue"
    .parameter "uri"

    .prologue
    .line 522
    if-nez p2, :cond_c

    .line 524
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->TAG:Ljava/lang/String;

    const-string v2, "refreshListViewUI()"

    const-string v3, "uri is null!!"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_b
    return-void

    .line 528
    :cond_c
    const-string v0, "content://com.sec.android.app.provider.sns/thread_message/thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 536
    .local v1, baseUri:Landroid/net/Uri;
    :try_start_18
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 538
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_35

    .line 542
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 546
    :cond_35
    iput-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 548
    const/4 v0, 0x1

    if-ne p1, v0, :cond_70

    .line 550
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onEnableFooter()V

    .line 557
    :goto_3f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_76

    .line 559
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->drawTitle(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_4d

    goto :goto_b

    .line 566
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_4d
    move-exception v7

    .line 568
    .local v7, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    if-nez v0, :cond_6c

    .line 570
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->TAG:Ljava/lang/String;

    const-string v2, "refreshListViewUI()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListView is null!! context - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_6c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 554
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onDisableFooter()V

    goto :goto_3f

    .line 563
    :cond_76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->drawTitle(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7a} :catch_4d

    goto :goto_b
.end method

.method public requestComments()V
    .registers 7

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->messageThreadRetrieve(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    .line 363
    return-void
.end method
