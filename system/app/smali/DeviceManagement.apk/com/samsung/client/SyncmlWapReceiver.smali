.class public Lcom/samsung/client/SyncmlWapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncmlWapReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_32

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEBUG_WAP_PUSH_RECEIVED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_117

    .line 32
    :cond_32
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "onWAPPUSHReceiveIntent: "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "WAP DATA received"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v7, 0x2

    .line 66
    .local v7, index:I
    const-string v14, "pdus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 67
    .local v10, pdu:[B
    new-instance v11, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v11, v10}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 68
    .local v11, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v11, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 69
    invoke-virtual {v11}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v14

    long-to-int v4, v14

    .line 70
    .local v4, headerLength:I
    invoke-virtual {v11}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v14

    add-int/2addr v7, v14

    .line 72
    move v5, v7

    .line 74
    .local v5, headerStartIndex:I
    invoke-virtual {v11, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    .line 76
    invoke-virtual {v11}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, mimeType:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v1

    .line 78
    .local v1, binaryContentType:J
    invoke-virtual {v11}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v14

    add-int/2addr v7, v14

    .line 80
    add-int v3, v5, v4

    .line 81
    .local v3, dataIndex:I
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " dataIndex ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "len is= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v10

    move/from16 v16, v0

    sub-int v16, v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    array-length v14, v10

    sub-int/2addr v14, v3

    new-array v8, v14, [B

    .line 83
    .local v8, intentData:[B
    const/4 v14, 0x0

    array-length v15, v8

    invoke-static {v10, v3, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    if-eqz v9, :cond_b8

    .line 87
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mimetype = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_b8
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "binaryContentType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v8, :cond_104

    .line 93
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "data array"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v6, 0x0

    .local v6, i:I
    :goto_da
    array-length v14, v8

    if-ge v6, v14, :cond_104

    .line 96
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v8, v6

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    .line 102
    .end local v6           #i:I
    :cond_104
    new-instance v13, Lcom/samsung/client/TslcmnSan$TslSanMsg;

    invoke-direct {v13}, Lcom/samsung/client/TslcmnSan$TslSanMsg;-><init>()V

    .line 103
    .local v13, san:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    array-length v14, v8

    invoke-static {v8, v14, v13}, Lcom/samsung/client/TslcmnSan;->TslCmnSanParser([BILcom/samsung/client/TslcmnSan$TslSanMsg;)I

    move-result v14

    if-gez v14, :cond_118

    .line 104
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "SAN parsing failure"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1           #binaryContentType:J
    .end local v3           #dataIndex:I
    .end local v4           #headerLength:I
    .end local v5           #headerStartIndex:I
    .end local v7           #index:I
    .end local v8           #intentData:[B
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #pdu:[B
    .end local v11           #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v13           #san:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :cond_117
    :goto_117
    return-void

    .line 106
    .restart local v1       #binaryContentType:J
    .restart local v3       #dataIndex:I
    .restart local v4       #headerLength:I
    .restart local v5       #headerStartIndex:I
    .restart local v7       #index:I
    .restart local v8       #intentData:[B
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v10       #pdu:[B
    .restart local v11       #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v13       #san:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :cond_118
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "San data received"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "san.uiMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "san.sessionId ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/samsung/client/TslcmnSan$TslSanMsg;->sessionId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "san.srvrId ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    iget-object v0, v13, Lcom/samsung/client/TslcmnSan$TslSanMsg;->srvrId:[B

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "san.initiator ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/samsung/client/TslcmnSan$TslSanMsg;->initiator:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v14, "SyncmlWAPReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "san.version ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/samsung/client/TslcmnSan$TslSanMsg;->version:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "Storing SAS message"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/samsung/client/SANStorage;->append_san_msg(Landroid/content/Context;Lcom/samsung/client/TslcmnSan$TslSanMsg;)I

    move-result v14

    if-gez v14, :cond_1c6

    .line 124
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "SAS data storage failure"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1c6
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    if-nez v14, :cond_1f7

    .line 128
    const-string v14, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 130
    .local v12, pm:Landroid/os/PowerManager;
    const/4 v14, 0x1

    const-string v15, "SANPowerLock"

    invoke-virtual {v12, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    sput-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    .line 132
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 139
    .end local v12           #pm:Landroid/os/PowerManager;
    :cond_1e2
    :goto_1e2
    const-string v14, "SyncmlWAPReceiver"

    const-string v15, "Start SAN service"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.client.SAN_SERVICE"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_117

    .line 134
    :cond_1f7
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-nez v14, :cond_1e2

    .line 135
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_1e2
.end method
