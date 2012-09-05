.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;
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
    .line 551
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.socialhub.CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, contactIntent:Landroid/content/Intent;
    const-string v1, "sp_type"

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    const-string v1, "recipient_count"

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientCount:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string v2, "selected_recipients"

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v1

    if-nez v1, :cond_33

    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 561
    return-void

    .line 558
    :cond_33
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_28
.end method
