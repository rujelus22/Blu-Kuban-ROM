.class Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;
.super Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticipantsCommandListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    .line 74
    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;-><init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onShowParticipantList()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$200(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getParticipantListActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    :cond_1b
    return-void
.end method
