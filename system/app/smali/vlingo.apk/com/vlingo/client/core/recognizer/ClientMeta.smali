.class public Lcom/vlingo/client/core/recognizer/ClientMeta;
.super Ljava/lang/Object;
.source "ClientMeta.java"


# static fields
.field private static volatile ClientMetaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/vlingo/client/core/recognizer/ClientMeta;


# instance fields
.field deviceID:Ljava/lang/String;

.field deviceModel:Ljava/lang/String;

.field deviceOS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    .line 27
    sput-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->instance:Lcom/vlingo/client/core/recognizer/ClientMeta;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceID:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceModel:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceOS:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->instance:Lcom/vlingo/client/core/recognizer/ClientMeta;

    if-nez v0, :cond_12

    .line 61
    const-class v1, Lcom/vlingo/client/core/recognizer/ClientMeta;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->instance:Lcom/vlingo/client/core/recognizer/ClientMeta;

    if-nez v0, :cond_11

    .line 63
    invoke-static {}, Lcom/vlingo/client/core/recognizer/ClientMeta;->newInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->instance:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 64
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 66
    :cond_12
    sget-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->instance:Lcom/vlingo/client/core/recognizer/ClientMeta;

    return-object v0

    .line 64
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static newInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;
    .registers 4

    .prologue
    .line 45
    sget-object v1, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    if-eqz v1, :cond_73

    .line 47
    :try_start_4
    sget-object v1, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/ClientMeta;
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_3c

    .line 56
    :goto_c
    return-object v1

    .line 48
    :catch_d
    move-exception v0

    .line 49
    .local v0, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantiationException creating new instance: Class must contain empty constructor to avoid this exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3c
    move-exception v0

    .line 52
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException creating new instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :cond_73
    new-instance v1, Lcom/vlingo/client/core/recognizer/ClientMeta;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/ClientMeta;-><init>()V

    goto :goto_c
.end method

.method public static setClientMetaClass(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, contextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ClientMetaClass has already been set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c
    if-nez p0, :cond_16

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contextClass must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_16
    const-class v0, Lcom/vlingo/client/core/recognizer/ClientMeta;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36
    sput-object p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->ClientMetaClass:Ljava/lang/Class;

    .line 39
    return-void

    .line 38
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assignment of contextClass failed. contextClass must be to be subclass of ClientMeta."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCarrier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getCarrierCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceID:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 79
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceID:Ljava/lang/String;

    .line 80
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMake()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "BlackBerry"

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 97
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceModel:Ljava/lang/String;

    .line 98
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/ClientMeta;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, "BlackBerry"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "en-US"

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getCellTowerInfo()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, location:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 116
    const-string v0, ""

    .line 118
    :cond_8
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string v0, ""

    return-object v0
.end method

.method public getVendorID()I
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getVendorID()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientMeta - Carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CarrierCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getCarrierCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VendorID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getVendorID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceMake: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getDeviceMake()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceOS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getDeviceOS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PhoneNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
