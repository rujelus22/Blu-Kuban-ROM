.class public Lcom/samsung/client/ConExternalHandler;
.super Lcom/samsung/client/GenericExternalHandler;
.source "ConExternalHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/samsung/client/GenericExternalHandler;-><init>()V

    return-void
.end method

.method private getSprintExtensionID([B)I
    .registers 8
    .parameter "arr"

    .prologue
    const/4 v4, 0x3

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, secondSegment:Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, thirdSegment:Ljava/lang/String;
    const v1, -0xe843d

    .line 60
    .local v1, sprintExtensionID:I
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/samsung/client/ConExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v3, "MediaStream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 62
    invoke-virtual {p0, p1, v4}, Lcom/samsung/client/ConExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "RTSPProxyAddress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 64
    const/16 v1, 0x19c

    .line 81
    :cond_21
    :goto_21
    const-string v3, "ConExternalHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sprintExtensionID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 65
    :cond_3a
    const-string v3, "RTSPProxyPort"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 66
    const/16 v1, 0x19d

    goto :goto_21

    .line 67
    :cond_45
    const-string v3, "HTTPPDProxyAddress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 68
    const/16 v1, 0x19e

    goto :goto_21

    .line 69
    :cond_50
    const-string v3, "HTTPPDProxyPort"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 70
    const/16 v1, 0x19f

    goto :goto_21

    .line 72
    :cond_5b
    const-string v3, "GPS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 73
    invoke-virtual {p0, p1, v4}, Lcom/samsung/client/ConExternalHandler;->getUriSegment([BI)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v3, "PriIpAddr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 75
    const/16 v1, 0xa1

    goto :goto_21

    .line 76
    :cond_72
    const-string v3, "PriPort"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 77
    const/16 v1, 0xa3

    goto :goto_21
.end method


# virtual methods
.method public processRilRequest(B[BI)V
    .registers 15
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    const/16 v10, -0x7d

    const/16 v9, -0x7e

    .line 22
    const-string v6, "ConExternalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processRilResponse id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, p1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, data:[B
    const-string v5, ""

    .line 26
    .local v5, value:Ljava/lang/String;
    new-instance v2, Lcom/samsungframeworks/internal/SprintExtension;

    invoke-static {}, Lcom/samsung/client/SyncmlService;->getInstance()Lcom/samsung/client/SyncmlService;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsungframeworks/internal/SprintExtension;-><init>(Landroid/content/Context;)V

    .line 27
    .local v2, se:Lcom/samsungframeworks/internal/SprintExtension;
    const/16 v4, 0x1f4

    .line 28
    .local v4, status:I
    move v1, p1

    .line 29
    .local v1, responseID:I
    const v3, -0xe843d

    .line 31
    .local v3, sprintExtensionID:I
    if-ne p1, v9, :cond_69

    .line 32
    const/16 v1, 0x28

    .line 33
    invoke-direct {p0, p2}, Lcom/samsung/client/ConExternalHandler;->getSprintExtensionID([B)I

    move-result v3

    .line 39
    :cond_3c
    :goto_3c
    const v6, -0xe843d

    if-eq v3, v6, :cond_4b

    .line 40
    if-ne p1, v9, :cond_72

    .line 41
    invoke-virtual {v2, v3}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 50
    :cond_4b
    :goto_4b
    const-string v6, "ConExternalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/16 v4, 0xc8

    .line 53
    invoke-virtual {p0, v1, v4, v0}, Lcom/samsung/client/ConExternalHandler;->sendResponse(II[B)V

    .line 54
    return-void

    .line 34
    :cond_69
    if-ne p1, v10, :cond_3c

    .line 35
    const/16 v1, 0x29

    .line 36
    invoke-direct {p0, p2}, Lcom/samsung/client/ConExternalHandler;->getSprintExtensionID([B)I

    move-result v3

    goto :goto_3c

    .line 43
    :cond_72
    if-ne p1, v10, :cond_4b

    .line 44
    new-instance v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/samsung/client/ConExternalHandler;->getData([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 45
    .restart local v5       #value:Ljava/lang/String;
    invoke-virtual {v2, v3, v5}, Lcom/samsungframeworks/internal/SprintExtension;->setString(ILjava/lang/String;)V

    goto :goto_4b
.end method
