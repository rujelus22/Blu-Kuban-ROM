.class Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;
.super Ljava/lang/Object;
.source "SocialHubFeedReplyCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 343
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    .line 345
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 347
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    const/4 v4, 0x1

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z
    invoke-static {v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$102(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;Z)Z

    .line 349
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "taISpType"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v3, "taActivityId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActivityId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v3, "taActorId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "taCommentId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "taCommentSubId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentSubId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "taCommnetType"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentType:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "taContent"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 360
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v3

    if-gez v3, :cond_97

    .line 363
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z
    invoke-static {v3, v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->access$102(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;Z)Z

    .line 364
    const-string v3, "FeedReplyCommentActivity"

    const-string v4, "onClick()"

    const-string v5, "comment posting error!!!!!!!!!!!!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_97
    return-void
.end method
