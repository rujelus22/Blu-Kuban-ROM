.class public Lcom/sec/print/mobileprint/dm/XMLDeviceManager;
.super Ljava/lang/Object;
.source "XMLDeviceManager.java"


# instance fields
.field curDeviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

.field curModelName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->curModelName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->curDeviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    return-void
.end method

.method private loadDeviceInfo(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    .registers 6
    .parameter "assetMgr"
    .parameter "modelName"

    .prologue
    .line 21
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->curModelName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_16

    .line 24
    :try_start_8
    iput-object p2, p0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->curModelName:Ljava/lang/String;

    .line 25
    const-string v2, "mobileprint_model_list.xml"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->loadCapability(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v0

    .line 26
    .local v0, deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->curDeviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_19

    .line 33
    .end local v0           #deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->curDeviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    return-object v2

    .line 27
    :catch_19
    move-exception v1

    .line 29
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method


# virtual methods
.method public getLanguages(Landroid/content/res/AssetManager;Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .registers 10
    .parameter "assetMgr"
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, listLanguage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->loadDeviceInfo(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v0

    .line 39
    .local v0, deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    if-nez v0, :cond_11

    .line 41
    const/4 v1, 0x0

    .line 54
    .end local v1           #listLanguage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    return-object v1

    .line 43
    .restart local v1       #listLanguage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->getEmulation()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, strPDLType:Ljava/lang/String;
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    .line 45
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_24
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 47
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, pdl:Ljava/lang/String;
    const-string v5, "^\\s+"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v5, "\\s+$"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method public isPrinterColorModel(Landroid/content/res/AssetManager;Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 7
    .parameter "assetMgr"
    .parameter "device"

    .prologue
    .line 58
    const/4 v1, -0x1

    .line 59
    .local v1, result:I
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->loadDeviceInfo(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v0

    .line 60
    .local v0, deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    if-nez v0, :cond_d

    .line 62
    const/4 v2, -0x1

    .line 73
    :goto_c
    return v2

    .line 65
    :cond_d
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->isColorMode()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 67
    const/4 v1, 0x1

    :goto_15
    move v2, v1

    .line 73
    goto :goto_c

    .line 70
    :cond_17
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isSupportDuplex(Landroid/content/res/AssetManager;Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 7
    .parameter "assetMgr"
    .parameter "device"

    .prologue
    .line 77
    const/4 v1, -0x1

    .line 78
    .local v1, result:I
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->loadDeviceInfo(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v0

    .line 79
    .local v0, deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    if-nez v0, :cond_d

    .line 81
    const/4 v2, -0x1

    .line 92
    :goto_c
    return v2

    .line 84
    :cond_d
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->isDuplex()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 86
    const/4 v1, 0x1

    :goto_15
    move v2, v1

    .line 92
    goto :goto_c

    .line 89
    :cond_17
    const/4 v1, 0x0

    goto :goto_15
.end method
