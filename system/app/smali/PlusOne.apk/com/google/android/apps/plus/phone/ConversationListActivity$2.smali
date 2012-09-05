.class Lcom/google/android/apps/plus/phone/ConversationListActivity$2;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ConversationListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationListActivity;

.field final synthetic val$conversationRenameInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationListActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationListActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->val$conversationRenameInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationListActivity;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_RENAME:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/phone/ConversationListActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationListActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 264
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->val$conversationRenameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, newName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->val$conversationRenameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 266
    .local v0, conversationRowId:Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationListActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationListActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->access$100(Lcom/google/android/apps/plus/phone/ConversationListActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I

    .line 268
    return-void
.end method
