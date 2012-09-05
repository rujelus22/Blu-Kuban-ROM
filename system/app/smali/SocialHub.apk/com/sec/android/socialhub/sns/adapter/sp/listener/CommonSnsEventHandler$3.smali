.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;
.super Ljava/lang/Object;
.source "CommonSnsEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 256
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->isAlive()Z

    move-result v3

    if-nez v3, :cond_b

    .line 271
    :goto_a
    return-void

    .line 259
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 261
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 262
    .local v0, info:Lcom/sec/android/socialhub/feedslist/FeedView;
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->onExpandMenuClick(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 263
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v2, replyView:Landroid/content/Intent;
    const-string v3, "taISpType"

    iget-object v4, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v3, "taActivityId"

    iget-object v4, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v3, "taReceiverId"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v3, "taReceiverName"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v3, "reciver_count"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method
