.class Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;
.super Ljava/lang/Object;
.source "SocialHubNotePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    iget-boolean v0, v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    if-nez v0, :cond_4f

    .line 242
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    .line 244
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 246
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mCategory:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mFriendsID:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->notePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 255
    .local v6, req_id:I
    if-gez v6, :cond_4f

    .line 257
    const-string v0, "SocialHubNotePostActivity"

    const-string v1, "onClick()"

    const-string v2, "message sending error!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    .line 263
    .end local v6           #req_id:I
    :cond_4f
    return-void
.end method
