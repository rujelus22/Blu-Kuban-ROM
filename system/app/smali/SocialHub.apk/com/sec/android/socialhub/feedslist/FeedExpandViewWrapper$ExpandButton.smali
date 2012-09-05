.class public abstract Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;
.super Ljava/lang/Object;
.source "FeedExpandViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ExpandButton"
.end annotation


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mLinearLayout:Landroid/widget/LinearLayout;

.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->this$0:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 201
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    .line 202
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    .line 212
    return-void
.end method


# virtual methods
.method public changeImageResource(I)V
    .registers 3
    .parameter "resource"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :cond_9
    return-void
.end method

.method public changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 207
    return-void
.end method

.method public changeTextResource(I)V
    .registers 3
    .parameter "resource"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :cond_9
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_9
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    return-void
.end method
