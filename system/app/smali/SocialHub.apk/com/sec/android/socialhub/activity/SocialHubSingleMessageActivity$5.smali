.class Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    .line 538
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    .line 540
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 594
    :cond_26
    :goto_26
    return-void

    .line 546
    :cond_27
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportUserName:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Z

    move-result v0

    if-ne v0, v2, :cond_be

    .line 548
    new-array v4, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 550
    .local v4, tempReceiverId:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v10

    .line 552
    .local v10, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v10, :cond_66

    .line 554
    new-array v4, v2, [Ljava/lang/String;

    .end local v4           #tempReceiverId:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v2, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 562
    .end local v10           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .restart local v4       #tempReceiverId:[Ljava/lang/String;
    :cond_66
    :goto_66
    sget-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    if-nez v0, :cond_c9

    .line 564
    sput-boolean v2, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 566
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    if-eqz v0, :cond_26

    .line 568
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)I

    move-result v2

    const-string v3, "new"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMessageId:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mThreadId:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->messagePost(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_26

    .line 584
    invoke-static {}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    const-string v2, "message sending error!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sput-boolean v11, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    goto/16 :goto_26

    .line 559
    .end local v4           #tempReceiverId:[Ljava/lang/String;
    :cond_be
    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSenderId:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .restart local v4       #tempReceiverId:[Ljava/lang/String;
    goto :goto_66

    .line 592
    :cond_c9
    invoke-static {}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    const-string v2, "mIsPosting is true"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26
.end method
