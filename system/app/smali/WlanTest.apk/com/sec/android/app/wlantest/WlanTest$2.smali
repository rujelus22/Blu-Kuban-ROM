.class Lcom/sec/android/app/wlantest/WlanTest$2;
.super Landroid/content/BroadcastReceiver;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/wlantest/WlanTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/wlantest/WlanTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/wlantest/WlanTest;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$2;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In mReceiver getAction : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BYPASS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "BYPASS"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "S_DATA = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S_DATA"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v8, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 252
    new-instance v1, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;

    invoke-direct {v1}, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;-><init>()V

    .line 253
    .local v1, args:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;
    const-string v8, "S_DATA"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->data:Ljava/lang/String;

    .line 254
    const/4 v7, -0x1

    .line 255
    .local v7, rilcmd:I
    const-string v8, "BYPASS"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_f1

    .line 256
    const-string v8, "CMDID"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 257
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_CMDID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_9a
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iput-object v8, v1, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    .line 266
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest$DutId;->values()[Lcom/sec/android/app/wlantest/WlanTest$DutId;

    move-result-object v2

    .local v2, arr$:[Lcom/sec/android/app/wlantest/WlanTest$DutId;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_a4
    if-ge v3, v5, :cond_b0

    aget-object v4, v2, v3

    .line 267
    .local v4, id:Lcom/sec/android/app/wlantest/WlanTest$DutId;
    invoke-virtual {v4}, Lcom/sec/android/app/wlantest/WlanTest$DutId;->ordinal()I

    move-result v8

    if-ne v8, v7, :cond_133

    .line 268
    iput-object v4, v1, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    .line 273
    .end local v4           #id:Lcom/sec/android/app/wlantest/WlanTest$DutId;
    :cond_b0
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Command ID <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">, Command Data<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->data:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 276
    .local v6, message:Landroid/os/Message;
    const/16 v8, 0x106

    iput v8, v6, Landroid/os/Message;->what:I

    .line 277
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest$2;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    #getter for: Lcom/sec/android/app/wlantest/WlanTest;->mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;
    invoke-static {v8}, Lcom/sec/android/app/wlantest/WlanTest;->access$300(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    .end local v1           #args:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;
    .end local v2           #arr$:[Lcom/sec/android/app/wlantest/WlanTest$DutId;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #message:Landroid/os/Message;
    .end local v7           #rilcmd:I
    :cond_f0
    return-void

    .line 260
    .restart local v1       #args:Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;
    .restart local v7       #rilcmd:I
    :cond_f1
    iget-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest$2;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    const-string v9, "CMDID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/sec/android/app/wlantest/WlanTest;->convertSubCmd(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/sec/android/app/wlantest/WlanTest;->access$200(Lcom/sec/android/app/wlantest/WlanTest;Ljava/lang/String;)I

    move-result v7

    .line 261
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_CMDID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertSubCmd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a

    .line 266
    .restart local v2       #arr$:[Lcom/sec/android/app/wlantest/WlanTest$DutId;
    .restart local v3       #i$:I
    .restart local v4       #id:Lcom/sec/android/app/wlantest/WlanTest$DutId;
    .restart local v5       #len$:I
    :cond_133
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a4
.end method
