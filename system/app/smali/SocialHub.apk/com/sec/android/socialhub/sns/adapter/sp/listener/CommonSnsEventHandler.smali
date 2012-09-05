.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.super Ljava/lang/Object;
.source "CommonSnsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;,
        Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;
    }
.end annotation


# instance fields
.field mActorPhotoClickListner:Landroid/view/View$OnClickListener;

.field public mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

.field public mContext:Landroid/content/Context;

.field public mExpandMenuListener:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;

.field mFavoriteListner:Landroid/view/View$OnClickListener;

.field mFeedClickListner:Landroid/view/View$OnClickListener;

.field mFeedTextListener:Landroid/view/View$OnClickListener;

.field mMessageClickListner:Landroid/view/View$OnClickListener;

.field mMusicClickListener:Landroid/view/View$OnClickListener;

.field public mNoteClickListener:Landroid/view/View$OnClickListener;

.field mPhotoClickListner:Landroid/view/View$OnClickListener;

.field mReplyClickListner:Landroid/view/View$OnClickListener;

.field mSwfClickListener:Landroid/view/View$OnClickListener;

.field mVideoClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    .line 36
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mExpandMenuListener:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;

    .line 133
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mNoteClickListener:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedTextListener:Landroid/view/View$OnClickListener;

    .line 252
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mMessageClickListner:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$4;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedClickListner:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$5;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$5;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mReplyClickListner:Landroid/view/View$OnClickListener;

    .line 373
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$6;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$6;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFavoriteListner:Landroid/view/View$OnClickListener;

    .line 388
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$7;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$7;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mVideoClickListner:Landroid/view/View$OnClickListener;

    .line 415
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mActorPhotoClickListner:Landroid/view/View$OnClickListener;

    .line 436
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mPhotoClickListner:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$10;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$10;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mMusicClickListener:Landroid/view/View$OnClickListener;

    .line 530
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$11;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$11;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mSwfClickListener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->sendThisLinkToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private sendThisLinkToBrowser(Ljava/lang/String;)V
    .registers 5
    .parameter "urlLink"

    .prologue
    .line 595
    if-nez p1, :cond_3

    .line 601
    :goto_2
    return-void

    .line 598
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 600
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method public changeContext(Landroid/content/Context;Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;)V
    .registers 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    .line 46
    return-void
.end method

.method public getActorPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mActorPhotoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getCommentListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getFavoriteListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFavoriteListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getFeedClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getFeedTextClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedTextListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMessageClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mMessageClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMusicClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mMusicClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getNoteClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mNoteClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mPhotoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mReplyClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    return-object v0
.end method

.method public getSwfClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mSwfClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVideoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mVideoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected isAlive()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onExpandMenuClick(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mExpandMenuListener:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mExpandMenuListener:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;->onClick(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 57
    :cond_9
    return-void
.end method

.method public setOnExpandMenuClickListener(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;)V
    .registers 2
    .parameter "listner"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mExpandMenuListener:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;

    .line 51
    return-void
.end method
