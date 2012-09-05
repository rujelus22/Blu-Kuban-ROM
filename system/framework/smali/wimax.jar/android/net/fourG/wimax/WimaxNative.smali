.class public Landroid/net/fourG/wimax/WimaxNative;
.super Ljava/lang/Object;
.source "WimaxNative.java"


# static fields
.field static final EVENT_AUTH_FAIL_MSG:I = 0x3

.field static final EVENT_AUTH_UTC_TIME:I = 0x9

.field static final EVENT_BS_INFO_RESPONSE:I = 0xa

.field static final EVENT_CARD_PRESENCE:I = 0x1

.field static final EVENT_DEVICE_STATUS:I = 0x0

.field static final EVENT_LINK_WEAK_INFO:I = 0x8

.field static final EVENT_MRU_LIST_MSG:I = 0x4

.field static final EVENT_MRU_UPDATE_MSG:I = 0x5

.field static final EVENT_OMADM_RESPONSE:I = 0x6

.field static final EVENT_POWER_STATE:I = 0x2

.field static final EVENT_RADIO_INFO_RESPONSE:I = 0x7

.field public static dsInfo:Landroid/net/fourG/wimax/DeviceStatusInfo;

.field private static mAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field public static mMruListRsp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation
.end field

.field public static mOdbReadRsp:[B

.field private static m_bLog:Z

.field public static radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

.field public static wimaxBSList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/WimaxNative;->radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/WimaxNative;->wimaxBSList:Ljava/util/List;

    .line 68
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo;

    invoke-direct {v0}, Landroid/net/fourG/wimax/DeviceStatusInfo;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/WimaxNative;->dsInfo:Landroid/net/fourG/wimax/DeviceStatusInfo;

    .line 70
    const-string v0, "SECmWiMAXcAPI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->classInitNative()V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized AddAvailableList(Landroid/net/fourG/wimax/Wimax4GConfiguration;)V
    .registers 7
    .parameter "Config"

    .prologue
    .line 359
    const-class v2, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v2

    :try_start_3
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GConfiguration;-><init>()V

    .line 360
    .local v0, tmp:Landroid/net/fourG/wimax/Wimax4GConfiguration;
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->getNspId()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->getNspName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->setValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v1, Landroid/net/fourG/wimax/WimaxNative;->mAvailableList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 362
    monitor-exit v2

    return-void

    .line 359
    .end local v0           #tmp:Landroid/net/fourG/wimax/Wimax4GConfiguration;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native IdleReq()Z
.end method

.method public static native IpObtained()Z
.end method

.method private static declared-synchronized NotifyAuthFailMsg(ILjava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 270
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v0, v2, p0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 271
    monitor-exit v1

    return-void

    .line 270
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized NotifyDeviceInsertRemove(Z)V
    .registers 5
    .parameter "cardPresence"

    .prologue
    const/4 v0, 0x1

    .line 150
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_4
    sget-object v2, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    if-eqz p0, :cond_16

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 151
    monitor-exit v1

    return-void

    .line 150
    :cond_16
    const/4 v0, 0x0

    goto :goto_9

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized NotifyDeviceStatusChange(III)V
    .registers 7
    .parameter "deviceStatus"
    .parameter "statusReason"
    .parameter "connectionProgressInfo"

    .prologue
    .line 143
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->dsInfo:Landroid/net/fourG/wimax/DeviceStatusInfo;

    if-eqz v0, :cond_18

    .line 144
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->dsInfo:Landroid/net/fourG/wimax/DeviceStatusInfo;

    invoke-virtual {v0, p0, p1, p2}, Landroid/net/fourG/wimax/DeviceStatusInfo;->setDeviceStatus(III)V

    .line 145
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    sget-object v3, Landroid/net/fourG/wimax/WimaxNative;->dsInfo:Landroid/net/fourG/wimax/DeviceStatusInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 147
    :cond_18
    monitor-exit v1

    return-void

    .line 143
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized NotifyLinkWeakInformation(I)V
    .registers 6
    .parameter "subType"

    .prologue
    .line 331
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, p0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 332
    monitor-exit v1

    return-void

    .line 331
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized NotifyMruListMsg(ILjava/lang/String;)V
    .registers 16
    .parameter "nSize"
    .parameter "strMruList"

    .prologue
    .line 158
    const-class v9, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v9

    if-nez p0, :cond_15

    .line 159
    :try_start_5
    sget-object v8, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    sget-object v13, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_fb

    .line 193
    :goto_13
    monitor-exit v9

    return-void

    .line 162
    :cond_15
    :try_start_15
    sget-boolean v8, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v8, :cond_31

    const-string v8, "WimaxNative:"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotifyMruListMsg strMruList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_31
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, "@"

    invoke-direct {v5, p1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v5, st:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 165
    .local v4, nCF:I
    const/4 v0, 0x0

    .local v0, BW:B
    const/4 v1, 0x0

    .line 167
    .local v1, FFTSize:B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3c
    if-ge v2, p0, :cond_e0

    .line 168
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 169
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, temp:Ljava/lang/String;
    if-eqz v7, :cond_cf

    .line 171
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, "#"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v6, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 173
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 174
    sget-boolean v8, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v8, :cond_7b

    const-string v8, "WimaxNative :"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotifyMruListMsg nCF = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_7b
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 176
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 177
    sget-boolean v8, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v8, :cond_a5

    const-string v8, "WimaxNative :"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotifyMruListMsg BW = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_a5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 179
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 180
    sget-boolean v8, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v8, :cond_cf

    const-string v8, "WimaxNative :"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotifyMruListMsg FFTSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v6           #stList:Ljava/util/StringTokenizer;
    :cond_cf
    new-instance v3, Landroid/net/fourG/wimax/MruList;

    invoke-direct {v3}, Landroid/net/fourG/wimax/MruList;-><init>()V

    .line 187
    .local v3, mruList:Landroid/net/fourG/wimax/MruList;
    invoke-virtual {v3, v4, v0, v1}, Landroid/net/fourG/wimax/MruList;->setValue(IBB)V

    .line 188
    sget-object v8, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v3           #mruList:Landroid/net/fourG/wimax/MruList;
    .end local v7           #temp:Ljava/lang/String;
    :cond_dc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    .line 191
    :cond_e0
    sget-boolean v8, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v8, :cond_eb

    const-string v8, "WimaxNative Ends:"

    const-string v10, "NotifyMruListMsg  = "

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_eb
    sget-object v8, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    sget-object v13, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_f9
    .catchall {:try_start_15 .. :try_end_f9} :catchall_fb

    goto/16 :goto_13

    .line 158
    .end local v0           #BW:B
    .end local v1           #FFTSize:B
    .end local v2           #i:I
    .end local v4           #nCF:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    :catchall_fb
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static declared-synchronized NotifyMruUpdateMsg(II)V
    .registers 6
    .parameter "subType"
    .parameter "ErrorValue"

    .prologue
    .line 266
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p0, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 267
    monitor-exit v1

    return-void

    .line 266
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized NotifyOdbMngResponse([BII)V
    .registers 10
    .parameter "respDataArray"
    .parameter "nLen"
    .parameter "odbMngState"

    .prologue
    const/4 v6, -0x1

    .line 274
    const-class v3, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v3

    :try_start_4
    sget-boolean v2, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v2, :cond_2a

    const-string v2, "WimaxNative NotifyOdbMngResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " nLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " odbMngState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2a
    if-nez p1, :cond_4a

    .line 276
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 277
    .local v0, bDataArray:[B
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-byte v4, v0, v2

    .line 278
    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 279
    .local v1, respData:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 280
    sget-object v2, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_6a

    .line 295
    .end local v0           #bDataArray:[B
    .end local v1           #respData:Ljava/nio/ByteBuffer;
    :cond_48
    :goto_48
    monitor-exit v3

    return-void

    .line 281
    :cond_4a
    if-ne p1, v6, :cond_6d

    .line 282
    const/4 v2, 0x1

    :try_start_4d
    new-array v0, v2, [B

    .line 283
    .restart local v0       #bDataArray:[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput-byte v4, v0, v2

    .line 284
    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 285
    .restart local v1       #respData:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 286
    sget-object v2, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_6a

    goto :goto_48

    .line 274
    .end local v0           #bDataArray:[B
    .end local v1           #respData:Ljava/nio/ByteBuffer;
    :catchall_6a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 287
    :cond_6d
    :try_start_6d
    array-length v2, p0

    if-lez v2, :cond_48

    .line 288
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 289
    .restart local v0       #bDataArray:[B
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-byte v4, v0, v2

    .line 290
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 291
    .restart local v1       #respData:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 292
    const/4 v2, 0x0

    array-length v4, p0

    invoke-virtual {v1, p0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 293
    sget-object v2, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_6a

    goto :goto_48
.end method

.method private static declared-synchronized NotifyPowerManagement(I)V
    .registers 6
    .parameter "powerState"

    .prologue
    .line 154
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, p0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 155
    monitor-exit v1

    return-void

    .line 154
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized NotifyRadioInfoResponse(Ljava/lang/String;)V
    .registers 12
    .parameter "strRadioInfoList"

    .prologue
    .line 298
    const-class v9, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v9

    const/4 v1, 0x0

    .line 299
    .local v1, nTemperature:I
    const/4 v2, 0x0

    .line 300
    .local v2, nbIdleMode:I
    const/4 v3, 0x0

    .line 301
    .local v3, nSleepMode:I
    const/4 v4, 0x0

    .line 302
    .local v4, nIdleModeTimer:I
    const/4 v5, 0x0

    .line 303
    .local v5, nPseudoId:I
    :try_start_8
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v0, "@"

    invoke-direct {v6, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v6, st:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 307
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, temp:Ljava/lang/String;
    if-eqz v8, :cond_62

    .line 309
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v0, "#"

    invoke-direct {v7, v8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v7, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 311
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 312
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 313
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 315
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 316
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 317
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 318
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 325
    .end local v7           #stList:Ljava/util/StringTokenizer;
    :cond_62
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    invoke-virtual/range {v0 .. v5}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->setValue(IIIII)V

    .line 326
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_73

    .line 328
    .end local v8           #temp:Ljava/lang/String;
    :cond_71
    monitor-exit v9

    return-void

    .line 298
    .end local v6           #st:Ljava/util/StringTokenizer;
    :catchall_73
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static declared-synchronized NotifyWimaxBaseStationInfoRsp(ILjava/lang/String;)V
    .registers 27
    .parameter "nSize"
    .parameter "strWimaxBSList"

    .prologue
    .line 198
    const-class v24, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v24

    if-nez p0, :cond_34

    .line 199
    :try_start_5
    sget-object v4, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v7, 0x0

    const/4 v10, -0x1

    sget-object v11, Landroid/net/fourG/wimax/WimaxNative;->wimaxBSList:Ljava/util/List;

    invoke-virtual {v4, v5, v7, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 200
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_32

    const-string v4, "WimaxNative:CSAHOO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotifyWimaxBaseStationInfoRsp nSize = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_272

    .line 263
    :cond_32
    :goto_32
    monitor-exit v24

    return-void

    .line 203
    :cond_34
    :try_start_34
    sget-object v4, Landroid/net/fourG/wimax/WimaxNative;->wimaxBSList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 204
    const/4 v14, 0x0

    .line 205
    .local v14, m_Frequency:I
    const/16 v19, 0x0

    .line 206
    .local v19, m_FFTSize:I
    const/16 v18, 0x0

    .line 207
    .local v18, m_BandWidth:I
    const/4 v3, 0x0

    .line 208
    .local v3, m_CINR:I
    const/4 v6, 0x0

    .line 209
    .local v6, m_RSSI:I
    const/16 v20, 0x0

    .line 210
    .local v20, m_Preamble:I
    const-string v9, ""

    .line 211
    .local v9, m_NapId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 213
    .local v8, sBsid:Ljava/lang/String;
    new-instance v21, Ljava/util/StringTokenizer;

    const-string v4, "@"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v21, st:Ljava/util/StringTokenizer;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_52
    move/from16 v0, v17

    move/from16 v1, p0

    if-ge v0, v1, :cond_261

    .line 215
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_76

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " i = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_76
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_25d

    .line 217
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v23

    .line 218
    .local v23, temp:Ljava/lang/String;
    if-eqz v23, :cond_1db

    .line 219
    new-instance v22, Ljava/util/StringTokenizer;

    const-string v4, "#"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v22, stList:Ljava/util/StringTokenizer;
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 221
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 222
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_b7

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_Frequency = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_b7
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 224
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 225
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_e3

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_FFTSize = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_e3
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 227
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 228
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_10f

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_BandWidth = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_10f
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 230
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 231
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_139

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_CINR = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_139
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 233
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 234
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_163

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_RSSI = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_163
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 236
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 237
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_18f

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_Preamble = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_18f
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 239
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 240
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_1b5

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_NapId = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1b5
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 242
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 243
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_1db

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " sBsid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v22           #stList:Ljava/util/StringTokenizer;
    :cond_1db
    new-instance v2, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;-><init>()V

    .line 254
    .local v2, wimaxBSInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    const/4 v4, 0x0

    const-string v5, ""

    const/4 v7, 0x0

    move/from16 v0, v20

    int-to-long v10, v0

    const/4 v12, 0x0

    const-string v13, ""

    const/16 v16, 0x0

    move v15, v14

    invoke-virtual/range {v2 .. v16}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setValue(IILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V

    .line 255
    sget-boolean v4, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    if-eqz v4, :cond_258

    const-string v4, "WimaxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_Frequency: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m_FFTSize: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m_BandWidth: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m_CINR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m_RSSI: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m_Preamble: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m_NapId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sBsid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_258
    sget-object v4, Landroid/net/fourG/wimax/WimaxNative;->wimaxBSList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v2           #wimaxBSInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .end local v23           #temp:Ljava/lang/String;
    :cond_25d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_52

    .line 262
    :cond_261
    sget-object v4, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v7, 0x0

    const/4 v10, -0x1

    sget-object v11, Landroid/net/fourG/wimax/WimaxNative;->wimaxBSList:Ljava/util/List;

    invoke-virtual {v4, v5, v7, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_270
    .catchall {:try_start_34 .. :try_end_270} :catchall_272

    goto/16 :goto_32

    .line 198
    .end local v3           #m_CINR:I
    .end local v6           #m_RSSI:I
    .end local v8           #sBsid:Ljava/lang/String;
    .end local v9           #m_NapId:Ljava/lang/String;
    .end local v14           #m_Frequency:I
    .end local v17           #i:I
    .end local v18           #m_BandWidth:I
    .end local v19           #m_FFTSize:I
    .end local v20           #m_Preamble:I
    .end local v21           #st:Ljava/util/StringTokenizer;
    :catchall_272
    move-exception v4

    monitor-exit v24

    throw v4
.end method

.method public static native OdbAddReq([B)I
.end method

.method public static native OdbDefaultReq()Z
.end method

.method public static native OdbDeleteReq([B)I
.end method

.method public static native OdbReadReq([B)I
.end method

.method public static native OdbUpdateReq()I
.end method

.method public static native OdbWriteReq([B)I
.end method

.method public static native SendUTCTime(Ljava/lang/String;)V
.end method

.method public static SetHandler(Landroid/os/Handler;)V
    .registers 1
    .parameter "handler"

    .prologue
    .line 139
    sput-object p0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method public static native VirtualIdleReq(IB)Z
.end method

.method private static native classInitNative()V
.end method

.method public static native connectmWimax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native destroyNative()V
.end method

.method public static native disconnectWimax()Z
.end method

.method public static enableLog(Z)V
    .registers 1
    .parameter "flag"

    .prologue
    .line 135
    sput-boolean p0, Landroid/net/fourG/wimax/WimaxNative;->m_bLog:Z

    .line 136
    invoke-static {p0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLog(Z)V

    .line 137
    return-void
.end method

.method public static native getAvailableNetworks(Landroid/net/fourG/wimax/Wimax4GConfiguration;)Z
.end method

.method public static native getConnectedNSP(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)I
.end method

.method public static native getConnectionTime()Ljava/lang/String;
.end method

.method public static native getDeviceInformation(Landroid/net/fourG/wimax/Wimax4GDeviceInfo;)Z
.end method

.method public static native getErrorString()[B
.end method

.method public static native getLinkInfo()Ljava/lang/String;
.end method

.method public static native getLinkState()Z
.end method

.method public static native getMacAddressCommand()Ljava/lang/String;
.end method

.method public static native getMruList()Z
.end method

.method public static native getMruUpdate([I[B[BI)Z
.end method

.method public static native getNeighborList()Z
.end method

.method public static native getNetworkEntryCompleteTimes()[I
.end method

.method public static native getOdbConfigData()[I
.end method

.method public static native getRadioInfo()Z
.end method

.method private static declared-synchronized getUTCTime()V
    .registers 5

    .prologue
    .line 365
    const-class v1, Landroid/net/fourG/wimax/WimaxNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 366
    monitor-exit v1

    return-void

    .line 365
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native isRoamingEnabled()Z
.end method

.method public static native loadDriver(B)Z
.end method

.method public static native scanCommand()Z
.end method

.method public static setAvailableList(Ljava/util/List;)V
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GConfiguration;>;"
    sput-object p0, Landroid/net/fourG/wimax/WimaxNative;->mAvailableList:Ljava/util/List;

    .line 342
    return-void
.end method

.method public static native setBackhaulMode(Z)V
.end method

.method public static native setDMMode(Z)V
.end method

.method public static native setDeviceStateToInitComplete()V
.end method

.method public static native setDeviceStateToVirtualIdle()V
.end method

.method public static native setEnableLog(Z)V
.end method

.method public static native setEnableLogLevel(C)V
.end method

.method public static native setLinkInfo(Z)V
.end method

.method public static native setRctMode(Z)V
.end method

.method public static native setRoamingEnabled(Z)Z
.end method

.method public static native setWimaxTethered(B)Z
.end method

.method public static native startWimax()Z
.end method

.method public static native stopWimax()Z
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxNative;->destroyNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 376
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 378
    return-void

    .line 376
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
