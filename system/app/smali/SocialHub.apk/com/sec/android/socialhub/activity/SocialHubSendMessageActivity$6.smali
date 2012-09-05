.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->buttonDisabled(Landroid/widget/EditText;)V
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
    .line 707
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 727
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 732
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 710
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 712
    .local v0, size:I
    if-nez v0, :cond_19

    .line 714
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1200(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 715
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1200(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 722
    :cond_18
    :goto_18
    return-void

    .line 719
    :cond_19
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1200(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 720
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checkSendbtnStatus()V

    goto :goto_18
.end method
