.class public Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickReplyButton;
.super Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;
.source "FeedExpandViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuickReplyButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickReplyButton;->this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    .line 64
    const v0, 0x7f0b00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    .line 65
    return-void
.end method


# virtual methods
.method public changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 73
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 74
    .local v0, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    invoke-interface {v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getReplyImageSource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickReplyButton;->changeImageResource(I)V

    .line 75
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_9
    return-void
.end method
