.class Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->onPreCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v0, 0x0

    .line 545
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 547
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mTwitterID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$102(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFriend:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 550
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFriend:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->isFriend(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 552
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v1, v1, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v1, v1, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mTwitterID:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$100(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->friendDelete(Landroid/content/Context;ILjava/lang/String;)I

    .line 553
    const/4 v0, 0x1

    .line 563
    :cond_6b
    :goto_6b
    return v0

    .line 557
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;

    #getter for: Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mTwitterID:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->access$100(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->friendRequestPost(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_6b
.end method
