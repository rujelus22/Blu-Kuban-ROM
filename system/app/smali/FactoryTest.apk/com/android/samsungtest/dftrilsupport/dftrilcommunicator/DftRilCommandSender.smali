.class public Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;
.super Landroid/content/BroadcastReceiver;
.source "DftRilCommandSender.java"


# instance fields
.field private mAttr:I

.field private mCommand:Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mDataDm:S

.field private mDmBuffer:[B

.field private mLength:I

.field private mTestCommand:I

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private convertDmCmd(Ljava/lang/String;)[B
    .registers 11
    .parameter "arg"

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 77
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    if-ge v3, v4, :cond_40

    .line 78
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 79
    .local v5, token:I
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Token : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_35
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3b

    .line 77
    :goto_38
    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    .line 82
    :catch_3b
    move-exception v2

    .line 83
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 86
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #token:I
    :cond_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private sendAckToRil(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 91
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, data:[B
    invoke-direct {p0, p1}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->setAckEndModeData(Z)[B

    move-result-object v0

    .line 96
    if-eqz p1, :cond_1b

    const-string v1, "RilCommandSender"

    const-string v2, "Ack to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_14
    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 99
    return-void

    .line 97
    :cond_1b
    const-string v1, "RilCommandSender"

    const-string v2, "AckFail to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private sendResultToRil(Z)V
    .registers 5
    .parameter "dm"

    .prologue
    .line 121
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, data:[B
    invoke-direct {p0, p1}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->setResultEndModeData(Z)[B

    move-result-object v0

    .line 125
    const-string v1, "RilCommandSender"

    const-string v2, "Result to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 127
    return-void
.end method

.method private setAckEndModeData(Z)[B
    .registers 6
    .parameter "success"

    .prologue
    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x12

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 109
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 110
    if-eqz p1, :cond_22

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_28

    .line 117
    :goto_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_21
    return-object v3

    .line 111
    :cond_22
    const/16 v3, 0xff

    :try_start_24
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_1d

    .line 113
    :catch_28
    move-exception v2

    .line 115
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private setResultEndModeData(Z)[B
    .registers 14
    .parameter "dm"

    .prologue
    .line 130
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v1, dos:Ljava/io/DataOutputStream;
    iget v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mLength:I

    int-to-byte v5, v6

    .line 136
    .local v5, mLength2:B
    iget v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mLength:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v4, v6

    .line 138
    .local v4, mLength1:B
    iget v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mLength:I

    add-int/lit8 v3, v6, 0x6

    .line 141
    .local v3, mFileSize:I
    const/16 v6, 0x12

    :try_start_30
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 142
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 145
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 146
    iget v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mTestCommand:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 148
    if-nez p1, :cond_100

    .line 149
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 156
    :cond_6a
    :goto_6a
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

    const/4 v11, 0x5

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

    iget v11, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mTestCommand:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget v11, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mAttr:I

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

    .line 157
    iget-object v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    if-eqz v6, :cond_e1

    .line 158
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_e1
    const-string v6, "RilCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_dm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mDataDm:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_fb} :catch_107

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :goto_ff
    return-object v6

    .line 154
    :cond_100
    :try_start_100
    iget-object v6, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mDmBuffer:[B

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_105} :catch_107

    goto/16 :goto_6a

    .line 162
    :catch_107
    move-exception v2

    .line 163
    .local v2, e:Ljava/io/IOException;
    const-string v6, "RilCommandSender"

    const-string v7, "can\'t write byte"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v6, 0x0

    goto :goto_ff
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 38
    const-string v0, "RilCommandSender"

    const-string v1, "receive commmand to ril"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "COMMAND"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mCommand:Ljava/lang/String;

    .line 41
    const-string v0, "RilCommandSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "TEST_COMMAND"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mTestCommand:I

    .line 44
    const-string v0, "ATTR"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mAttr:I

    .line 45
    const-string v0, "LENGTH"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mLength:I

    .line 46
    const-string v0, "DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    .line 47
    const-string v0, "DATA_DM"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v0

    iput-short v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mDataDm:S

    .line 49
    const-string v0, "ack"

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 50
    const-string v0, "RilCommandSender"

    const-string v1, "receive ack command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, v5}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->sendAckToRil(Z)V

    .line 70
    :cond_68
    :goto_68
    return-void

    .line 54
    :cond_69
    const-string v0, "ack_fail"

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 55
    const-string v0, "RilCommandSender"

    const-string v1, "receive ack_fail command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->sendAckToRil(Z)V

    goto :goto_68

    .line 59
    :cond_7e
    const-string v0, "result"

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 60
    const-string v0, "RilCommandSender"

    const-string v1, "receive result command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->sendResultToRil(Z)V

    goto :goto_68

    .line 64
    :cond_93
    const-string v0, "result_dm"

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 65
    const-string v0, "RilCommandSender"

    const-string v1, "receive result dm command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->convertDmCmd(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->mDmBuffer:[B

    .line 67
    invoke-direct {p0, v5}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandSender;->sendResultToRil(Z)V

    goto :goto_68
.end method
