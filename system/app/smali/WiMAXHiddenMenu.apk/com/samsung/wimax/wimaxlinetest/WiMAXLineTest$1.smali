.class Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;
.super Landroid/content/BroadcastReceiver;
.source "WiMAXLineTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.wimaxtest.App"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 82
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_LAUNCH_ACTION_Receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppOff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 84
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_LAUNCH_ACTION : ESN/NAM Mode OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-virtual {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->finish()V

    .line 86
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, recintent:Landroid/content/Intent;
    const-string v3, "Response"

    const-string v4, "OK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 90
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const-string v3, "WLT MSG"

    const-string v4, "NAMMODE_OFF_RETURNVAL : sendBroadcast (1) !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v2           #recintent:Landroid/content/Intent;
    :cond_53
    :goto_53
    return-void

    .line 95
    .restart local v2       #recintent:Landroid/content/Intent;
    :cond_54
    const-string v3, "WLT MSG"

    const-string v4, "NAMMODE_OFF_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 98
    .end local v2           #recintent:Landroid/content/Intent;
    :cond_5c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AppOn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v2       #recintent:Landroid/content/Intent;
    const-string v3, "Response"

    const-string v4, "OK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_RESPONSE_ACTION : already running..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 103
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    const-string v3, "WLT MSG"

    const-string v4, "NAMMODE_ON_RETURNVAL  : sendBroadcast  (1)!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 108
    :cond_96
    const-string v3, "WLT MSG"

    const-string v4, "NAMMODE_ON_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 112
    .end local v2           #recintent:Landroid/content/Intent;
    :cond_9e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v2       #recintent:Landroid/content/Intent;
    const-string v3, "Response"

    const-string v4, "NG"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v3, "WLT MSG"

    const-string v4, " WIMAX_LINE_TEST_NAMMODE_ACTION : invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_cc

    .line 116
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    const-string v3, "WLT MSG"

    const-string v4, "NAMMODE_FAIL  : sendBroadcast ()!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 121
    :cond_cc
    const-string v3, "WLT MSG"

    const-string v4, "NAMMODE_FAIL :  mContext = null!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 125
    .end local v2           #recintent:Landroid/content/Intent;
    :cond_d4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.wimaxtest.SMDTEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 126
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_SMDTEST_ACTION Receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ModemOn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 128
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-virtual {v3, v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->PowerOnOff(Z)V

    goto/16 :goto_53

    .line 130
    :cond_fa
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ModemOff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 131
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-virtual {v3, v6}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->PowerOnOff(Z)V

    goto/16 :goto_53

    .line 133
    :cond_10d
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "BootWrite"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 134
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-virtual {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Write_EEPROM()V

    goto/16 :goto_53

    .line 137
    :cond_120
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v2       #recintent:Landroid/content/Intent;
    const-string v3, "Response"

    const-string v4, "NG"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "WLT MSG"

    const-string v4, " WIMAX_LINE_TEST_SMDTEST_ACTION : invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_14f

    .line 141
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    const-string v3, "WLT MSG"

    const-string v4, "SMD Action  : FAIL!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 146
    :cond_14f
    const-string v3, "WLT MSG"

    const-string v4, "SMD Action : FAIL!!!!!:  mContext = null!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 150
    .end local v2           #recintent:Landroid/content/Intent;
    :cond_158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.wimaxtest.MAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 151
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_MAC_ACTION Receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MacWrite"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 153
    const-string v3, "WLT MSG"

    const-string v4, "get WRITEMAC_ADDRESS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    const-string v4, "MacWrite"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-virtual {v3, v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Write_Read_MAC(Z)V

    goto/16 :goto_53

    .line 157
    :cond_18f
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MacRead"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 158
    const-string v3, "MacRead"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, readmac:Ljava/lang/String;
    const-string v3, "WLT MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READMAC_ADDRESS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-virtual {v3, v6}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Write_Read_MAC(Z)V

    goto/16 :goto_53

    .line 166
    .end local v1           #readmac:Ljava/lang/String;
    :cond_1c0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, macintent:Landroid/content/Intent;
    const-string v3, "Response"

    const-string v4, "NG"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v3, "WLT MSG"

    const-string v4, " WIMAX_LINE_TEST_MAC_RESPONSE_ACTION : invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1ef

    .line 171
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_MAC_RESPONSE_ACTION_FAIL : sendBroadcast ()!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 175
    :cond_1ef
    const-string v3, "WLT MSG"

    const-string v4, "WIMAX_LINE_TEST_MAC_RESPONSE_ACTION_FAIL :  mContext = null!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53
.end method
