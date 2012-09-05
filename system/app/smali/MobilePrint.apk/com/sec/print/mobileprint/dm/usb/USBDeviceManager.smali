.class public Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;
.super Ljava/lang/Object;
.source "USBDeviceManager.java"

# interfaces
.implements Lcom/sec/print/mobileprint/dm/IDeviceManager;


# static fields
.field static final PREFIX_USBPORT:Ljava/lang/String; = "/dev/usb/"

.field static final patternCLS:Ljava/lang/String; = ".*CLS:([^\\:\\;]+);.*"

.field static final patternManufacture:Ljava/lang/String; = ".*MFG:([^\\:\\;]+);.*"

.field static final patternModelName:Ljava/lang/String; = ".*MDL:([^\\:\\;]+);.*"

.field static final patternPDLTypes:Ljava/lang/String; = ".*CMD:([^\\:\\;]+);.*"

.field static final patternStatus:Ljava/lang/String; = ".*STATUS:([^\\:\\;]+);.*"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "datas"
    .parameter "patternString"

    .prologue
    const/4 v4, 0x1

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, result:Ljava/lang/String;
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 174
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 175
    .local v0, mc:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 177
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v4, :cond_1a

    .line 179
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    :cond_1a
    :goto_1a
    return-object v2

    .line 184
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private getModelName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "usbPortAddr"

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->loadCapabilityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, strCapability:Ljava/lang/String;
    if-nez v3, :cond_9

    move-object v1, v5

    .line 145
    :goto_8
    return-object v1

    .line 126
    :cond_9
    const-string v6, ".*MFG:([^\\:\\;]+);.*"

    invoke-direct {p0, v3, v6}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, manufacturer:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 128
    move-object v1, v0

    .line 134
    .local v1, modelFullName:Ljava/lang/String;
    :goto_12
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, tempModelFullName:Ljava/lang/String;
    const-string v6, "samsung"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    move-object v1, v5

    .line 136
    goto :goto_8

    .line 130
    .end local v1           #modelFullName:Ljava/lang/String;
    .end local v4           #tempModelFullName:Ljava/lang/String;
    :cond_20
    const-string v1, ""

    .restart local v1       #modelFullName:Ljava/lang/String;
    goto :goto_12

    .line 139
    .restart local v4       #tempModelFullName:Ljava/lang/String;
    :cond_23
    const-string v6, ".*MDL:([^\\:\\;]+);.*"

    invoke-direct {p0, v3, v6}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, modelName:Ljava/lang/String;
    if-nez v2, :cond_2d

    move-object v1, v5

    .line 141
    goto :goto_8

    .line 144
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    goto :goto_8
.end method

.method private getPDLTypes(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "usbPortAddr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->loadCapabilityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, strCapability:Ljava/lang/String;
    if-nez v6, :cond_8

    .line 165
    :cond_7
    return-object v7

    .line 155
    :cond_8
    const-string v8, ".*CMD:([^\\:\\;]+);.*"

    invoke-direct {p0, v6, v8}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, PDLTypes:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 157
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, langs:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v7, supportPDLTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1e
    if-ge v2, v5, :cond_7

    aget-object v3, v1, v2

    .line 160
    .local v3, lang:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e
.end method

.method private isColorModel(Ljava/lang/String;)I
    .registers 4
    .parameter "modelName"

    .prologue
    const/4 v0, 0x1

    .line 102
    const-string v1, "CLP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v1, v0, :cond_11

    const-string v1, "CLX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_12

    .line 109
    :cond_11
    :goto_11
    return v0

    .line 105
    :cond_12
    const-string v1, "ML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v1, v0, :cond_22

    const-string v1, "SCX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_24

    .line 107
    :cond_22
    const/4 v0, 0x0

    goto :goto_11

    .line 109
    :cond_24
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private isExist(Ljava/lang/String;)Z
    .registers 5
    .parameter "usbPortAddr"

    .prologue
    const/4 v1, 0x1

    .line 192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, usbLP0Port:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_d

    .line 198
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private loadCapabilityString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "usbPortAddr"

    .prologue
    const/4 v6, 0x0

    .line 203
    if-nez p1, :cond_5

    move-object v0, v6

    .line 235
    :cond_4
    :goto_4
    return-object v0

    .line 207
    :cond_5
    const-string v7, "/dev/usb/"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, usbPortName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 210
    .local v0, capabilityString:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/usb/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/device/ieee1284_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, usbPort:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 215
    :try_start_33
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 216
    .local v3, fis:Ljava/io/FileInputStream;
    const-string v7, "test"

    const-string v8, " **** print capability test **** "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3f} :catch_5b

    .line 219
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v1, v7, [B

    .line 220
    .local v1, data:[B
    :cond_45
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_45

    .line 221
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 222
    new-instance v0, Ljava/lang/String;

    .end local v0           #capabilityString:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_54} :catch_55
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_54} :catch_5b

    .restart local v0       #capabilityString:Ljava/lang/String;
    goto :goto_4

    .line 223
    .end local v0           #capabilityString:Ljava/lang/String;
    .end local v1           #data:[B
    :catch_55
    move-exception v2

    .line 225
    .local v2, e:Ljava/io/IOException;
    :try_start_56
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_5b

    move-object v0, v6

    .line 226
    goto :goto_4

    .line 228
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_5b
    move-exception v2

    .line 230
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v6

    .line 231
    goto :goto_4
.end method


# virtual methods
.method public getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .registers 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_4

    .line 72
    const/4 v0, 0x0

    .line 76
    :goto_3
    return-object v0

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->getPDLTypes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    .local v0, listPDLTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public getPrinters()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v3, "/dev/usb/lp0"

    .line 41
    .local v3, usbPortAddr:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->isExist(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exist usb printer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, v3}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->getModelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, modelName:Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 59
    .end local v2           #modelName:Ljava/lang/String;
    :goto_1d
    return-object v1

    .line 48
    .restart local v2       #modelName:Ljava/lang/String;
    :cond_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, listDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    new-instance v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;-><init>()V

    .line 50
    .local v0, deviceInfo:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    invoke-virtual {v0, v3}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setHost(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setName(Ljava/lang/String;)V

    .line 52
    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setNote(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setUSBDevice()V

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 58
    .end local v0           #deviceInfo:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v1           #listDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    .end local v2           #modelName:Ljava/lang/String;
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "not exist usb printer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public getScanners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 4
    .parameter "device"

    .prologue
    const/4 v0, 0x1

    .line 81
    if-nez p1, :cond_5

    .line 82
    const/4 v0, -0x1

    .line 88
    :cond_4
    :goto_4
    return v0

    .line 85
    :cond_5
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_4

    .line 88
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 94
    if-nez p1, :cond_4

    .line 95
    const/4 v0, -0x1

    .line 98
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->isColorModel(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public startDiscovery(Z)I
    .registers 3
    .parameter "scanners"

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public stopDiscovery()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
