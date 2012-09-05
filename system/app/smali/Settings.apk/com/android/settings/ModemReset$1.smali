.class Lcom/android/settings/ModemReset$1;
.super Landroid/os/Handler;
.source "ModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemReset;


# direct methods
.method constructor <init>(Lcom/android/settings/ModemReset;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/ModemReset$1;->this$0:Lcom/android/settings/ModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 81
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 82
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    .line 93
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_33

    .line 94
    const-string v1, "ModemReset"

    const-string v2, "Modem reset failed due to an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_14
    iget-object v1, p0, Lcom/android/settings/ModemReset$1;->this$0:Lcom/android/settings/ModemReset;

    #calls: Lcom/android/settings/ModemReset;->sendMasterClearIntent()V
    invoke-static {v1}, Lcom/android/settings/ModemReset;->access$000(Lcom/android/settings/ModemReset;)V

    .line 100
    :goto_19
    return-void

    .line 84
    :pswitch_1a
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2b

    .line 85
    const-string v1, "ModemReset"

    const-string v2, "Modem reset failed due to an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_25
    iget-object v1, p0, Lcom/android/settings/ModemReset$1;->this$0:Lcom/android/settings/ModemReset;

    #calls: Lcom/android/settings/ModemReset;->sendMasterClearIntent()V
    invoke-static {v1}, Lcom/android/settings/ModemReset;->access$000(Lcom/android/settings/ModemReset;)V

    goto :goto_19

    .line 87
    :cond_2b
    const-string v1, "ModemReset"

    const-string v2, "Modem reset is done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 96
    :cond_33
    const-string v1, "ModemReset"

    const-string v2, "Modem reset failed, but the reason is unclear"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 82
    nop

    :pswitch_data_3c
    .packed-switch 0x3f0
        :pswitch_1a
    .end packed-switch
.end method
