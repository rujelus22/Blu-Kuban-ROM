.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "QzoneEventHandler.java"


# instance fields
.field mQzoneFeedClickListner:Landroid/view/View$OnClickListener;

.field mQzoneFeedTextListener:Landroid/view/View$OnClickListener;

.field mQzonePhotoClickListner:Landroid/view/View$OnClickListener;

.field mQzoneReplyClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    .line 109
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzonePhotoClickListner:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$2;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneReplyClickListner:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$3;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneFeedTextListener:Landroid/view/View$OnClickListener;

    .line 383
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$4;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneFeedClickListner:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getCommentListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getFeedClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getFeedTextClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneFeedTextListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzonePhotoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->mQzoneReplyClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method
