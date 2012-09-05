.class public Lcom/samsung/client/SPAExternalHandler;
.super Lcom/samsung/client/GenericExternalHandler;
.source "SPAExternalHandler.java"


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
    .registers 11
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    .line 26
    const/16 v2, 0xc8

    .line 27
    .local v2, status:I
    move v1, p1

    .line 28
    .local v1, responseID:I
    const-string v4, "SPAExternalHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processRilResponse id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, p1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v3, "1"

    .line 31
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 34
    .local v0, data:[B
    packed-switch p1, :pswitch_data_7a

    .line 200
    const-string v4, "SPAExternalHandler"

    const-string v5, "FAILED: Command not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v2, 0x1f4

    .line 205
    :goto_33
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/client/SPAExternalHandler;->sendResponse(II[B)V

    .line 206
    return-void

    .line 36
    :pswitch_37
    const/16 v1, 0x28

    .line 112
    const-string v4, "SPAExternalHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 114
    goto :goto_33

    .line 117
    :pswitch_56
    const/16 v1, 0x29

    .line 118
    new-instance v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/samsung/client/SPAExternalHandler;->getData([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 119
    .restart local v3       #value:Ljava/lang/String;
    const-string v4, "SPAExternalHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 34
    :pswitch_data_7a
    .packed-switch -0x7e
        :pswitch_37
        :pswitch_56
    .end packed-switch
.end method
