.class Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;
.super Ljava/lang/Object;
.source "SocialHubRetweetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 362
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 364
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mForwardable:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 366
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mForwardable:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 368
    const-string v1, "SocialHubRetweetActivity"

    const-string v2, "onClick()"

    const-string v3, "forward status is TRUE"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->activityForward(Landroid/content/Context;Ljava/lang/String;)I

    .line 411
    :cond_38
    :goto_38
    return-void

    .line 373
    :cond_39
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mForwardable:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 375
    const-string v1, "SocialHubRetweetActivity"

    const-string v2, "onClick()"

    const-string v3, "forward status is DONE"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    const v2, 0x7f080065

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 381
    :cond_5d
    const-string v1, "SocialHubRetweetActivity"

    const-string v2, "onClick()"

    const-string v3, "mstrForwardable is null!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 386
    :cond_67
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_88

    .line 388
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 392
    :cond_88
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 395
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z
    invoke-static {v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$702(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Z)Z

    .line 397
    new-array v0, v2, [I

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->miSpType:I
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)I

    move-result v1

    aput v1, v0, v4

    .line 399
    .local v0, snsSpTypeList:[I
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->peopleProfileSet(Landroid/content/Context;[ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c0

    .line 402
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z
    invoke-static {v1, v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$002(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Z)Z

    goto/16 :goto_38

    .line 406
    :cond_c0
    const-string v1, "SocialHubRetweetActivity"

    const-string v2, "onClick()"

    const-string v3, "comment posting error!!!!!!!!!!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38
.end method
