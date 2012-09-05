.class Lcom/google/android/apps/plus/phone/ConversationActivity$4;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

.field final synthetic val$conversationRenameInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->val$conversationRenameInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_RENAME:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1000(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 526
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->val$conversationRenameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1102(Lcom/google/android/apps/plus/phone/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_name"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->setConversationLabel(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1200(Lcom/google/android/apps/plus/phone/ConversationActivity;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$4;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I

    .line 531
    return-void
.end method
