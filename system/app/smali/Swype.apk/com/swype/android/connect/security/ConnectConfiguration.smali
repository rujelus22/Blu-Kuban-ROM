.class public Lcom/swype/android/connect/security/ConnectConfiguration;
.super Ljava/lang/Object;
.source "ConnectConfiguration.java"


# static fields
.field private static final ASSET_DATA_FILES_FOLDER:Ljava/lang/String; = "files"

.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "connect.dat"

.field private static final CONFIGURATION_FILE_ON_APK:Ljava/lang/String; = "files/connect.dat"

.field private static CONFIGURATION_FILE_ON_FILESYSTEM:Ljava/lang/String; = null

.field private static final CONFIGURATION_INVALID:I = 0x0

.field private static final CONFIGURATION_UNKNOWN:I = 0x2

.field private static final CONFIGURATION_VALID:I = 0x1

.field private static final DEFAULT_DEFAULT_DELAY:I = 0x12c

.field private static final DEFAULT_DEFAULT_LOADTIME:I = 0xe10

.field private static final DEFAULT_LOGGING:I = 0x6

.field private static final DEFAULT_POLLING_DELAY:I = 0x3840

.field private static final DEFAULT_REPORTING_FREQUENCY_IN_SECONDS:I = 0x54600

.field private static final DEFAULT_URL:Ljava/lang/String; = "https://api.swypeconnect.com/"

.field private static final DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field private static NATIVE_DATA_FILE_DIR:Ljava/lang/String; = null

.field public static final PROPERTY_DATA_PATH:Ljava/lang/String; = "DATA_PATH"

.field public static final PROPERTY_DEFAULT_DELAY:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final PROPERTY_DEFAULT_LOADTIME:Ljava/lang/String; = "INITIAL_LOADTIME"

.field public static final PROPERTY_LOGGING:Ljava/lang/String; = "LOGGING"

.field public static final PROPERTY_POLLING_FREQUENCY:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final PROPERTY_REPORTING_FREQUENCY:Ljava/lang/String; = "REPORTING_FREQUENCY"

.field public static final PROPERTY_URL:Ljava/lang/String; = "URL"


# instance fields
.field private configurationStatus:I

.field private context:Landroid/content/Context;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const-string v0, "/data/data/com.swype.android.inputmethod/swypedata"

    sput-object v0, Lcom/swype/android/connect/security/ConnectConfiguration;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/connect/security/ConnectConfiguration;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connect.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/connect/security/ConnectConfiguration;->CONFIGURATION_FILE_ON_FILESYSTEM:Ljava/lang/String;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "URL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEFAULT_DELAY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "REPORTING_FREQUENCY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "POLLING_FREQUENCY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LOGGING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "INITIAL_LOADTIME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/connect/security/ConnectConfiguration;->DEVICE_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .registers 5
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    .line 101
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;->updateSystemPaths(Landroid/app/Service;)V

    .line 102
    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    const-string v1, "DATA_PATH"

    sget-object v2, Lcom/swype/android/connect/security/ConnectConfiguration;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->context:Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->isValidConfiguration([B)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 118
    :cond_26
    :goto_26
    return-void

    .line 111
    :cond_27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->isValidConfiguration([B)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_26
.end method

.method public constructor <init>(Landroid/app/Service;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    .line 126
    invoke-virtual {p0, p2}, Lcom/swype/android/connect/security/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    .line 127
    iput-object p1, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->context:Landroid/content/Context;

    .line 128
    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->isValid(Ljava/util/Map;)Z

    .line 129
    return-void
.end method

.method public static bytesToStr([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 470
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/swype/android/connect/security/ConnectConfiguration;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 472
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidConfiguration([B)Z
    .registers 4
    .parameter "digest"

    .prologue
    .line 150
    if-eqz p1, :cond_12

    .line 151
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;->createFromDigest([B)Ljava/util/Map;

    move-result-object v0

    .line 152
    .local v0, propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->isValid(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 154
    iput-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    .line 155
    const/4 v1, 0x1

    .line 158
    .end local v0           #propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isValidProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    .line 395
    sget-object v0, Lcom/swype/android/connect/security/ConnectConfiguration;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_1d

    aget-object v3, v0, v1

    .line 396
    .local v3, prop:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/swype/android/connect/security/ConnectConfiguration;->validateDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 397
    const/4 v4, 0x1

    .line 402
    .end local v3           #prop:Ljava/lang/String;
    :goto_19
    return v4

    .line 395
    .restart local v3       #prop:Ljava/lang/String;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 402
    .end local v3           #prop:Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    goto :goto_19
.end method

.method public static toHex(I)Ljava/lang/String;
    .registers 4
    .parameter "d"

    .prologue
    .line 476
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, hex:Ljava/lang/String;
    const/16 v1, 0x10

    if-ge p0, v1, :cond_1c

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    :goto_1b
    return-object v1

    :cond_1c
    move-object v1, v0

    goto :goto_1b
.end method

.method private validateDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    .line 414
    const-string v0, "URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 415
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v1

    .line 463
    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 418
    :cond_16
    const-string v0, "DEFAULT_DELAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 420
    :try_start_1e
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_21} :catch_26

    move-result v0

    if-lez v0, :cond_7f

    move v0, v1

    .line 421
    goto :goto_11

    .line 424
    :catch_26
    move-exception v0

    move v0, v2

    .line 425
    goto :goto_11

    .line 426
    :cond_29
    const-string v0, "REPORTING_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 428
    :try_start_31
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_34} :catch_39

    move-result v0

    if-lez v0, :cond_7f

    move v0, v1

    .line 429
    goto :goto_11

    .line 432
    :catch_39
    move-exception v0

    move v0, v2

    .line 433
    goto :goto_11

    .line 434
    :cond_3c
    const-string v0, "POLLING_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 436
    :try_start_44
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_47} :catch_4c

    move-result v0

    if-lez v0, :cond_7f

    move v0, v1

    .line 437
    goto :goto_11

    .line 440
    :catch_4c
    move-exception v0

    move v0, v2

    .line 441
    goto :goto_11

    .line 442
    :cond_4f
    const-string v0, "LOGGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 444
    :try_start_57
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5a} :catch_5f

    move-result v0

    if-ltz v0, :cond_7f

    move v0, v1

    .line 445
    goto :goto_11

    .line 448
    :catch_5f
    move-exception v0

    move v0, v2

    .line 449
    goto :goto_11

    .line 450
    :cond_62
    const-string v0, "INITIAL_LOADTIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 452
    :try_start_6a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_6d} :catch_72

    move-result v0

    if-ltz v0, :cond_7f

    move v0, v1

    .line 453
    goto :goto_11

    .line 456
    :catch_72
    move-exception v0

    move v0, v2

    .line 457
    goto :goto_11

    .line 458
    :cond_75
    const-string v0, "DATA_PATH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v1

    .line 459
    goto :goto_11

    :cond_7f
    move v0, v2

    goto :goto_11
.end method


# virtual methods
.method public createFromDigest([B)Ljava/util/Map;
    .registers 4
    .parameter "digest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {p1}, Lcom/swype/android/connect/util/EncryptUtils;->decrypt([B)[B

    move-result-object v0

    .line 349
    .local v0, message:[B
    if-eqz v0, :cond_10

    .line 350
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/security/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 352
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public createFromString(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 322
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_36

    .line 324
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 328
    if-ltz v3, :cond_f

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 330
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_33} :catch_34

    goto :goto_f

    .line 337
    :catch_34
    move-exception v0

    const/4 v0, 0x0

    :cond_36
    return-object v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->context:Landroid/content/Context;

    .line 170
    return-void
.end method

.method public getAPKFileContents(Ljava/lang/String;)[B
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 298
    :try_start_6
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1b

    .line 300
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 301
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 302
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 307
    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getConfigurationDigest(Z)[B
    .registers 4
    .parameter "isFromAPK"

    .prologue
    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_8

    .line 235
    invoke-virtual {p0, v1}, Lcom/swype/android/connect/security/ConnectConfiguration;->getConfigurationFromFileSystem(Ljava/lang/String;)[B

    move-result-object v0

    .line 243
    :goto_7
    return-object v0

    .line 239
    :cond_8
    :try_start_8
    const-string v0, "files/connect.dat"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->getAPKFileContents(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_7

    .line 243
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_7
.end method

.method public getConfigurationFromFileSystem(Ljava/lang/String;)[B
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 255
    if-nez p1, :cond_43

    .line 256
    sget-object v0, Lcom/swype/android/connect/security/ConnectConfiguration;->CONFIGURATION_FILE_ON_FILESYSTEM:Ljava/lang/String;

    .line 261
    :goto_5
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_24

    .line 263
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 265
    if-lez v1, :cond_1f

    .line 266
    new-array v1, v1, [B

    .line 267
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_41

    .line 274
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_36

    :goto_1d
    move-object v0, v1

    .line 281
    :goto_1e
    return-object v0

    .line 274
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_38

    :cond_22
    :goto_22
    move-object v0, v2

    .line 281
    goto :goto_1e

    .line 274
    :catch_24
    move-exception v0

    move-object v0, v2

    :goto_26
    if-eqz v0, :cond_22

    .line 276
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_22

    .line 278
    :catch_2c
    move-exception v0

    goto :goto_22

    .line 274
    :catchall_2e
    move-exception v0

    move-object v1, v2

    :goto_30
    if-eqz v1, :cond_35

    .line 276
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3a

    .line 278
    :cond_35
    :goto_35
    throw v0

    :catch_36
    move-exception v0

    goto :goto_1d

    :catch_38
    move-exception v0

    goto :goto_22

    :catch_3a
    move-exception v1

    goto :goto_35

    .line 274
    :catchall_3c
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_30

    :catch_41
    move-exception v1

    goto :goto_26

    :cond_43
    move-object v0, p1

    goto :goto_5
.end method

.method protected getDefaultIntProperty(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 210
    const-string v0, "DEFAULT_DELAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    const/16 v0, 0x12c

    .line 221
    :goto_a
    return v0

    .line 212
    :cond_b
    const-string v0, "REPORTING_FREQUENCY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 213
    const v0, 0x54600

    goto :goto_a

    .line 214
    :cond_17
    const-string v0, "POLLING_FREQUENCY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 215
    const/16 v0, 0x3840

    goto :goto_a

    .line 216
    :cond_22
    const-string v0, "LOGGING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 217
    const/4 v0, 0x6

    goto :goto_a

    .line 218
    :cond_2c
    const-string v0, "INITIAL_LOADTIME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 219
    const/16 v0, 0xe10

    goto :goto_a

    .line 221
    :cond_37
    const/high16 v0, -0x8000

    goto :goto_a
.end method

.method protected getDefaultProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 202
    const-string v0, "URL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    const-string v0, "https://api.swypeconnect.com/"

    .line 205
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .registers 4
    .parameter "name"

    .prologue
    .line 191
    iget v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 194
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;->getDefaultIntProperty(Ljava/lang/String;)I

    move-result v0

    .line 197
    .end local p0
    :goto_23
    return v0

    .restart local p0
    :cond_24
    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_23
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 180
    iget v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 183
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;->getDefaultProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .end local p0
    :goto_23
    return-object v0

    .restart local p0
    :cond_24
    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_23
.end method

.method public isValid(Ljava/util/Map;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    .local v1, propertyName:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/swype/android/connect/security/ConnectConfiguration;->isValidProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 376
    iput v3, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    move v2, v3

    .line 383
    .end local v1           #propertyName:Ljava/lang/String;
    :goto_25
    return v2

    .line 382
    :cond_26
    iput v4, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->configurationStatus:I

    move v2, v4

    .line 383
    goto :goto_25
.end method

.method public overrideValues(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/security/ConnectConfiguration;->validateDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 487
    iget-object v1, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 490
    :cond_2e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    iget-object v0, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/swype/android/connect/security/ConnectConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 362
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateSystemPaths(Landroid/app/Service;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 134
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/swypedata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/swype/android/connect/security/ConnectConfiguration;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_3d

    .line 140
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/swype/android/connect/security/ConnectConfiguration;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connect.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/swype/android/connect/security/ConnectConfiguration;->CONFIGURATION_FILE_ON_FILESYSTEM:Ljava/lang/String;

    .line 141
    return-void

    .line 136
    :catch_3d
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading package data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1f
.end method
