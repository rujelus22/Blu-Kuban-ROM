.class Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;
.super Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;
.source "DeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/dm/DeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private portType:I

.field final synthetic this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/dm/DeviceManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    invoke-direct {p0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    return-void
.end method

.method private isInkjetPrinter(Ljava/lang/String;)Z
    .registers 4
    .parameter "modelName"

    .prologue
    const/4 v0, 0x1

    .line 267
    const-string v1, "SCX-2000FW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v1, v0, :cond_11

    const-string v1, "SCX-1490W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_12

    .line 273
    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .registers 5
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
    const/4 v2, 0x1

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, listLanguage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->isInkjetPrinter(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2f

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #listLanguage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v0       #listLanguage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PCL3GUI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_16
    :goto_16
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_2e

    .line 177
    :cond_1e
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    #getter for: Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;
    invoke-static {v1}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->access$000(Lcom/sec/print/mobileprint/dm/DeviceManagerService;)Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->getLanguages(Landroid/content/res/AssetManager;Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 180
    :cond_2e
    return-object v0

    .line 164
    :cond_2f
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->isNetworkDevice()Z

    move-result v1

    if-ne v1, v2, :cond_46

    .line 165
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_16

    goto :goto_16

    .line 171
    :cond_46
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_16
.end method

.method public getMediaSizes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .registers 11
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/MediaSizeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v8, mediaSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    invoke-static {}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->isInkjetPrinter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    .line 188
    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "3.5x5in"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x5dc

    const/16 v7, 0x41a

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "4x6in"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x708

    const/16 v7, 0x4b0

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "5x7in"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x834

    const/16 v7, 0x5dc

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_4d
    return-object v8
.end method

.method public getMediaTypes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .registers 5
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
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, mediaTypeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->isInkjetPrinter(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 202
    const-string v1, "Normal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "Photo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_1a
    return-object v0

    .line 207
    :cond_1b
    invoke-static {}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a
.end method

.method public getPrinters()Ljava/util/List;
    .registers 6
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
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enter getPrinters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, listDeviceInfo:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enter get USB printer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_40

    .line 129
    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v3, v3, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->getPrinters()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, listUSBDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    if-eqz v2, :cond_40

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v2           #listUSBDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    :cond_40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "end get USB printer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5f

    .line 138
    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v3, v3, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->getPrinters()Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, listNetworkDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    if-eqz v1, :cond_5f

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    .end local v1           #listNetworkDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    :cond_5f
    return-object v0
.end method

.method public getScanners()Ljava/util/List;
    .registers 4
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
    .line 148
    iget v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 149
    :cond_a
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->getScanners()Ljava/util/List;

    move-result-object v0

    .line 153
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, result:I
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->isNetworkDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 257
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    .line 262
    :goto_10
    return v0

    .line 259
    :cond_11
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    goto :goto_10
.end method

.method public isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 5
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 214
    const/4 v0, -0x1

    .line 215
    .local v0, result:I
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->isInkjetPrinter(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_d

    .line 231
    :goto_c
    return v1

    .line 219
    :cond_d
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->isNetworkDevice()Z

    move-result v2

    if-ne v2, v1, :cond_30

    .line 220
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    .line 226
    :goto_1b
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 228
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    #getter for: Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;
    invoke-static {v1}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->access$000(Lcom/sec/print/mobileprint/dm/DeviceManagerService;)Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->isPrinterColorModel(Landroid/content/res/AssetManager;Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    :cond_2e
    move v1, v0

    .line 231
    goto :goto_c

    .line 222
    :cond_30
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v1, v1, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    goto :goto_1b
.end method

.method public isSupportDuplex(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 6
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 235
    const/4 v0, -0x1

    .line 236
    .local v0, result:I
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->isInkjetPrinter(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_f

    .line 237
    const/4 v0, 0x0

    move v1, v0

    .line 251
    .end local v0           #result:I
    .local v1, result:I
    :goto_e
    return v1

    .line 241
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_f
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->isNetworkDevice()Z

    move-result v2

    if-ne v2, v3, :cond_1d

    .line 242
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v2, v2, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v2, p1}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->isSupportDuplex(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    .line 245
    :cond_1d
    const/4 v2, -0x1

    if-ne v0, v2, :cond_30

    .line 247
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    #getter for: Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;
    invoke-static {v2}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->access$000(Lcom/sec/print/mobileprint/dm/DeviceManagerService;)Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;->isSupportDuplex(Landroid/content/res/AssetManager;Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v0

    :cond_30
    move v1, v0

    .line 251
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_e
.end method

.method public start(I)I
    .registers 8
    .parameter "portType"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, resultNet:I
    const/4 v1, 0x0

    .line 82
    .local v1, resultUsb:I
    if-eq p1, v3, :cond_b

    if-eq p1, v4, :cond_b

    if-ne p1, v5, :cond_27

    .line 83
    :cond_b
    iput p1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    .line 88
    :goto_d
    const/4 v2, 0x0

    .line 89
    .local v2, scanners:Z
    if-eq p1, v4, :cond_18

    .line 90
    iget-object v4, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v4, v4, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-virtual {v4, v2}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->startDiscovery(Z)I

    move-result v1

    .line 93
    :cond_18
    if-eq p1, v5, :cond_22

    .line 94
    iget-object v4, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v4, v4, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v4, v2}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->startDiscovery(Z)I

    move-result v0

    .line 97
    :cond_22
    if-eq v1, v3, :cond_26

    if-ne v0, v3, :cond_2a

    .line 100
    :cond_26
    :goto_26
    return v3

    .line 85
    .end local v2           #scanners:Z
    :cond_27
    iput v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    goto :goto_d

    .line 100
    .restart local v2       #scanners:Z
    :cond_2a
    const/4 v3, -0x1

    goto :goto_26
.end method

.method public stop()I
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, resultNet:I
    const/4 v1, 0x0

    .line 108
    .local v1, resultUsb:I
    iget v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    .line 109
    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v3, v3, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;->stopDiscovery()I

    move-result v1

    .line 112
    :cond_10
    iget v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->portType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1d

    .line 113
    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;->this$0:Lcom/sec/print/mobileprint/dm/DeviceManagerService;

    iget-object v3, v3, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->stopDiscovery()I

    move-result v0

    .line 116
    :cond_1d
    if-eq v1, v2, :cond_21

    if-ne v0, v2, :cond_22

    .line 119
    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, -0x1

    goto :goto_21
.end method
