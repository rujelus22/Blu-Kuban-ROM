.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "KaiXinEventHandler.java"


# instance fields
.field mKaiXinPhotoClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    .line 57
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;->mKaiXinPhotoClickListner:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;->mKaiXinPhotoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mReplyClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method
