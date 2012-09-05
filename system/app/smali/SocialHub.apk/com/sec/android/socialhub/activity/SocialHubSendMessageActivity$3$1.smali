.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;

.field final synthetic val$RecipientText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;

    iput-object p2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->val$RecipientText:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 594
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->val$RecipientText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;->val$RecipientText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 596
    return-void
.end method
