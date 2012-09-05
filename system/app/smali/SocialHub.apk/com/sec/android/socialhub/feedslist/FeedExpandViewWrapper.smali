.class public Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;
.super Ljava/lang/Object;
.source "FeedExpandViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandMessageButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandRetweetButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandWallPostButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandCommentButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickExpandButton;,
        Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickReplyButton;
    }
.end annotation


# instance fields
.field public mEntireLayout:Landroid/widget/RelativeLayout;

.field public mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mQuickExpand:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

.field public mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 18
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickExpand:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 19
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 20
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 21
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 22
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mEntireLayout:Landroid/widget/RelativeLayout;

    .line 30
    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mEntireLayout:Landroid/widget/RelativeLayout;

    .line 32
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickReplyButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickReplyButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 33
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickExpandButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$QuickExpandButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickExpand:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandReplyButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 36
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandWallPostButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandWallPostButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 37
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandMessageButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandMessageButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 38
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandRetweetButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandRetweetButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 39
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandCommentButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandCommentButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    .line 42
    return-void
.end method


# virtual methods
.method public setAllExpandViewVisible(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public setVisible(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mEntireLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    return-void
.end method
