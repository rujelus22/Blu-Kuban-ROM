.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;
.super Ljava/lang/Object;
.source "FacebookEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 33
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;->isAlive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 50
    :cond_8
    :goto_8
    return-void

    .line 36
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 38
    .local v2, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 39
    .local v0, info:Lcom/sec/android/socialhub/feedslist/FeedView;
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;->onExpandMenuClick(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 40
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "wallType"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v3, "spType"

    iget-object v4, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v3, "categoryID"

    const-string v4, "wall"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v3, "categoryOwnerID"

    iget-object v4, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_8

    .line 47
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8
.end method
