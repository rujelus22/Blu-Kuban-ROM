.class Lcom/google/android/apps/translate/conversation/ConversationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationActivity;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->access$000(Lcom/google/android/apps/translate/conversation/ConversationActivity;)Lcom/google/android/apps/translate/conversation/ConversationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->refreshLanguageList()V

    .line 52
    return-void
.end method
