.class public Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;
.super Landroid/content/BroadcastReceiver;
.source "MiscRilCommandSender.java"


# instance fields
.field private mAttr:I

.field private mCommand:Ljava/lang/String;

.field private mData:S

.field private mLength:I

.field private mTestCommand:I

.field private phone:Lcom/android/internal/telephony/Phone;

.field private writeStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private sendAckToRil(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, data:[B
    invoke-direct {p0, p1}, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->setAckEndModeData(Z)[B

    move-result-object v0

    .line 76
    if-eqz p1, :cond_1b

    const-string v1, "RilCommandSender"

    const-string v2, "Ack to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_14
    iget-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 79
    return-void

    .line 77
    :cond_1b
    const-string v1, "RilCommandSender"

    const-string v2, "AckFail to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private sendResultToRil()V
    .registers 4

    .prologue
    .line 101
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, data:[B
    invoke-direct {p0}, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->setResultEndModeData()[B

    move-result-object v0

    .line 105
    const-string v1, "RilCommandSender"

    const-string v2, "Result to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 107
    return-void
.end method

.method private setAckEndModeData(Z)[B
    .registers 6
    .parameter "success"

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x12

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 88
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 90
    if-eqz p1, :cond_23

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_29

    .line 97
    :goto_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_22
    return-object v3

    .line 91
    :cond_23
    const/16 v3, 0xff

    :try_start_25
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1e

    .line 93
    :catch_29
    move-exception v2

    .line 95
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_22
.end method

.method private setResultEndModeData()[B
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v7, 0x1

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    .local v1, dos:Ljava/io/DataOutputStream;
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mLength:I

    int-to-byte v5, v6

    .line 115
    .local v5, mLength2:B
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mLength:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v4, v6

    .line 117
    .local v4, mLength1:B
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mLength:I

    add-int/lit8 v3, v6, 0x6

    .line 120
    .local v3, mFileSize:I
    :try_start_18
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->writeStatus:I

    if-eqz v6, :cond_20

    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->writeStatus:I

    if-ne v6, v12, :cond_13f

    .line 121
    :cond_20
    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 123
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 124
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 125
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 126
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mTestCommand:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 127
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mAttr:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 129
    const-string v6, "RilMISCCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precheck data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-short v11, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v6, "RilMISCCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precheck data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-short v11, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-short v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    if-eq v6, v12, :cond_99

    iget-short v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 134
    :cond_99
    const-string v6, "RilMISCCommandSender"

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

    const/4 v11, 0x7

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

    iget v11, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mTestCommand:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget v11, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mAttr:I

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

    .line 135
    iget-short v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    if-eq v6, v12, :cond_13a

    .line 136
    const-string v6, "RilMISCCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v6, "RilMISCCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-short v11, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_13a} :catch_1ba

    .line 162
    :cond_13a
    :goto_13a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :goto_13e
    return-object v6

    .line 140
    :cond_13f
    :try_start_13f
    iget v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->writeStatus:I

    if-ne v6, v7, :cond_13a

    .line 148
    const/16 v6, 0x13

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 149
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 150
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 151
    iget-short v6, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 152
    const-string v6, "RilMISCCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<to ril> byte = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x %x %x "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x6

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

    .line 153
    const-string v6, "RilMISCCommandSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<to ril> data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-short v11, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_1b9} :catch_1ba

    goto :goto_13a

    .line 158
    :catch_1ba
    move-exception v2

    .line 159
    .local v2, e:Ljava/io/IOException;
    const-string v6, "RilMISCCommandSender"

    const-string v7, "can\'t write byte"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v6, 0x0

    goto/16 :goto_13e
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 39
    const-string v0, "RilCommandSender"

    const-string v1, "receive commmand to ril"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "COMMAND"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mCommand:Ljava/lang/String;

    .line 42
    const-string v0, "RilCommandSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "TEST_COMMAND"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mTestCommand:I

    .line 44
    const-string v0, "ATTR"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mAttr:I

    .line 45
    const-string v0, "LENGTH"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mLength:I

    .line 47
    const-string v0, "DATA"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v0

    iput-short v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mData:S

    .line 48
    const-string v0, "WRITEFLAG"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->writeStatus:I

    .line 52
    const-string v0, "ack"

    iget-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 53
    const-string v0, "RilCommandSender"

    const-string v1, "receive ack command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->sendAckToRil(Z)V

    .line 68
    :cond_67
    :goto_67
    return-void

    .line 57
    :cond_68
    const-string v0, "ack_fail"

    iget-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 58
    const-string v0, "RilCommandSender"

    const-string v1, "receive ack_fail command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->sendAckToRil(Z)V

    goto :goto_67

    .line 62
    :cond_7e
    const-string v0, "result"

    iget-object v1, p0, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 63
    const-string v0, "RilCommandSender"

    const-string v1, "receive result command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/android/samsungtest/miscrilsupport/miscrilcommunicator/MiscRilCommandSender;->sendResultToRil()V

    goto :goto_67
.end method
