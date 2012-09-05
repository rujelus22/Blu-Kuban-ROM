.class public Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;
.super Landroid/app/Activity;
.source "ResetTotalCallTime.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field mText:Landroid/widget/TextView;

.field private mTotalCallTime:J

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->phone:Lcom/android/internal/telephony/Phone;

    .line 293
    new-instance v0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;-><init>(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetTotalCallTime()V
    .registers 8

    .prologue
    .line 227
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v2, dos:Ljava/io/DataOutputStream;
    const/16 v4, 0xf

    :try_start_c
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 239
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 241
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_2c

    .line 254
    :try_start_17
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_3f

    .line 261
    :goto_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 265
    .local v1, data:[B
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3f4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 267
    return-void

    .line 245
    .end local v1           #data:[B
    :catch_2c
    move-exception v3

    .line 249
    .local v3, e:Ljava/io/IOException;
    :try_start_2d
    const-string v4, "TotalCallTime"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3a

    .line 254
    :try_start_34
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_1a

    .line 255
    :catch_38
    move-exception v4

    goto :goto_1a

    .line 253
    .end local v3           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v4

    .line 254
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_41

    .line 257
    :goto_3e
    throw v4

    .line 255
    :catch_3f
    move-exception v4

    goto :goto_1a

    :catch_41
    move-exception v5

    goto :goto_3e
.end method

.method private SetTotalCallTime()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x2

    const-wide/16 v8, 0xff

    const/4 v6, 0x0

    .line 161
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 167
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 171
    .local v0, ba:[B
    iget-wide v4, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J

    and-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 173
    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J

    shr-long/2addr v5, v10

    and-long/2addr v5, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 175
    iget-wide v4, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    and-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 177
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J

    const/16 v7, 0x18

    shr-long/2addr v5, v7

    and-long/2addr v5, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 183
    const/16 v4, 0xf

    :try_start_3a
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 185
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 189
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 195
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 197
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 199
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_59} :catch_6e

    .line 210
    :try_start_59
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_81

    .line 217
    :goto_5c
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3f3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 219
    return-void

    .line 203
    :catch_6e
    move-exception v3

    .line 205
    .local v3, e:Ljava/io/IOException;
    :try_start_6f
    const-string v4, "TotalCallTime"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7c

    .line 210
    :try_start_76
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_5c

    .line 211
    :catch_7a
    move-exception v4

    goto :goto_5c

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    :catchall_7c
    move-exception v4

    .line 210
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_83

    .line 213
    :goto_80
    throw v4

    .line 211
    :catch_81
    move-exception v4

    goto :goto_5c

    :catch_83
    move-exception v5

    goto :goto_80
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->GetTotalCallTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J

    return-wide p1
.end method

.method static synthetic access$200([BI)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->byteArrayToInt([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static byteArrayToInt([BI)J
    .registers 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    .line 277
    .local v0, result:J
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 279
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 281
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 283
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 287
    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->setContentView(I)V

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->phone:Lcom/android/internal/telephony/Phone;

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->SetTotalCallTime()V

    .line 147
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mText:Landroid/widget/TextView;

    .line 153
    return-void
.end method
