.class public Lcom/google/android/finsky/activities/GetMarketMetadataAction;
.super Ljava/lang/Object;
.source "GetMarketMetadataAction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/GetMarketMetadataAction;Landroid/content/Context;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->showWarningIfNecessary(Landroid/content/Context;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method

.method private showWarningIfNecessary(Landroid/content/Context;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 13
    .parameter "context"
    .parameter "response"

    .prologue
    .line 122
    const/4 v6, 0x0

    .line 126
    .local v6, toShowWarning:Z
    sget-object v8, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_METADATA_WARNING_TIMESTAMP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 127
    .local v4, lastTimestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    .local v0, current:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_30

    .line 129
    const/4 v6, 0x1

    .line 137
    :cond_18
    :goto_18
    if-eqz v6, :cond_2f

    .line 138
    sget-object v8, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_METADATA_WARNING_TIMESTAMP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getWarningMessage()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, warningMessage:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 142
    .end local v7           #warningMessage:Ljava/lang/String;
    :cond_2f
    return-void

    .line 131
    :cond_30
    sget-object v8, Lcom/google/android/finsky/config/G;->vendingWarningMessageFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 132
    .local v2, frequency:J
    add-long v8, v4, v2

    cmp-long v8, v8, v0

    if-gez v8, :cond_18

    .line 133
    const/4 v6, 0x1

    goto :goto_18
.end method


# virtual methods
.method public run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;>;"
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;-><init>()V

    .line 43
    .local v1, request:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 46
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 48
    .local v11, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceRoaming(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 52
    :try_start_1b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 55
    .local v8, marketPackageInfo:Landroid/content/pm/PackageInfo;
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 56
    .local v10, signatures:[Landroid/content/pm/Signature;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2c
    array-length v2, v10

    if-ge v7, v2, :cond_40

    .line 57
    aget-object v2, v10, v7

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    .line 58
    .local v9, signature:[B
    invoke-static {v9}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->addMarketSignatureHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_3c} :catch_3f

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 60
    .end local v7           #i:I
    .end local v8           #marketPackageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #signature:[B
    .end local v10           #signatures:[Landroid/content/pm/Signature;
    :catch_3f
    move-exception v2

    .line 63
    :cond_40
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceModelName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 64
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceManufacturerName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 66
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    .line 67
    .local v6, app:Lcom/google/android/finsky/FinskyApp;
    invoke-virtual {v6, p2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    .line 69
    .local v0, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    new-instance v4, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;

    invoke-direct {v4, p0, p2, p1, p3}, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;-><init>(Lcom/google/android/finsky/activities/GetMarketMetadataAction;Ljava/lang/String;Landroid/content/Context;Lcom/android/volley/Response$Listener;)V

    .line 89
    .local v4, wrapListener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;>;"
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getHashCode(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)I

    move-result v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/vending/remoting/api/VendingApi;->getMetadata(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 92
    return-void
.end method

.method public runBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 100
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 101
    .local v1, sem:Ljava/util/concurrent/Semaphore;
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 104
    .local v0, responseProto:[Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    new-instance v2, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;-><init>(Lcom/google/android/finsky/activities/GetMarketMetadataAction;[Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;Ljava/util/concurrent/Semaphore;)V

    new-instance v3, Lcom/google/android/finsky/activities/GetMarketMetadataAction$3;

    invoke-direct {v3, p0, v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction$3;-><init>(Lcom/google/android/finsky/activities/GetMarketMetadataAction;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 117
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 118
    aget-object v2, v0, v4

    return-object v2
.end method
