.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;
.super Ljava/lang/Object;
.source "TwitterEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->isAlive()Z

    move-result v0

    if-nez v0, :cond_a

    .line 79
    :goto_9
    return-void

    .line 44
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 47
    if-eqz v0, :cond_28

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_28

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 56
    :goto_1c
    if-nez v0, :cond_2f

    .line 58
    const-string v0, "SnsCommonListener"

    const-string v1, "onClick()"

    const-string v2, "info is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    goto :goto_1c

    .line 61
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->onExpandMenuClick(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 62
    const-string v1, "SnsCommonListener"

    const-string v2, "onClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clicked Retweet button. sp_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v2, "service_provider"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v2, "activity_id"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "actor_id"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "actor_name"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "myId"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "forwardable"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrForwardable:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v2, "taContent"

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_b4

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_9

    .line 77
    :cond_b4
    const-string v0, "SnsCommonListener"

    const-string v1, "onClick()"

    const-string v2, "context is not instance of Activity"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method
