.class Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;
.super Ljava/lang/Object;
.source "VoicemailPinActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->onBaseCreateCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 54
    const/4 v0, 0x6

    if-ne p2, v0, :cond_32

    .line 55
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_23

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENTER down in confirm PIN field, valid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->isInputComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 58
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->isInputComplete()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 62
    :cond_32
    const/4 v0, 0x0

    return v0
.end method
