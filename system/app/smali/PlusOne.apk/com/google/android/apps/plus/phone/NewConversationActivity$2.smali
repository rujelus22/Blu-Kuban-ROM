.class Lcom/google/android/apps/plus/phone/NewConversationActivity$2;
.super Ljava/lang/Object;
.source "NewConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/NewConversationActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$400(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$400(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$500(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isAudienceEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setAllowSendMessage(Z)V

    .line 200
    :cond_1e
    return-void

    .line 197
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method
