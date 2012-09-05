.class public Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;
.super Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;
.source "FeedExpandViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandReplyButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;->this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    .line 114
    const v0, 0x7f0b00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0b00a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0b00a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    .line 117
    return-void
.end method


# virtual methods
.method public changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x3

    .line 122
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 124
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 126
    .local v0, sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getDrawable(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;->changeImageResource(I)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getString(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;->changeTextResource(I)V

    .line 128
    return-void
.end method
