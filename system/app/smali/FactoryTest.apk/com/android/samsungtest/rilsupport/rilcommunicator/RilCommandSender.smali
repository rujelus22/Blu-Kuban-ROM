.class public Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;
.super Landroid/content/BroadcastReceiver;
.source "RilCommandSender.java"


# instance fields
.field private mAttr:I

.field private mCommand:Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mLength:I

.field private mTestCommand:I

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private sendAckToRil(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 80
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, data:[B
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->setAckEndModeData(Z)[B

    move-result-object v0

    .line 85
    if-eqz p1, :cond_1b

    const-string v1, "RilCommandSender"

    const-string v2, "Ack to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_14
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 88
    return-void

    .line 86
    :cond_1b
    const-string v1, "RilCommandSender"

    const-string v2, "AckFail to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private sendResultToRil()V
    .registers 4

    .prologue
    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, data:[B
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->setResultEndModeData()[B

    move-result-object v0

    .line 114
    const-string v1, "RilCommandSender"

    const-string v2, "Result to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 116
    return-void
.end method

.method private setAckEndModeData(Z)[B
    .registers 6
    .parameter "success"

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x12

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 97
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 99
    if-eqz p1, :cond_22

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_28

    .line 106
    :goto_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_21
    return-object v3

    .line 100
    :cond_22
    const/16 v3, 0xff

    :try_start_24
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_1d

    .line 102
    :catch_28
    move-exception v2

    .line 104
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private setResultEndModeData()[B
    .registers 13

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v1, dos:Ljava/io/DataOutputStream;
    iget v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mLength:I

    int-to-byte v5, v6

    .line 124
    .local v5, mLength2:B
    iget v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mLength:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v4, v6

    .line 126
    .local v4, mLength1:B
    iget v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mLength:I

    add-int/lit8 v3, v6, 0x6

    .line 129
    .local v3, mFileSize:I
    const/16 v6, 0x12

    :try_start_18
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 130
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 132
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 133
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 134
    iget v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mTestCommand:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 135
    iget v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mAttr:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 136
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mData:Ljava/lang/String;

    if-eqz v6, :cond_3b

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mData:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 138
    :cond_3b
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byte = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x %x %x %x %x %x %x"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget v11, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mTestCommand:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget v11, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mAttr:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mData:Ljava/lang/String;

    if-eqz v6, :cond_b2

    .line 140
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_b2} :catch_b7

    .line 147
    :cond_b2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :goto_b6
    return-object v6

    .line 143
    :catch_b7
    move-exception v2

    .line 144
    .local v2, e:Ljava/io/IOException;
    const-string v6, "RilCommandSender"

    const-string v7, "can\'t write byte"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v6, 0x0

    goto :goto_b6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 38
    const-string v1, "RilCommandSender"

    const-string v2, "send commmand to ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.samsungtest.LoopbackCMD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 43
    const-string v1, "DATA"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 45
    .local v0, data:[B
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 47
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 77
    .end local v0           #data:[B
    :cond_26
    :goto_26
    return-void

    .line 52
    :cond_27
    const-string v1, "COMMAND"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mCommand:Ljava/lang/String;

    .line 53
    const-string v1, "RilCommandSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "TEST_COMMAND"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mTestCommand:I

    .line 55
    const-string v1, "ATTR"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mAttr:I

    .line 56
    const-string v1, "LENGTH"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mLength:I

    .line 57
    const-string v1, "DATA"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mData:Ljava/lang/String;

    .line 61
    const-string v1, "ack"

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 62
    const-string v1, "RilCommandSender"

    const-string v2, "receive ack command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->sendAckToRil(Z)V

    goto :goto_26

    .line 66
    :cond_7f
    const-string v1, "ack_fail"

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 67
    const-string v1, "RilCommandSender"

    const-string v2, "receive ack_fail command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->sendAckToRil(Z)V

    goto :goto_26

    .line 71
    :cond_95
    const-string v1, "result"

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 72
    const-string v1, "RilCommandSender"

    const-string v2, "receive result command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandSender;->sendResultToRil()V

    goto/16 :goto_26
.end method
