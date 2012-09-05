.class public Lcom/samsung/client/DSSExternalHandler;
.super Lcom/samsung/client/GenericExternalHandler;
.source "DSSExternalHandler.java"


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
    .registers 12
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    .line 17
    const/16 v3, 0xc8

    .line 18
    .local v3, status:I
    const-string v5, "DSSExternalHandler"

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

    .line 20
    new-instance v1, Lcom/samsungframeworks/internal/SprintExtension;

    invoke-static {}, Lcom/samsung/client/SyncmlService;->getInstance()Lcom/samsung/client/SyncmlService;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;-><init>(Landroid/content/Context;)V

    .line 21
    .local v1, se:Lcom/samsungframeworks/internal/SprintExtension;
    const-string v4, ""

    .line 22
    .local v4, value:Ljava/lang/String;
    const-string v2, ""

    .line 23
    .local v2, secondSegment:Ljava/lang/String;
    const/4 v0, 0x0

    .line 24
    .local v0, data:[B
    packed-switch p1, :pswitch_data_122

    .line 62
    const-string v5, "DSSExternalHandler"

    const-string v6, "FAILED: Command not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v3, 0x1f4

    .line 66
    :goto_3a
    invoke-virtual {p0, p1, v3, v0}, Lcom/samsung/client/DSSExternalHandler;->sendResponse(II[B)V

    .line 67
    return-void

    .line 26
    :pswitch_3e
    const/4 v5, 0x2

    invoke-virtual {p0, p2, v5}, Lcom/samsung/client/DSSExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v5, "ServerUrl"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 28
    const/16 v5, 0x192

    invoke-virtual {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    :goto_51
    const-string v5, "DSSExternalHandler"

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

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 42
    goto :goto_3a

    .line 29
    :cond_6e
    const-string v5, "ProxyIP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 30
    const/16 v5, 0x195

    invoke-virtual {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 31
    :cond_7d
    const-string v5, "ProxyPort"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 32
    const/16 v5, 0x196

    invoke-virtual {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 33
    :cond_8c
    const-string v5, "RadioMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 34
    const/16 v5, 0x1a2

    invoke-virtual {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 35
    :cond_9b
    const-string v5, "Slot1Enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 36
    const/16 v5, 0x1a3

    invoke-virtual {v1, v5}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 38
    :cond_aa
    const/16 v3, 0x1f4

    goto :goto_51

    .line 44
    :pswitch_ad
    new-instance v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/samsung/client/DSSExternalHandler;->getData([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 45
    .restart local v4       #value:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {p0, p2, v5}, Lcom/samsung/client/DSSExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v5, "DSSExternalHandler"

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

    .line 47
    const-string v5, "ServerUrl"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 48
    const/16 v5, 0x192

    invoke-virtual {v1, v5, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_3a

    .line 49
    :cond_e2
    const-string v5, "ProxyIP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 50
    const/16 v5, 0x195

    invoke-virtual {v1, v5, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_3a

    .line 51
    :cond_f1
    const-string v5, "ProxyPort"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 52
    const/16 v5, 0x196

    invoke-virtual {v1, v5, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_3a

    .line 53
    :cond_100
    const-string v5, "RadioMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 54
    const/16 v5, 0x1a2

    invoke-virtual {v1, v5, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_3a

    .line 55
    :cond_10f
    const-string v5, "Slot1Enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 56
    const/16 v5, 0x1a3

    invoke-virtual {v1, v5, v4}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto/16 :goto_3a

    .line 58
    :cond_11e
    const/16 v3, 0x1f4

    .line 60
    goto/16 :goto_3a

    .line 24
    :pswitch_data_122
    .packed-switch -0x7e
        :pswitch_3e
        :pswitch_ad
    .end packed-switch
.end method
