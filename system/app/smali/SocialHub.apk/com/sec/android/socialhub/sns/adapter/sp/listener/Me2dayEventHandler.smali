.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "Me2dayEventHandler.java"


# instance fields
.field mMessageClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    .line 42
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;->mMessageClickListner:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getActorPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;->mMessageClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVideoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
