.class public Lcom/sec/android/daemonapp/common/MyCurrentLocation;
.super Ljava/lang/Object;
.source "MyCurrentLocation.java"


# instance fields
.field private bGPSProvider:Z

.field private bNetworkProvider:Z

.field private cancelFlag:I

.field cancelRequested:Z

.field private ctx:Landroid/content/Context;

.field currentLocationHandler:Landroid/os/Handler;

.field private gpsLocationManager:Landroid/location/LocationManager;

.field private httpClient:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

.field info:Lcom/sec/android/daemonapp/info/CityInfo;

.field private isLocation:Z

.field private isNewLocationApplied:Z

.field private latitude:D

.field private final locationListener:Landroid/location/LocationListener;

.field private longitude:D

.field public mDecryptKey:Ljava/security/Key;

.field private mHttpThread:Ljava/lang/Thread;

.field private mclsProvider:Ljava/lang/String;

.field private networkLocationManager:Landroid/location/LocationManager;

.field networkOnly:Z

.field private final passiveLocationListener:Landroid/location/LocationListener;

.field private passiveLocationManager:Landroid/location/LocationManager;

.field tempScale:I

.field th:Ljava/lang/Thread;

.field timeoutHandler:Landroid/os/Handler;

.field timer:Ljava/util/Timer;

.field private urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bGPSProvider:Z

    iput-boolean v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bNetworkProvider:Z

    .line 42
    iput-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->gpsLocationManager:Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;

    .line 44
    iput-boolean v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->isLocation:Z

    .line 45
    iput v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelFlag:I

    .line 49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->isNewLocationApplied:Z

    .line 52
    iput-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mDecryptKey:Ljava/security/Key;

    .line 203
    new-instance v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$1;

    invoke-direct {v2, p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$1;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)V

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->timeoutHandler:Landroid/os/Handler;

    .line 236
    iput-boolean v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkOnly:Z

    .line 256
    iput-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    .line 281
    iput-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    .line 282
    iput v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->tempScale:I

    .line 736
    iput-boolean v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelRequested:Z

    .line 875
    new-instance v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$5;

    invoke-direct {v2, p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$5;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)V

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->locationListener:Landroid/location/LocationListener;

    .line 896
    new-instance v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;

    invoke-direct {v2, p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)V

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationListener:Landroid/location/LocationListener;

    .line 103
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->ctx:Landroid/content/Context;

    .line 104
    const-string v0, "location"

    .line 105
    .local v0, context:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->gpsLocationManager:Landroid/location/LocationManager;

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;

    .line 109
    new-instance v2, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    invoke-direct {v2, p1}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    .line 113
    new-instance v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    invoke-direct {v2, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->httpClient:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    .line 115
    :try_start_61
    sget-object v2, Lcom/sec/android/daemonapp/common/LocalSecurity;->KEYDATA:[B

    invoke-static {v2}, Lcom/sec/android/daemonapp/common/LocalSecurity;->generateKey([B)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mDecryptKey:Ljava/security/Key;
    :try_end_69
    .catch Ljava/security/InvalidKeyException; {:try_start_61 .. :try_end_69} :catch_6a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_61 .. :try_end_69} :catch_73
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_61 .. :try_end_69} :catch_7c

    .line 124
    :goto_69
    return-void

    .line 116
    :catch_6a
    move-exception v1

    .line 117
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v2, ""

    const-string v3, "InvalidKeyException"

    invoke-static {v2, v3}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 118
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_73
    move-exception v1

    .line 119
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v2, ""

    const-string v3, "NoSuchAlgorithmException"

    invoke-static {v2, v3}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 120
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_7c
    move-exception v1

    .line 121
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v2, ""

    const-string v3, "InvalidKeySpecException"

    invoke-static {v2, v3}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method static synthetic access$000(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Lcom/sec/android/daemonapp/http/AdvancedHttpClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->httpClient:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->updateWithNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private getCurrentProvider()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    const-string v5, ""

    const-string v6, "MCL getCPrvdr@"

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, S_Provider:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkOnly:Z

    if-nez v5, :cond_54

    .line 132
    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->gpsLocationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, bGPS:Z
    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 135
    .local v2, bNetwork:Z
    if-nez v1, :cond_23

    if-nez v2, :cond_23

    .line 174
    .end local v1           #bGPS:Z
    :cond_22
    :goto_22
    return v3

    .line 139
    .restart local v1       #bGPS:Z
    :cond_23
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bGPSProvider:Z

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bNetworkProvider:Z

    .line 144
    iget-boolean v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bNetworkProvider:Z

    if-eqz v5, :cond_4c

    .line 145
    const-string v5, "network"

    iput-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mclsProvider:Ljava/lang/String;

    .line 151
    :goto_2f
    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mclsProvider:Ljava/lang/String;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 152
    const-string v0, "N"

    .line 156
    :goto_3b
    const-string v5, ""

    const-string v6, "MCL getCPrvdr@1@mclsPrvdr:%s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 157
    goto :goto_22

    .line 148
    :cond_4c
    const-string v5, "gps"

    iput-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mclsProvider:Ljava/lang/String;

    goto :goto_2f

    .line 154
    :cond_51
    const-string v0, "G"

    goto :goto_3b

    .line 161
    .end local v1           #bGPS:Z
    .end local v2           #bNetwork:Z
    :cond_54
    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 163
    .restart local v2       #bNetwork:Z
    if-eqz v2, :cond_22

    .line 167
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bNetworkProvider:Z

    .line 171
    const-string v5, "network"

    iput-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mclsProvider:Ljava/lang/String;

    .line 173
    const-string v5, ""

    const-string v6, "MCL getCPrvdr@2@mclsPrvdr:N"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 174
    goto :goto_22
.end method

.method private setIsLocation(Z)V
    .registers 2
    .parameter "isLocation"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->isLocation:Z

    .line 76
    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 8
    .parameter "bytes"

    .prologue
    const/16 v6, 0x10

    .line 854
    if-nez p0, :cond_6

    .line 855
    const/4 v5, 0x0

    .line 863
    :goto_5
    return-object v5

    .line 858
    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 859
    .local v4, result:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_29

    aget-byte v1, v0, v2

    .line 860
    .local v1, b:B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 863
    .end local v1           #b:B
    :cond_29
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method private updateWithNewLocation(Landroid/location/Location;)V
    .registers 13
    .parameter "location"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 760
    const-string v6, ""

    const-string v7, "MCL udWithNL@"

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, EncryptLongitude:Ljava/lang/String;
    const/4 v0, 0x0

    .line 764
    .local v0, EncryptLatitude:Ljava/lang/String;
    const/4 v2, 0x0

    .line 800
    .local v2, S_Provider:Ljava/lang/String;
    if-eqz p1, :cond_fd

    .line 801
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setLatitude(D)V

    .line 802
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setLongitude(D)V

    .line 803
    invoke-direct {p0, v10}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setIsLocation(Z)V

    .line 804
    invoke-virtual {p0, v9}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelGetLastLocation(I)V

    .line 807
    :try_start_22
    iget-object v6, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mDecryptKey:Ljava/security/Key;

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 808
    iget-object v6, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mDecryptKey:Ljava/security/Key;

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->toHexString([B)Ljava/lang/String;
    :try_end_45
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_45} :catch_bd

    move-result-object v0

    .line 813
    :goto_46
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 814
    const-string v2, "N"

    .line 820
    :goto_54
    const/4 v4, 0x0

    .line 824
    .local v4, file:Z
    :try_start_55
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/mnt/sdcard/widgetgetlog.txt"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 825
    .local v5, fis:Ljava/io/FileInputStream;
    const-string v6, ""

    const-string v7, "LF_success!!!"

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v4, 0x1

    .line 827
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_67} :catch_d9

    .line 835
    .end local v5           #fis:Ljava/io/FileInputStream;
    :goto_67
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-eqz v4, :cond_f5

    .line 838
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCL - %s, %s, P: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v6, ""

    const-string v7, "!!file is exisist"

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :goto_ab
    iget-wide v6, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->addCityWeatherFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 850
    .end local v4           #file:Z
    :goto_bc
    return-void

    .line 809
    :catch_bd
    move-exception v3

    .line 810
    .local v3, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v6, ""

    const-string v7, "InvalidAlgorithmParameterException"

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 815
    .end local v3           #e:Ljava/security/InvalidAlgorithmParameterException;
    :cond_c6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 816
    const-string v2, "G"

    goto :goto_54

    .line 818
    :cond_d5
    const-string v2, "P"

    goto/16 :goto_54

    .line 829
    .restart local v4       #file:Z
    :catch_d9
    move-exception v3

    .line 831
    .local v3, e:Ljava/lang/Exception;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v4, 0x0

    goto/16 :goto_67

    .line 843
    .end local v3           #e:Ljava/lang/Exception;
    :cond_f5
    const-string v6, ""

    const-string v7, "file is not found!!"

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 848
    .end local v4           #file:Z
    :cond_fd
    invoke-direct {p0, v9}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setIsLocation(Z)V

    goto :goto_bc
.end method


# virtual methods
.method public addCityWeatherFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7
    .parameter "latitude"
    .parameter "longitude"
    .parameter "locationHandler"

    .prologue
    .line 285
    const-string v1, ""

    const-string v2, "MCL adCtWthrFrmPrvdr@"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelRequested:Z

    .line 289
    new-instance v0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 331
    .local v0, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 332
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 334
    :cond_20
    iput-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 337
    return-void
.end method

.method public cancelGetLastLocation(I)V
    .registers 4
    .parameter "cancelFlag"

    .prologue
    .line 739
    const-string v0, ""

    const-string v1, "MCL cnclGetLLoc@"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelRequested:Z

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->removeLocationListener()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 747
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 750
    :cond_16
    invoke-virtual {p0, p1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setCancelFlag(I)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    .line 752
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    .line 756
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->stopHttpThread()V

    .line 757
    return-void
.end method

.method public getCencelFlag()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelFlag:I

    return v0
.end method

.method public getCurrentLocation()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 179
    const-string v0, ""

    const-string v1, "MCL getCL@"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bGPSProvider:Z

    if-eqz v0, :cond_1e

    .line 183
    const-string v0, ""

    const-string v1, "MCL - Try get CL via G.P"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->gpsLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 187
    :cond_1e
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->bNetworkProvider:Z

    if-eqz v0, :cond_32

    .line 189
    const-string v0, ""

    const-string v1, "MCL - Try get CL via N.P"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 193
    :cond_32
    return-void
.end method

.method public getDetailInfo(Lcom/sec/android/daemonapp/info/CityInfo;ILandroid/os/Handler;)V
    .registers 11
    .parameter "cityInfo"
    .parameter "tempScale"
    .parameter "locationHandler"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    invoke-virtual {v1}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v3

    .line 344
    .local v3, headerGroup:Lorg/apache/http/message/HeaderGroup;
    if-nez p1, :cond_20

    .line 345
    const-string v1, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cyInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_20
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    invoke-virtual {p1}, Lcom/sec/android/daemonapp/info/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v2

    .line 350
    .local v2, url:Ljava/net/URL;
    new-instance v0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;ILcom/sec/android/daemonapp/info/CityInfo;Landroid/os/Handler;)V

    .line 412
    .local v0, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 413
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 415
    :cond_44
    iput-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    return-void
.end method

.method public getIsNewLocationApplied()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->isNewLocationApplied:Z

    return v0
.end method

.method public getLastLocation(Landroid/os/Handler;IZ)V
    .registers 9
    .parameter "resultHandler"
    .parameter "condition"
    .parameter "isDetectingTimeLimit"

    .prologue
    .line 690
    const-string v1, ""

    const-string v2, "MCL getLLoc@"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    .line 692
    invoke-direct {p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getCurrentProvider()I

    move-result v0

    .line 693
    .local v0, resultProvider:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_29

    .line 695
    if-nez p2, :cond_15

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getCurrentLocation()V

    .line 700
    :cond_15
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->timer:Ljava/util/Timer;

    .line 701
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$4;

    invoke-direct {v2, p0, p3}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$4;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Z)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 734
    :goto_28
    return-void

    .line 731
    :cond_29
    const-string v1, ""

    const-string v2, "PrvdrErr!!"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->longitude:D

    return-wide v0
.end method

.method public getPassiveLocation()V
    .registers 7

    .prologue
    .line 197
    const-string v0, ""

    const-string v1, "MCL getPassiveCL@"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 199
    const-string v0, ""

    const-string v1, "MCL - Try get CL via Passive"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 202
    :cond_24
    return-void
.end method

.method public getUseProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mclsProvider:Ljava/lang/String;

    return-object v0
.end method

.method public isGetLocation()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->isLocation:Z

    return v0
.end method

.method public performCurrentLocation(Landroid/os/Handler;)V
    .registers 7
    .parameter "locationHandler"

    .prologue
    .line 260
    const-string v1, ""

    const-string v2, "MCL pfCL@"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setCancelFlag(I)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    iget-wide v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeUrlForLocGetData(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 264
    .local v0, url:Ljava/net/URL;
    if-nez v0, :cond_20

    .line 268
    :goto_1f
    return-void

    .line 267
    :cond_20
    iget-wide v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->addCityWeatherFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1f
.end method

.method public performGetCurrentLocation(Landroid/os/Handler;IZ)V
    .registers 7
    .parameter "locationHandler"
    .parameter "condition"
    .parameter "isDetectingTimeLimit"

    .prologue
    const/4 v2, 0x0

    .line 219
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkOnly:Z

    .line 220
    const-string v0, ""

    const-string v1, "MCL pfGetCL@N.P:false"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    .line 225
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelFlag:I

    if-nez v0, :cond_1d

    .line 234
    :goto_1c
    return-void

    .line 228
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    invoke-virtual {p0, v2}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setCancelFlag(I)V

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getLastLocation(Landroid/os/Handler;IZ)V

    goto :goto_1c
.end method

.method public performGetCurrentLocation(Landroid/os/Handler;IZZ)V
    .registers 8
    .parameter "locationHandler"
    .parameter "condition"
    .parameter "isDetectingTimeLimit"
    .parameter "networkOnly"

    .prologue
    .line 239
    iput-boolean p4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkOnly:Z

    .line 240
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCL pfGetCL@N.P:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    .line 245
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->th:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelFlag:I

    if-nez v0, :cond_2d

    .line 254
    :goto_2c
    return-void

    .line 248
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->setCancelFlag(I)V

    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getLastLocation(Landroid/os/Handler;IZ)V

    goto :goto_2c
.end method

.method public removeLocationListener()V
    .registers 3

    .prologue
    .line 868
    const-string v0, ""

    const-string v1, "MCL remLocListener"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_12

    .line 870
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->networkLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 871
    :cond_12
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->gpsLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1d

    .line 872
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->gpsLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 873
    :cond_1d
    return-void
.end method

.method public setCancelFlag(I)V
    .registers 2
    .parameter "cancelFlag"

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelFlag:I

    .line 56
    return-void
.end method

.method public setIsNewLocationApplied(Z)V
    .registers 2
    .parameter "isNewLocationApplied"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->isNewLocationApplied:Z

    .line 64
    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .parameter "latitude"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->latitude:D

    .line 84
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .parameter "longitude"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->longitude:D

    .line 92
    return-void
.end method

.method public setUseProvider(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mclsProvider:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public stopHttpThread()V
    .registers 3

    .prologue
    .line 271
    const-string v0, ""

    const-string v1, "MCL stopHttpThrd@"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1b

    .line 273
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 274
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 276
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;

    .line 278
    :cond_1b
    return-void
.end method
