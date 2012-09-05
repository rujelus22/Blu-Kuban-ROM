.class Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;
.super Ljava/lang/Object;
.source "SocialHubFeedsCommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 702
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    .line 704
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 706
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    const/4 v4, 0x1

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z
    invoke-static {v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1302(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;Z)Z

    .line 708
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 710
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "taISpType"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    const-string v3, "taActivityId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v3, "taActorId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v3, "taCommentId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v3, "taCommentSubId"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentSubId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "taCommnetType"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v3, "taContent"

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 719
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-interface {v2, v3, v4, v1, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v3

    if-gez v3, :cond_9b

    .line 722
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z
    invoke-static {v3, v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1302(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;Z)Z

    .line 723
    const-string v3, "SocialHubFeedsCommentListActivity"

    const-string v4, "onClick()"

    const-string v5, "comment posting error!!!!!!!!!!!!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_9b
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->imeMgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1900(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1800(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 728
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_ae
    return-void
.end method
