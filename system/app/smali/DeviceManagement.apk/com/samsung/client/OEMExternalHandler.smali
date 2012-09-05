.class public Lcom/samsung/client/OEMExternalHandler;
.super Lcom/samsung/client/GenericExternalHandler;
.source "OEMExternalHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/client/GenericExternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processRilRequest(B[BI)V
    .registers 16
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    const/16 v11, 0x199

    const/16 v10, 0x198

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 15
    const/16 v2, 0xc8

    .line 16
    .local v2, status:I
    const-string v5, "OEMExternalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processRilResponse id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, p1, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v1, Lcom/samsungframeworks/internal/SprintExtension;

    invoke-static {}, Lcom/samsung/client/SyncmlService;->getInstance()Lcom/samsung/client/SyncmlService;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, se:Lcom/samsungframeworks/internal/SprintExtension;
    const-string v4, ""

    .line 20
    .local v4, value:Ljava/lang/String;
    const-string v3, ""

    .line 21
    .local v3, thirdSegment:Ljava/lang/String;
    const/4 v0, 0x0

    .line 22
    .local v0, data:[B
    packed-switch p1, :pswitch_data_e4

    .line 55
    const-string v5, "OEMExternalHandler"

    const-string v6, "FAILED: Command not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v2, 0x1f4

    .line 59
    :goto_40
    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/client/OEMExternalHandler;->sendResponse(II[B)V

    .line 60
    return-void

    .line 24
    :pswitch_44
    const-string v5, "Update"

    invoke-virtual {p0, p2, v8}, Lcom/samsung/client/OEMExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 25
    invoke-virtual {p0, p2, v9}, Lcom/samsung/client/OEMExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v3

    .line 26
    const-string v5, "Interval"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 27
    invoke-virtual {v1, v10}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 36
    :goto_60
    const-string v5, "OEMExternalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 38
    goto :goto_40

    .line 28
    :cond_7d
    const-string v5, "Enabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 29
    invoke-virtual {v1, v11}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_60

    .line 31
    :cond_8a
    const/16 v2, 0x1f4

    goto :goto_60

    .line 34
    :cond_8d
    const/16 v2, 0x1f4

    goto :goto_60

    .line 40
    :pswitch_90
    new-instance v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/samsung/client/OEMExternalHandler;->getData([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 41
    .restart local v4       #value:Ljava/lang/String;
    const-string v5, "OEMExternalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v5, "Update"

    invoke-virtual {p0, p2, v8}, Lcom/samsung/client/OEMExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 43
    invoke-virtual {p0, p2, v9}, Lcom/samsung/client/OEMExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v5, "Interval"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 45
    invoke-virtual {v1, v10, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_40

    .line 46
    :cond_ce
    const-string v5, "Enabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 47
    invoke-virtual {v1, v11, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_40

    .line 49
    :cond_db
    const/16 v2, 0x1f4

    goto/16 :goto_40

    .line 51
    :cond_df
    const/16 v2, 0x1f4

    .line 53
    goto/16 :goto_40

    .line 22
    nop

    :pswitch_data_e4
    .packed-switch -0x7e
        :pswitch_44
        :pswitch_90
    .end packed-switch
.end method
