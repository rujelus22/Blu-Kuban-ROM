.class Lcom/samsung/map/MmsSmsMessageFolder$1;
.super Landroid/content/BroadcastReceiver;
.source "MmsSmsMessageFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/map/MmsSmsMessageFolder;->pushSmsMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/MmsSmsMessageFolder;


# direct methods
.method constructor <init>(Lcom/samsung/map/MmsSmsMessageFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/samsung/map/MmsSmsMessageFolder$1;->this$0:Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "c"
    .parameter "sentIntent"

    .prologue
    const/4 v2, 0x0

    .line 1632
    if-eqz p1, :cond_9c

    if-eqz p2, :cond_9c

    .line 1634
    invoke-virtual {p0}, Lcom/samsung/map/MmsSmsMessageFolder$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    .line 1640
    const/4 v10, 0x5

    .line 1645
    .local v10, type:I
    :goto_d
    const-string v0, "sf"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1646
    .local v9, sf:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1647
    .local v1, smsUri:Landroid/net/Uri;
    const-string v0, "id"

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1649
    .local v8, handle:I
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder$1;->this$0:Lcom/samsung/map/MmsSmsMessageFolder;

    #getter for: Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/samsung/map/MmsSmsMessageFolder;->access$000(Lcom/samsung/map/MmsSmsMessageFolder;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1652
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_94

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1654
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1655
    .local v11, vals:Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1656
    iget-object v0, p0, Lcom/samsung/map/MmsSmsMessageFolder$1;->this$0:Lcom/samsung/map/MmsSmsMessageFolder;

    #getter for: Lcom/samsung/map/MmsSmsMessageFolder;->content:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/samsung/map/MmsSmsMessageFolder;->access$000(Lcom/samsung/map/MmsSmsMessageFolder;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v11, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1660
    .end local v11           #vals:Landroid/content/ContentValues;
    :cond_94
    if-eqz v6, :cond_99

    .line 1661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1666
    :cond_99
    :try_start_99
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_a0

    .line 1671
    .end local v1           #smsUri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #handle:I
    .end local v9           #sf:Ljava/lang/String;
    .end local v10           #type:I
    :cond_9c
    :goto_9c
    return-void

    .line 1636
    :pswitch_9d
    const/4 v10, 0x2

    .line 1638
    .restart local v10       #type:I
    goto/16 :goto_d

    .line 1667
    .restart local v1       #smsUri:Landroid/net/Uri;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v8       #handle:I
    .restart local v9       #sf:Ljava/lang/String;
    :catch_a0
    move-exception v7

    .line 1668
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MmsSmsMessageFolder"

    const-string v2, ""

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c

    .line 1634
    nop

    :pswitch_data_aa
    .packed-switch -0x1
        :pswitch_9d
    .end packed-switch
.end method
