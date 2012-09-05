.class public abstract Lcom/vlingo/client/core/net/ConnectionManager;
.super Lcom/vlingo/client/core/net/ConnectionProvider;
.source "ConnectionManager.java"


# static fields
.field public static final CONNECTION_TYPE_BIS:I = 0x1

.field public static final CONNECTION_TYPE_DIRECT:I = 0x0

.field public static final CONNECTION_TYPE_MDS:I = 0x2

.field private static ImplClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final RETRY_THRESHOLD_TIME_DEFAULT:I = 0x61a8

.field private static instance:Lcom/vlingo/client/core/net/ConnectionManager;

.field private static final possibleParameters:[Ljava/lang/String;


# instance fields
.field private cdmaSignal:I

.field private evdoSignal:I

.field private gsmSignal:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/vlingo/client/core/net/ConnectionManager;->instance:Lcom/vlingo/client/core/net/ConnectionManager;

    .line 51
    sput-object v0, Lcom/vlingo/client/core/net/ConnectionManager;->ImplClass:Ljava/lang/Class;

    .line 324
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceside="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "apn="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "interface="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wapgatewayapn="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wapsourceport="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wapsourceip="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wapgatewayport="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wapgatewayip="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "wapenablewtls="

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tunnelauthusername="

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tunnelauthpassword="

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endtoendrequired"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/net/ConnectionManager;->possibleParameters:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionProvider;-><init>()V

    .line 43
    iput v0, p0, Lcom/vlingo/client/core/net/ConnectionManager;->cdmaSignal:I

    .line 44
    iput v0, p0, Lcom/vlingo/client/core/net/ConnectionManager;->evdoSignal:I

    .line 45
    iput v0, p0, Lcom/vlingo/client/core/net/ConnectionManager;->gsmSignal:I

    .line 88
    return-void
.end method

.method public static DEBUG_fixLocalIPs(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "url"

    .prologue
    .line 321
    return-object p0
.end method

.method private getCdmaSignal()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/vlingo/client/core/net/ConnectionManager;->cdmaSignal:I

    return v0
.end method

.method public static getConnectionTypeName(I)Ljava/lang/String;
    .registers 2
    .parameter "conType"

    .prologue
    .line 270
    packed-switch p0, :pswitch_data_10

    .line 278
    const-string v0, "Unknown"

    :goto_5
    return-object v0

    .line 272
    :pswitch_6
    const-string v0, "DirectTCP"

    goto :goto_5

    .line 274
    :pswitch_9
    const-string v0, "BIS-B"

    goto :goto_5

    .line 276
    :pswitch_c
    const-string v0, "MDS"

    goto :goto_5

    .line 270
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static getConnectionTypeName(Lcom/vlingo/client/core/net/ConnectionResult;)Ljava/lang/String;
    .registers 4
    .parameter "result"

    .prologue
    .line 131
    iget v1, p0, Lcom/vlingo/client/core/net/ConnectionResult;->connectionType:I

    invoke-static {v1}, Lcom/vlingo/client/core/net/ConnectionManager;->getConnectionTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, name:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/vlingo/client/core/net/ConnectionResult;->apnUsed:Z

    if-eqz v1, :cond_1e

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-APN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1d
    :goto_1d
    return-object v0

    .line 135
    :cond_1e
    iget-boolean v1, p0, Lcom/vlingo/client/core/net/ConnectionResult;->wifiActive:Z

    if-eqz v1, :cond_1d

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private getEvdoSignal()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/vlingo/client/core/net/ConnectionManager;->evdoSignal:I

    return v0
.end method

.method private getGsmSignal()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/vlingo/client/core/net/ConnectionManager;->gsmSignal:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/core/net/ConnectionManager;
    .registers 5

    .prologue
    .line 68
    const-class v2, Lcom/vlingo/client/core/net/ConnectionManager;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/net/ConnectionManager;->instance:Lcom/vlingo/client/core/net/ConnectionManager;

    if-nez v1, :cond_20

    .line 69
    sget-object v1, Lcom/vlingo/client/core/net/ConnectionManager;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "ConnectionManager implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 68
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 72
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/net/ConnectionManager;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/net/ConnectionManager;

    sput-object v1, Lcom/vlingo/client/core/net/ConnectionManager;->instance:Lcom/vlingo/client/core/net/ConnectionManager;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_43

    .line 83
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/net/ConnectionManager;->instance:Lcom/vlingo/client/core/net/ConnectionManager;

    invoke-virtual {v1}, Lcom/vlingo/client/core/net/ConnectionManager;->onInstanceObtained()V

    .line 84
    sget-object v1, Lcom/vlingo/client/core/net/ConnectionManager;->instance:Lcom/vlingo/client/core/net/ConnectionManager;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_13

    monitor-exit v2

    return-object v1

    .line 73
    :catch_29
    move-exception v0

    .line 76
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_2a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectionManager InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_43
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectionManager IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_13
.end method

.method private getNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4
    .parameter "phonyManager"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 198
    .local v0, type:I
    packed-switch v0, :pswitch_data_32

    .line 226
    const-string v1, "unknown"

    :goto_9
    return-object v1

    .line 200
    :pswitch_a
    const-string v1, "NETWORK_TYPE_UNKNOWN"

    goto :goto_9

    .line 202
    :pswitch_d
    const-string v1, "NETWORK_TYPE_GPRS"

    goto :goto_9

    .line 204
    :pswitch_10
    const-string v1, "NETWORK_TYPE_EDGE"

    goto :goto_9

    .line 206
    :pswitch_13
    const-string v1, "NETWORK_TYPE_UMTS"

    goto :goto_9

    .line 208
    :pswitch_16
    const-string v1, "NETWORK_TYPE_HSDPA"

    goto :goto_9

    .line 210
    :pswitch_19
    const-string v1, "NETWORK_TYPE_HSUPA"

    goto :goto_9

    .line 212
    :pswitch_1c
    const-string v1, "NETWORK_TYPE_HSPA"

    goto :goto_9

    .line 214
    :pswitch_1f
    const-string v1, "NETWORK_TYPE_CDMA"

    goto :goto_9

    .line 216
    :pswitch_22
    const-string v1, "NETWORK_TYPE_EVDO_0"

    goto :goto_9

    .line 218
    :pswitch_25
    const-string v1, "NETWORK_TYPE_EVDO_0"

    goto :goto_9

    .line 220
    :pswitch_28
    const-string v1, "NETWORK_TYPE_EVDO_B"

    goto :goto_9

    .line 222
    :pswitch_2b
    const-string v1, "NETWORK_TYPE_1xRTT"

    goto :goto_9

    .line 224
    :pswitch_2e
    const-string v1, "NETWORK_TYPE_IDEN"

    goto :goto_9

    .line 198
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_2b
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_2e
        :pswitch_28
    .end packed-switch
.end method

.method private getNetworkTypeName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 232
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 233
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v0}, Lcom/vlingo/client/core/net/ConnectionManager;->getNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWifiLinkSpeed()I
    .registers 4

    .prologue
    .line 237
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 238
    .local v0, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    return v1
.end method

.method public static declared-synchronized setConnectionManagerImpl(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/net/ConnectionManager;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 55
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ConnectionManager clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 54
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 56
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/net/ConnectionManager;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionManager invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/net/ConnectionManager;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 59
    monitor-exit v1

    return-void
.end method


# virtual methods
.method protected areConnectionParametersInUrl(Ljava/lang/String;)Z
    .registers 8
    .parameter "url"

    .prologue
    const/16 v4, 0x3b

    const/4 v5, -0x1

    .line 340
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_2f

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p1, v4}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, components:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_12
    array-length v3, v0

    if-ge v1, v3, :cond_2f

    .line 345
    const/4 v2, 0x0

    .local v2, j:I
    :goto_16
    sget-object v3, Lcom/vlingo/client/core/net/ConnectionManager;->possibleParameters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    .line 346
    aget-object v3, v0, v1

    sget-object v4, Lcom/vlingo/client/core/net/ConnectionManager;->possibleParameters:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_29

    .line 347
    const/4 v3, 0x1

    .line 352
    .end local v0           #components:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #j:I
    :goto_28
    return v3

    .line 345
    .restart local v0       #components:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 344
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 352
    .end local v0           #components:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_2f
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public abstract buildConnectionUrl(ILjava/lang/String;ZZ)Lcom/vlingo/client/core/net/ConnectionResult;
.end method

.method public generateNetworkInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 249
    const-string v0, ""

    .line 250
    .local v0, errorMsg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 253
    .local v1, wifi:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 254
    invoke-virtual {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; cdmasiglev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getCdmaSignal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; evdosiglev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getEvdoSignal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; gsmsiglev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getGsmSignal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; connType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    if-eqz v1, :cond_b9

    .line 262
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; wifilinkspd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getWifiLinkSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_b9
    return-object v0
.end method

.method public getConnection(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .registers 11
    .parameter "url"
    .parameter "mode"
    .parameter "timeouts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/16 v4, 0x61a8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/core/net/ConnectionManager;->getConnectionWithDetails(Ljava/lang/String;IZIZ)Lcom/vlingo/client/core/net/ConnectionResult;

    move-result-object v6

    .line 94
    .local v6, result:Lcom/vlingo/client/core/net/ConnectionResult;
    iget-object v0, v6, Lcom/vlingo/client/core/net/ConnectionResult;->connection:Ljavax/microedition/io/Connection;

    return-object v0
.end method

.method public getConnectionTypeSetting()I
    .registers 3

    .prologue
    .line 282
    const-string v1, "network.connection_type"

    invoke-static {v1}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getEnumValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, connTypeSetting:Ljava/lang/String;
    const-string v1, "network.connection_type.bis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 284
    const/4 v1, 0x1

    .line 289
    :goto_f
    return v1

    .line 285
    :cond_10
    const-string v1, "network.connection_type.directtcp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 286
    const/4 v1, 0x0

    goto :goto_f

    .line 287
    :cond_1a
    const-string v1, "network.connection_type.mds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 288
    const/4 v1, 0x2

    goto :goto_f

    .line 289
    :cond_24
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public getConnectionWithDetails(Ljava/lang/String;IZ)Lcom/vlingo/client/core/net/ConnectionResult;
    .registers 10
    .parameter "url"
    .parameter "mode"
    .parameter "timeouts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/16 v4, 0x61a8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/core/net/ConnectionManager;->getConnectionWithDetails(Ljava/lang/String;IZIZ)Lcom/vlingo/client/core/net/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConnectionWithDetails(Ljava/lang/String;IZIZ)Lcom/vlingo/client/core/net/ConnectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getConnectionWithDetails(Ljava/lang/String;IZZ)Lcom/vlingo/client/core/net/ConnectionResult;
    .registers 11
    .parameter "url"
    .parameter "mode"
    .parameter "timeouts"
    .parameter "ignoreDirectTCP"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v4, 0x61a8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/core/net/ConnectionManager;->getConnectionWithDetails(Ljava/lang/String;IZIZ)Lcom/vlingo/client/core/net/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConnectionType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/vlingo/client/core/net/ConnectionManager;->getConnectionTypeSetting()I

    move-result v0

    invoke-static {v0}, Lcom/vlingo/client/core/net/ConnectionManager;->getConnectionTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 143
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 144
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public abstract isConnectionTestRequired()Z
.end method

.method protected abstract onInstanceObtained()V
.end method

.method public abstract resetConnectionTest()V
.end method

.method public abstract runConnectionTests(Lcom/vlingo/client/core/net/ConnectionTest;Lcom/vlingo/client/core/net/ConnectionTestListener;)V
.end method

.method public setCdmaSignal(I)V
    .registers 2
    .parameter "cdmaSignal"

    .prologue
    .line 160
    iput p1, p0, Lcom/vlingo/client/core/net/ConnectionManager;->cdmaSignal:I

    .line 161
    return-void
.end method

.method public setEvdoSignal(I)V
    .registers 2
    .parameter "evdoSignal"

    .prologue
    .line 175
    iput p1, p0, Lcom/vlingo/client/core/net/ConnectionManager;->evdoSignal:I

    .line 176
    return-void
.end method

.method public setGsmSignal(I)V
    .registers 2
    .parameter "gsmSignal"

    .prologue
    .line 190
    iput p1, p0, Lcom/vlingo/client/core/net/ConnectionManager;->gsmSignal:I

    .line 191
    return-void
.end method
