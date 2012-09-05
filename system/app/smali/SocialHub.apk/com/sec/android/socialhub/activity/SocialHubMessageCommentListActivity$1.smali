.class Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;
.super Ljava/lang/Object;
.source "SocialHubMessageCommentListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 213
    invoke-static {}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    const-string v2, "removeMessage thread_id - %s, folder - %s, spType - %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    const-string v2, "5_SNS"

    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mMessageId:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    new-array v6, v9, [Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v8

    .line 232
    .local v8, returnDeleteLog:I
    if-gez v8, :cond_80

    .line 234
    invoke-static {}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOptionsItemSelected()"

    const-string v2, "api call is failed!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_80
    return-void
.end method
