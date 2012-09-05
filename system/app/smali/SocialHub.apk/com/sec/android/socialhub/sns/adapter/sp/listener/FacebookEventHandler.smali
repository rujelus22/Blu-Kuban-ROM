.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "FacebookEventHandler.java"


# instance fields
.field mWallPostListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    .line 29
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;->mWallPostListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getWallPostListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;->mWallPostListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method
