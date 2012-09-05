.class Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;
.super Landroid/os/Handler;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/wlantest/WlanTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# instance fields
.field private mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

.field final synthetic this$0:Lcom/sec/android/app/wlantest/WlanTest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    .line 1138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1140
    new-instance v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    invoke-direct {v0}, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    .line 1141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/16 v8, 0x104

    const/16 v7, 0x102

    .line 1145
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1147
    .local v2, respAction:Landroid/content/Intent;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_2d8

    .line 1262
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1264
    :cond_11
    :goto_11
    return-void

    .line 1149
    :pswitch_12
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_45

    .line 1150
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1151
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_45
    const-string v4, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v4, "CMDID"

    iget-object v5, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v5, v5, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5}, Lcom/sec/android/app/wlantest/WlanTest$DutId;->ordinal()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    .line 1159
    .local v0, args:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentCmd.cmdId : <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">, args.cmdId : <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFirmware : <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_b7

    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NU:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_102

    :cond_b7
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-ne v4, v5, :cond_102

    .line 1163
    const-string v4, "S_DATA"

    const-string v5, "OK"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/wlantest/WlanTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1166
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release wakelock by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1168
    :cond_102
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v4, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v5, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_12c

    .line 1169
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip Command : Command ID <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> is already running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1171
    :cond_12c
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v4, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_14e

    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_14e

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-ne v4, v5, :cond_163

    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->OD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_163

    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NF:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_163

    .line 1173
    :cond_14e
    const-string v4, "WlanTest"

    const-string v5, "Wrong Wlan Test Command."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v4, "S_DATA"

    const-string v5, "NG"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/wlantest/WlanTest;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 1179
    :cond_163
    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    .line 1181
    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->OD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_1a7

    .line 1182
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-ne v4, v5, :cond_189

    .line 1183
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1184
    .local v1, message:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1185
    const-string v4, "test"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1186
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
    invoke-static {v4}, Lcom/sec/android/app/wlantest/WlanTest;->access$600(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11

    .line 1188
    .end local v1           #message:Landroid/os/Message;
    :cond_189
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NormalMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-ne v4, v5, :cond_1e9

    .line 1189
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1190
    .restart local v1       #message:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1191
    const-string v4, "test"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1192
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
    invoke-static {v4}, Lcom/sec/android/app/wlantest/WlanTest;->access$600(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11

    .line 1195
    .end local v1           #message:Landroid/os/Message;
    :cond_1a7
    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NF:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_1e9

    .line 1196
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-ne v4, v5, :cond_1cb

    .line 1197
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1198
    .restart local v1       #message:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1199
    const-string v4, "normal"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1200
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
    invoke-static {v4}, Lcom/sec/android/app/wlantest/WlanTest;->access$600(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11

    .line 1202
    .end local v1           #message:Landroid/os/Message;
    :cond_1cb
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->TestMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-ne v4, v5, :cond_1e9

    .line 1203
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1204
    .restart local v1       #message:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1205
    const-string v4, "normal"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1206
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
    invoke-static {v4}, Lcom/sec/android/app/wlantest/WlanTest;->access$600(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11

    .line 1217
    .end local v1           #message:Landroid/os/Message;
    :cond_1e9
    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NF:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_1f5

    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NU:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_218

    .line 1218
    :cond_1f5
    const-string v3, "OK"

    .line 1224
    .local v3, rspStr:Ljava/lang/String;
    :goto_1f7
    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_203

    iget-object v4, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NU:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_22a

    .line 1225
    :cond_203
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-eq v4, v5, :cond_22a

    .line 1226
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
    invoke-static {v4}, Lcom/sec/android/app/wlantest/WlanTest;->access$600(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-result-object v4

    const/16 v5, 0x103

    invoke-virtual {v4, v5}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_11

    .line 1220
    .end local v3           #rspStr:Ljava/lang/String;
    :cond_218
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v5, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v6, v0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->data:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .restart local v3       #rspStr:Ljava/lang/String;
    const-string v4, "WlanTest"

    const-string v5, " dutCommand() Complete."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    .line 1230
    :cond_22a
    const-string v4, "S_DATA"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/wlantest/WlanTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 1232
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iput-object v5, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    goto/16 :goto_11

    .line 1237
    .end local v0           #args:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;
    .end local v3           #rspStr:Ljava/lang/String;
    :pswitch_23c
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v4, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_11

    .line 1240
    const-string v4, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    const-string v4, "CMDID"

    iget-object v5, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v5, v5, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5}, Lcom/sec/android/app/wlantest/WlanTest$DutId;->ordinal()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1244
    .restart local v3       #rspStr:Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_274

    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v4, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->OD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_274

    .line 1245
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->OD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1248
    :cond_274
    const-string v4, "S_DATA"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/wlantest/WlanTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 1250
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v4, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq v4, v5, :cond_28e

    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v4, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->NU:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne v4, v5, :cond_2d0

    .line 1251
    :cond_28e
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1252
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release wakelock by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iput-object v5, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    .line 1255
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-virtual {v4}, Lcom/sec/android/app/wlantest/WlanTest;->finish()V

    .line 1258
    :cond_2d0
    iget-object v4, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->mCurrentCmd:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    sget-object v5, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iput-object v5, v4, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    goto/16 :goto_11

    .line 1147
    :pswitch_data_2d8
    .packed-switch 0x105
        :pswitch_23c
        :pswitch_12
    .end packed-switch
.end method
