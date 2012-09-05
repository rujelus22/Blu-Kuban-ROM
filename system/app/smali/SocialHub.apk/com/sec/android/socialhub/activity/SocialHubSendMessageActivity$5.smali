.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 652
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x0

    .line 656
    const/16 v1, 0x43

    if-ne p2, v1, :cond_35

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_35

    .line 658
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v1

    if-lez v1, :cond_35

    .line 660
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->requestLastButtonFocus()Z

    .line 661
    const/4 v0, 0x1

    .line 668
    :cond_35
    return v0
.end method
