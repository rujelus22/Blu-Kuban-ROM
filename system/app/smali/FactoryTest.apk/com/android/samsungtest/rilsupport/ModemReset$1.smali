.class Lcom/android/samsungtest/rilsupport/ModemReset$1;
.super Landroid/os/Handler;
.source "ModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/rilsupport/ModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/ModemReset;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/rilsupport/ModemReset;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/ModemReset$1;->this$0:Lcom/android/samsungtest/rilsupport/ModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 91
    :goto_5
    return-void

    .line 85
    :pswitch_6
    const-string v0, "ModemReset"

    const-string v1, "modem reset done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/ModemReset$1;->this$0:Lcom/android/samsungtest/rilsupport/ModemReset;

    #calls: Lcom/android/samsungtest/rilsupport/ModemReset;->runAndroidFactoryReset()V
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/ModemReset;->access$000(Lcom/android/samsungtest/rilsupport/ModemReset;)V

    goto :goto_5

    .line 83
    nop

    :pswitch_data_14
    .packed-switch 0x3f0
        :pswitch_6
    .end packed-switch
.end method
