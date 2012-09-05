.class public abstract Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;
    }
.end annotation


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/vlingo/client/core/deviceinfo/PhoneInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
    .registers 5

    .prologue
    .line 67
    const-class v2, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->instance:Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    if-nez v1, :cond_20

    .line 68
    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "PhoneInfo implementation class null"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 67
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 71
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    sput-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->instance:Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_3e

    .line 82
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->instance:Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 72
    :catch_24
    move-exception v0

    .line 75
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneInfo InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3e
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneInfo IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_13
.end method

.method public static hashForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "number"

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 87
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 90
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_1c

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 96
    .end local v0           #c:C
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x7

    if-le v4, v5, :cond_2d

    .line 97
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 99
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/vlingo/client/core/crypto/CryptoUtils;->getHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static declared-synchronized setPhoneInfoImplClass(Ljava/lang/Class;)V
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
    .line 23
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 24
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PhoneInfo clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 23
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 25
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneInfo invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 28
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public abstract getCarrierCountry()Ljava/lang/String;
.end method

.method public abstract getCurrentCarrier()Ljava/lang/String;
.end method

.method public abstract getCurrentNetworkISO3CountryCode()Ljava/lang/String;
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public abstract getModel()Ljava/lang/String;
.end method

.method public abstract getOSVersion()Ljava/lang/String;
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPhoneNumberHash()Ljava/lang/String;
.end method

.method public abstract getShortOSVersion()Ljava/lang/String;
.end method

.method public abstract getVendorCarrier()Ljava/lang/String;
.end method

.method public abstract getVendorCountry()Ljava/lang/String;
.end method

.method public abstract getVendorID()I
.end method

.method public abstract getVendorName()Ljava/lang/String;
.end method

.method public abstract isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;
.end method

.method public isReadyToConnect()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->SUCCESS:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public abstract isSimulator()Z
.end method

.method public abstract isTouchDevice()Z
.end method
