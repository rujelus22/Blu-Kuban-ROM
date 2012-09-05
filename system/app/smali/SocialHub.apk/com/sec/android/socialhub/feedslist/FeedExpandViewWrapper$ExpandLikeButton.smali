.class public Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;
.super Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;
.source "FeedExpandViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandLikeButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;->this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;-><init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V

    .line 147
    const v0, 0x7f0b00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 148
    const v0, 0x7f0b00ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0b00ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    .line 150
    return-void
.end method


# virtual methods
.method public changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 9
    .parameter "view"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 155
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 157
    iget-object v4, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 159
    .local v2, sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    iget-object v4, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    if-eqz v4, :cond_35

    iget-object v4, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    .line 161
    .local v1, like_or_favorite:Ljava/lang/String;
    :goto_19
    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isLikeOrFavorite(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move v4, v5

    :goto_20
    invoke-virtual {v2, v4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getDrawable(I)I

    move-result v0

    .line 162
    .local v0, img:I
    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isLikeOrFavorite(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    :goto_2a
    invoke-virtual {v2, v5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getString(I)I

    move-result v3

    .line 164
    .local v3, txt:I
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;->changeImageResource(I)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandLikeButton;->changeTextResource(I)V

    .line 167
    return-void

    .line 159
    .end local v0           #img:I
    .end local v1           #like_or_favorite:Ljava/lang/String;
    .end local v3           #txt:I
    :cond_35
    iget-object v4, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFavorite:Ljava/lang/String;

    goto :goto_19

    .restart local v1       #like_or_favorite:Ljava/lang/String;
    :cond_3a
    move v4, v6

    .line 161
    goto :goto_20

    .restart local v0       #img:I
    :cond_3c
    move v5, v6

    .line 162
    goto :goto_2a
.end method
