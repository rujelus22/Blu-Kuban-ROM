.class Lcom/google/android/apps/translate/conversation/ConversationFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationFragment;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationFragment;->access$000(Lcom/google/android/apps/translate/conversation/ConversationFragment;)Lcom/google/android/apps/translate/conversation/ConversationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->refreshLanguageList()V

    .line 80
    return-void
.end method
