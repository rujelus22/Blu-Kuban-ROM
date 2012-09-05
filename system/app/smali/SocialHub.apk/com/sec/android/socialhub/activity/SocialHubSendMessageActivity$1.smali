.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 485
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v12

    .line 488
    .local v12, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v0, 0x7

    :try_start_e
    invoke-interface {v12, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-ne v0, v3, :cond_21

    .line 490
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->CheckRecipients()Z
    :try_end_19
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_e .. :try_end_19} :catch_1d

    move-result v0

    if-nez v0, :cond_21

    .line 548
    :cond_1c
    :goto_1c
    return-void

    .line 494
    :catch_1d
    move-exception v11

    .line 496
    .local v11, e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v11}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 499
    .end local v11           #e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_21
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsId()[Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, receiverIds:[Ljava/lang/String;
    const/4 v0, 0x6

    :try_start_2c
    invoke-interface {v12, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v0

    if-ne v0, v3, :cond_3c

    .line 505
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsNameArray()[Ljava/lang/String;
    :try_end_3b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_2c .. :try_end_3b} :catch_5e

    move-result-object v4

    .line 513
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    iget-boolean v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    if-nez v0, :cond_1c

    .line 515
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-interface {v12, v13}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I

    move-result v2

    #calls: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checktextCount(II)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;II)Z

    move-result v0

    if-nez v0, :cond_63

    .line 517
    const-string v0, "SocialHubSendMessageActivity"

    const-string v1, "onClick()"

    const-string v2, "checktextCount is false!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 508
    :catch_5e
    move-exception v10

    .line 510
    .local v10, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v10}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_3c

    .line 521
    .end local v10           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_63
    if-eqz v4, :cond_1c

    .line 523
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    iput-boolean v3, v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    .line 525
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I

    move-result v2

    const-string v3, "new"

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v7

    move-object v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->messagePost(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1c

    .line 543
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    iput-boolean v13, v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    .line 544
    const-string v0, "SocialHubSendMessageActivity"

    const-string v1, "onClick()"

    const-string v2, "posting failed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c
.end method
