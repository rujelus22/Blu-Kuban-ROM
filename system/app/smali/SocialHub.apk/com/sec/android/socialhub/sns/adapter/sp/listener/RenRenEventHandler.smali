.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "RenRenEventHandler.java"


# instance fields
.field mRenRenPhotoClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    .line 56
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;->mRenRenPhotoClickListner:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;->mRenRenPhotoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mReplyClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method
