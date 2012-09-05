.class Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;
.super Landroid/os/Handler;
.source "Sec_Ril_Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_106

    .line 257
    :goto_9
    :pswitch_9
    return-void

    .line 158
    :pswitch_a
    const-string v1, "RilDump"

    const-string v2, "QUERY_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 162
    :pswitch_12
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_23

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->infoIPCDumpLog()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    .line 165
    const-string v1, "RilDump"

    const-string v2, "IPC_DUMP_DONE Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 168
    :cond_23
    const-string v1, "RilDump"

    const-string v2, "IPC_DUMP_DONE fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 174
    :pswitch_2b
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3c

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->infoIPCDumpBin()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    .line 177
    const-string v1, "RilDump"

    const-string v2, "IPC_DUMP_DONE Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 180
    :cond_3c
    const-string v1, "RilDump"

    const-string v2, "IPC_DUMP_DONE fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 186
    :pswitch_44
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_55

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->infoRilLog()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    .line 189
    const-string v1, "RilDump"

    const-string v2, "Ril dump Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 192
    :cond_55
    const-string v1, "RilDump"

    const-string v2, "Ril dump fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 198
    :pswitch_5d
    const-string v1, "RilDump"

    const-string v2, "EVENT_TICK!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 203
    :pswitch_65
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_78

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v2, "DPram_dump Success path :: /data/log/dpram_dump"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 206
    const-string v1, "RilDump"

    const-string v2, "DPram_dump Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 210
    :cond_78
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v2, "DPram_dump fail"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 211
    const-string v1, "RilDump"

    const-string v2, "DPram_dump fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 217
    :pswitch_87
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9b

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v2, "NV BACKUP Success"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 220
    const-string v1, "RilDump"

    const-string v2, "NV BACKUP Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 224
    :cond_9b
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v2, "NV BACKUP fail"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 225
    const-string v1, "RilDump"

    const-string v2, "NV BACKUP fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 231
    :pswitch_ab
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_bf

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v2, "NV DELETE Success"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 234
    const-string v1, "RilDump"

    const-string v2, "NV DELETE Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 238
    :cond_bf
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v2, "NV DELETE fail"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 239
    const-string v1, "RilDump"

    const-string v2, "NV DELETE fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 245
    :pswitch_cf
    const-string v1, "RilDump"

    const-string v2, "SET_APN_PROTOCOL_STATE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getApnProtocolState()Z
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mApnProtocol:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const v3, 0x7f05005b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 250
    :cond_f2
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mApnProtocol:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const v3, 0x7f050059

    invoke-virtual {v2, v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 155
    :pswitch_data_106
    .packed-switch 0x3e9
        :pswitch_5d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_65
        :pswitch_2b
        :pswitch_12
        :pswitch_44
        :pswitch_a
        :pswitch_87
        :pswitch_ab
        :pswitch_9
        :pswitch_9
        :pswitch_cf
    .end packed-switch
.end method
