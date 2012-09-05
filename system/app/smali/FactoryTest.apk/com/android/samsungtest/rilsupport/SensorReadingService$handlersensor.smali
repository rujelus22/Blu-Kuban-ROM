.class Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;
.super Ljava/lang/Object;
.source "SensorReadingService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/rilsupport/SensorReadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/rilsupport/SensorReadingService;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/rilsupport/SensorReadingService;Lcom/android/samsungtest/rilsupport/SensorReadingService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;-><init>(Lcom/android/samsungtest/rilsupport/SensorReadingService;)V

    return-void
.end method

.method private packIntegerToAsciiArray(I)[B
    .registers 13
    .parameter "data"

    .prologue
    const/16 v10, 0x2d

    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 131
    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "packIntegerToAsciiArray"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, sign:Z
    const/4 v1, 0x0

    .line 137
    .local v1, firstDigitSet:Z
    if-gez p1, :cond_1b

    .line 138
    const/4 v2, 0x1

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 142
    :cond_1b
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 143
    .local v0, byteArray:[B
    rem-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 144
    .local v3, temp:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v8

    .line 145
    div-int/lit8 p1, p1, 0xa

    .line 146
    rem-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v6

    .line 148
    div-int/lit8 p1, p1, 0xa

    .line 149
    rem-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v7

    .line 154
    aget-byte v4, v0, v7

    if-lez v4, :cond_87

    if-ne v2, v6, :cond_87

    .line 155
    const/4 v2, 0x0

    .line 156
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 157
    const/4 v1, 0x1

    .line 161
    :goto_52
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v0, v4

    .line 164
    aget-byte v4, v0, v6

    if-lez v4, :cond_8c

    if-ne v2, v6, :cond_8c

    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 167
    const/4 v1, 0x1

    .line 175
    :goto_65
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v7

    .line 178
    if-ne v2, v6, :cond_a7

    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 186
    :goto_72
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v6

    .line 190
    aget-byte v4, v0, v8

    add-int/lit8 v4, v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v8

    .line 193
    return-object v0

    .line 159
    :cond_87
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_52

    .line 168
    :cond_8c
    aget-byte v4, v0, v6

    if-nez v4, :cond_92

    if-eq v2, v6, :cond_98

    :cond_92
    aget-byte v4, v0, v7

    if-nez v4, :cond_9d

    if-nez v2, :cond_9d

    .line 170
    :cond_98
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_65

    .line 172
    :cond_9d
    aget-byte v4, v0, v7

    add-int/lit8 v4, v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 173
    const/4 v1, 0x1

    goto :goto_65

    .line 181
    :cond_a7
    if-nez v1, :cond_b2

    aget-byte v4, v0, v6

    if-nez v4, :cond_b2

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_72

    .line 184
    :cond_b2
    aget-byte v4, v0, v6

    add-int/lit8 v4, v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_72
.end method

.method private sendToRil(III)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sending to Ril"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    #setter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1, v2}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$402(Lcom/android/samsungtest/rilsupport/SensorReadingService;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SendData to GSensor X,Y,Z"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->setEndModeData(III)[B

    move-result-object v0

    .line 124
    if-eqz v0, :cond_50

    .line 125
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendData to Ril :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$400(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 128
    :cond_50
    return-void
.end method

.method private setEndModeData(III)[B
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 199
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x10

    .line 202
    .local v3, fileSize:I
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->packIntegerToAsciiArray(I)[B

    move-result-object v4

    .line 203
    .local v4, xValue:[B
    invoke-direct {p0, p2}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->packIntegerToAsciiArray(I)[B

    move-result-object v5

    .line 204
    .local v5, yValue:[B
    invoke-direct {p0, p3}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->packIntegerToAsciiArray(I)[B

    move-result-object v6

    .line 207
    .local v6, zValue:[B
    const/16 v7, 0x12

    :try_start_1a
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 208
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 209
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 211
    const/4 v7, 0x3

    aget-byte v7, v4, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 212
    const/4 v7, 0x2

    aget-byte v7, v4, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 213
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    const/4 v7, 0x3

    aget-byte v7, v5, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 216
    const/4 v7, 0x2

    aget-byte v7, v5, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    const/4 v7, 0x1

    aget-byte v7, v5, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 218
    const/4 v7, 0x0

    aget-byte v7, v5, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 219
    const/4 v7, 0x3

    aget-byte v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 220
    const/4 v7, 0x2

    aget-byte v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 221
    const/4 v7, 0x1

    aget-byte v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 222
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-byte v9, v4, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, v4, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "yValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-byte v9, v5, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-byte v9, v5, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, v5, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, v5, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "zValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, v6, v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_102} :catch_107

    .line 234
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :goto_106
    return-object v7

    .line 231
    :catch_107
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_106
.end method

.method private updateAcceleratorSensorValue([F)V
    .registers 10
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 95
    .local v0, data:[I
    const/high16 v1, 0x41c0

    .line 102
    .local v1, m_Rev_Convert:F
    aget v2, p1, v5

    neg-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v5

    .line 103
    aget v2, p1, v6

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, v0, v6

    .line 104
    aget v2, p1, v7

    neg-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v7

    .line 106
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data[0] is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data[1] is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data[2] is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    aget v2, v0, v5

    aget v3, v0, v6

    aget v4, v0, v7

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->sendToRil(III)V

    .line 108
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Killing self"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    invoke-virtual {v2}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->stopSelf()V

    .line 110
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 72
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSensorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    .line 90
    :goto_14
    return-void

    .line 79
    :pswitch_15
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE_ACCELEROMETER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->isSendToRil:Z
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$200(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 81
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->updateAcceleratorSensorValue([F)V

    .line 82
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    const/4 v1, 0x1

    #setter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->isSendToRil:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$202(Lcom/android/samsungtest/rilsupport/SensorReadingService;Z)Z

    goto :goto_14

    .line 84
    :cond_34
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$300(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    iget-object v1, v1, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorListner:Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    #getter for: Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterListener - again called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/SensorReadingService;

    invoke-virtual {v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->stopSelf()V

    goto :goto_14

    .line 76
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method
