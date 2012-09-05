.class Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "HiddenmenuBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 91
    const-string v4, "SprintMenu"

    const-string v5, "Inside Handlemessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 94
    .local v2, selectedMode:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 96
    .local v3, sysProp:Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1c8

    .line 172
    :cond_16
    :goto_16
    return-void

    .line 98
    :pswitch_17
    const-string v4, "SprintMenu"

    const-string v5, "Verify response incoming!!,verify data"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2e

    .line 103
    const-string v4, "SprintMenu"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 106
    :cond_2e
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_16

    .line 108
    const-string v4, "SprintMenu"

    const-string v5, "ar.result == NULL! - No answer"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 114
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3a
    const-string v4, "SprintMenu"

    const-string v5, "Verify response incoming!!,Get data Done"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 117
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_51

    .line 119
    const-string v4, "SprintMenu"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 122
    :cond_51
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_5d

    .line 124
    const-string v4, "SprintMenu"

    const-string v5, "ar.result == NULL! - No answer for response"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 128
    :cond_5d
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 129
    .local v1, buf:[B
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    #setter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4, v5}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$002(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;B)B

    .line 130
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    if-nez v4, :cond_c2

    .line 132
    const-string v4, "SprintMenu"

    const-string v5, ": KOREA"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg ,selectedmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg, sysprop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 139
    :cond_c2
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_119

    .line 141
    const-string v4, "SprintMenu"

    const-string v5, ": Sprint_TestBed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg ,selectedmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg, sysprop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 149
    :cond_119
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_171

    .line 151
    const-string v4, "SprintMenu"

    const-string v5, ": India Mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg ,selectedmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg, sysprop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 158
    :cond_171
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 160
    const-string v4, "SprintMenu"

    const-string v5, ": Mode_Off"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v4, p0, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver$1;->this$0:Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;

    #getter for: Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;->access$000(Lcom/android/sprintmenu/HiddenmenuBroadcastReceiver;)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg ,selectedmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "net.cdma.configurable.mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside Hiddenmenu handlemsg, sysprop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 96
    :pswitch_data_1c8
    .packed-switch 0x7ce
        :pswitch_3a
        :pswitch_17
    .end packed-switch
.end method
