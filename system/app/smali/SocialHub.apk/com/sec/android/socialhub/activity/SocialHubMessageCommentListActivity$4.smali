.class Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;
.super Ljava/lang/Object;
.source "SocialHubMessageCommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;
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
    .line 340
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 343
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    const-string v1, "account_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "sp_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v1, "receiverIds"

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReceiverIds:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-static {}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$1000()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method
