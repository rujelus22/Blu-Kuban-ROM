.class Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;
.super Ljava/lang/Object;
.source "SocialHubMessageReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v13, 0x0

    .line 286
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrActorName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    .line 289
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    :cond_22
    :goto_22
    return-void

    .line 293
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v12

    .line 295
    .local v12, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    sget-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    if-nez v0, :cond_22

    .line 297
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    invoke-interface {v12, v13}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)I

    move-result v2

    #calls: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->checktextCount(II)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 302
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverId:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)[Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, receiverID:[Ljava/lang/String;
    const/4 v0, 0x6

    :try_start_4a
    invoke-interface {v12, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v0

    if-ne v0, v3, :cond_5d

    .line 308
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrActorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0
    :try_end_5c
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_4a .. :try_end_5c} :catch_ab

    .end local v4           #receiverID:[Ljava/lang/String;
    .local v11, receiverID:[Ljava/lang/String;
    move-object v4, v11

    .line 316
    .end local v11           #receiverID:[Ljava/lang/String;
    .restart local v4       #receiverID:[Ljava/lang/String;
    :cond_5d
    :goto_5d
    sput-boolean v3, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 318
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 320
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)I

    move-result v2

    const-string v3, "reply"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrMessageId:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrThreadId:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mFolderType:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->messagePost(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_22

    .line 336
    const-string v0, "SocialHubMessageReplyActivity"

    const-string v1, "onClick()"

    const-string v2, "message sending error!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sput-boolean v13, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    goto/16 :goto_22

    .line 311
    :catch_ab
    move-exception v10

    .line 313
    .local v10, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v10}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_5d
.end method
