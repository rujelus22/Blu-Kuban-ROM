.class final Lcom/android/phone/PhoneUtils$6;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1755
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1758
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 1769
    :cond_5
    :goto_5
    return-void

    .line 1760
    :pswitch_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1761
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$900()Lcom/android/internal/telephony/MmiCode;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$900()Lcom/android/internal/telephony/MmiCode;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1762
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$900()Lcom/android/internal/telephony/MmiCode;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1764
    :cond_23
    const-string v0, "[[[DIALOG_TIMEOUT]]] dismiss~"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1765
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_5

    .line 1758
    :pswitch_data_30
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
