.class Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;
.super Ljava/lang/Object;
.source "SocialHubFeedsCommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;
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
    .line 951
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 957
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsFavorite:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentFavoritePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v11

    .line 959
    .local v11, ret:I
    if-gez v11, :cond_52

    .line 961
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onClick()"

    const-string v2, "ret is -1!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .end local v11           #ret:I
    :cond_52
    return-void
.end method
