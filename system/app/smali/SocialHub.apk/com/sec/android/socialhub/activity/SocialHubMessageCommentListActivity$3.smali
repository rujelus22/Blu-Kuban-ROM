.class Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;
.super Ljava/lang/Object;
.source "SocialHubMessageCommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->setOnClickListener()V
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
    .line 265
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "arg0"

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 268
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSenderName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    .line 270
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    :cond_26
    :goto_26
    return-void

    .line 276
    :cond_27
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->bSupportUserName:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Z

    move-result v0

    if-ne v0, v1, :cond_90

    .line 277
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSenderName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 281
    .local v4, tempReceiverId:[Ljava/lang/String;
    :goto_39
    sget-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    if-nez v0, :cond_26

    .line 283
    sput-boolean v1, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 285
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    if-eqz v0, :cond_26

    .line 287
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)I

    move-result v2

    const-string v3, "reply"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mMessageId:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mThreadId:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mFolderType:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->messagePost(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_26

    .line 304
    invoke-static {}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    const-string v2, "message sending error!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sput-boolean v10, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    goto :goto_26

    .line 279
    .end local v4           #tempReceiverId:[Ljava/lang/String;
    :cond_90
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mReceiverIds:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #tempReceiverId:[Ljava/lang/String;
    goto :goto_39
.end method
