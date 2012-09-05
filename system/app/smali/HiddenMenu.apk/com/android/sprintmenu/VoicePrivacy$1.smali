.class Lcom/android/sprintmenu/VoicePrivacy$1;
.super Ljava/lang/Object;
.source "VoicePrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/VoicePrivacy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/VoicePrivacy;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/VoicePrivacy;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/16 v3, 0x7ce

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->checkbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/sprintmenu/VoicePrivacy;->access$000(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 49
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    const-string v1, "Selected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/sprintmenu/VoicePrivacy;->access$200(Lcom/android/sprintmenu/VoicePrivacy;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/sprintmenu/VoicePrivacy;->access$100(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 56
    :goto_2e
    return-void

    .line 53
    :cond_2f
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    const-string v1, "Not selected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/sprintmenu/VoicePrivacy;->access$200(Lcom/android/sprintmenu/VoicePrivacy;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sprintmenu/VoicePrivacy$1;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sprintmenu/VoicePrivacy;->access$100(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    goto :goto_2e
.end method
