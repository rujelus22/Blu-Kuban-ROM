.class Lcom/android/sprintmenu/VoicePrivacy$2;
.super Landroid/os/Handler;
.source "VoicePrivacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/VoicePrivacy;
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
    .line 68
    iput-object p1, p0, Lcom/android/sprintmenu/VoicePrivacy$2;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_9a

    .line 123
    :cond_6
    :goto_6
    return-void

    .line 73
    :pswitch_7
    const-string v2, "VoicePrivacy"

    const-string v3, "VOICE PRIVACY SET! response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 76
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_31

    .line 78
    const-string v2, "VoicePrivacy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult Exception Occur!!! Exept Num : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 81
    :cond_31
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 83
    const-string v2, "VoicePrivacy"

    const-string v3, "ar.result == NULL! - No answer for VOICE PRIVACY Set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 90
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3d
    const-string v2, "VoicePrivacy"

    const-string v3, "VOICE PRIVACY GET! response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 93
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_54

    .line 95
    const-string v2, "VoicePrivacy"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 98
    :cond_54
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_60

    .line 100
    const-string v2, "VoicePrivacy"

    const-string v3, "ar.result == NULL! - No answer for VOICE PRIVACY Get response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 104
    :cond_60
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 105
    .local v1, buf:[I
    iget-object v2, p0, Lcom/android/sprintmenu/VoicePrivacy$2;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    aget v3, v1, v4

    #setter for: Lcom/android/sprintmenu/VoicePrivacy;->voicePrivacy:I
    invoke-static {v2, v3}, Lcom/android/sprintmenu/VoicePrivacy;->access$302(Lcom/android/sprintmenu/VoicePrivacy;I)I

    .line 107
    iget-object v2, p0, Lcom/android/sprintmenu/VoicePrivacy$2;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->voicePrivacy:I
    invoke-static {v2}, Lcom/android/sprintmenu/VoicePrivacy;->access$300(Lcom/android/sprintmenu/VoicePrivacy;)I

    move-result v2

    if-nez v2, :cond_87

    .line 109
    const-string v2, "VoicePrivacy"

    const-string v3, "VOICE PRIVACY GET! : Unchecked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/android/sprintmenu/VoicePrivacy$2;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->checkbox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/sprintmenu/VoicePrivacy;->access$000(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 114
    :cond_87
    const-string v2, "VoicePrivacy"

    const-string v3, "VOICE PRIVACY GET! : checked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/android/sprintmenu/VoicePrivacy$2;->this$0:Lcom/android/sprintmenu/VoicePrivacy;

    #getter for: Lcom/android/sprintmenu/VoicePrivacy;->checkbox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/sprintmenu/VoicePrivacy;->access$000(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_6

    .line 71
    :pswitch_data_9a
    .packed-switch 0x7ce
        :pswitch_7
        :pswitch_3d
    .end packed-switch
.end method
