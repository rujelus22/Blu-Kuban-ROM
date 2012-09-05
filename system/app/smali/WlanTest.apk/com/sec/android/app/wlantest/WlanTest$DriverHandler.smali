.class Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
.super Landroid/os/Handler;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/wlantest/WlanTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DriverHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/wlantest/WlanTest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    .line 1271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1272
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/16 v7, 0x105

    const/16 v6, 0x101

    const/16 v5, 0xa

    .line 1275
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1276
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1278
    .local v0, guiMsg:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1e4

    .line 1359
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1361
    :goto_18
    return-void

    .line 1281
    :pswitch_19
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1282
    .local v2, mode:Ljava/lang/String;
    const-string v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 1283
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mfgloader:-l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1285
    const-string v3, "ok"

    #calls: Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/wlantest/WlanTest;->access$700(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1286
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1287
    const-string v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->TestMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    :goto_63
    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$502(Lcom/sec/android/app/wlantest/WlanTest$FWMode;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 1297
    :goto_66
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1298
    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;
    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$300(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1300
    iput v6, v0, Landroid/os/Message;->what:I

    .line 1301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Driver loaded ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1302
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_18

    .line 1287
    :cond_a9
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NormalMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    goto :goto_63

    .line 1289
    :cond_ac
    const-string v3, "mfgloader:-u"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1290
    const-wide/16 v3, 0x3e8

    :try_start_b3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b6} :catch_1e1

    .line 1291
    :goto_b6
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$502(Lcom/sec/android/app/wlantest/WlanTest$FWMode;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    goto :goto_66

    .line 1295
    :cond_bc
    const-string v3, "NG"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_66

    .line 1307
    .end local v2           #mode:Ljava/lang/String;
    :pswitch_c1
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1309
    const-string v3, "mfgloader:-u"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1311
    const-string v3, "unloaded"

    #calls: Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/wlantest/WlanTest;->access$700(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1312
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 1313
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$502(Lcom/sec/android/app/wlantest/WlanTest$FWMode;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 1315
    :cond_e3
    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;
    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$300(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1317
    iput v6, v0, Landroid/os/Message;->what:I

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n Driver unloaded ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1319
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_18

    .line 1324
    :pswitch_116
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1326
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1327
    .restart local v2       #mode:Ljava/lang/String;
    const-string v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12c

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1dc

    .line 1328
    :cond_12c
    const-string v3, "mfgloader:-u"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1329
    const-string v3, "unloaded"

    const/4 v4, 0x5

    #calls: Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/wlantest/WlanTest;->access$700(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1330
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 1331
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$502(Lcom/sec/android/app/wlantest/WlanTest$FWMode;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mfgloader:-l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1334
    const-string v3, "ok"

    #calls: Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/wlantest/WlanTest;->access$700(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1335
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 1336
    const-string v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->TestMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    :goto_183
    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$502(Lcom/sec/android/app/wlantest/WlanTest$FWMode;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 1350
    :goto_186
    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;
    invoke-static {v3}, Lcom/sec/android/app/wlantest/WlanTest;->access$300(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    iput v6, v0, Landroid/os/Message;->what:I

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n Driver changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1354
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_18

    .line 1336
    :cond_1c7
    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NormalMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    goto :goto_183

    .line 1338
    :cond_1ca
    const-string v3, "mfgloader:-u"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1339
    const-wide/16 v3, 0x3e8

    :try_start_1d1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d4
    .catch Ljava/lang/InterruptedException; {:try_start_1d1 .. :try_end_1d4} :catch_1d5

    goto :goto_186

    :catch_1d5
    move-exception v3

    goto :goto_186

    .line 1343
    :cond_1d7
    const-string v3, "NG"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_186

    .line 1347
    :cond_1dc
    const-string v3, "NG"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_186

    .line 1290
    :catch_1e1
    move-exception v3

    goto/16 :goto_b6

    .line 1278
    :pswitch_data_1e4
    .packed-switch 0x102
        :pswitch_19
        :pswitch_c1
        :pswitch_116
    .end packed-switch
.end method
