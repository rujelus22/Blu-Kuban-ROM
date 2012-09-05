.class public Lcom/sec/print/mobileprint/dm/DeviceManagerService;
.super Landroid/app/Service;
.source "DeviceManagerService.java"


# static fields
.field public static final PORT_TYPE_ALL:I = 0x1

.field public static final PORT_TYPE_ONLY_NETWORK:I = 0x2

.field public static final PORT_TYPE_ONLY_USB:I = 0x3

.field private static mediaSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/MediaSizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mediaTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

.field dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

.field private final mBinder:Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;

.field private xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaTypes:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    .line 29
    sget-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaTypes:Ljava/util/List;

    const-string v1, "Normal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaTypes:Ljava/util/List;

    const-string v1, "Thick"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaTypes:Ljava/util/List;

    const-string v1, "Thin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "A4"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xdb3

    const/16 v7, 0x9b0

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "A5"

    const/16 v2, 0x39

    const/16 v3, 0x39

    const/16 v4, 0x39

    const/16 v5, 0x39

    const/16 v6, 0x9b0

    const/16 v7, 0x6d4

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "A6"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0x6d4

    const/16 v7, 0x4d8

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "JISB5"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xbdb

    const/16 v7, 0x865

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "Letter"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xce4

    const/16 v7, 0x9f6

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "Legal"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0x1068

    const/16 v7, 0x9f6

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "Executive"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xc4e

    const/16 v7, 0x87f

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v8, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    const-string v1, "Folio"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xf3c

    const/16 v7, 0x9f6

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    .line 22
    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    .line 23
    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    .line 75
    new-instance v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/sec/print/mobileprint/dm/DeviceManagerService$1;-><init>(Lcom/sec/print/mobileprint/dm/DeviceManagerService;)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mBinder:Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/print/mobileprint/dm/DeviceManagerService;)Lcom/sec/print/mobileprint/dm/XMLDeviceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaSizes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mediaTypes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->mBinder:Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    .line 55
    :cond_b
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    if-nez v0, :cond_16

    .line 56
    new-instance v0, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    .line 58
    :cond_16
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    if-nez v0, :cond_21

    .line 59
    new-instance v0, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/XMLDeviceManager;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    .line 62
    :cond_21
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->doCreate()V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->doDestroy()V

    .line 70
    iput-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmNetwork:Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;

    .line 71
    iput-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->dmUSB:Lcom/sec/print/mobileprint/dm/usb/USBDeviceManager;

    .line 72
    iput-object v1, p0, Lcom/sec/print/mobileprint/dm/DeviceManagerService;->xmlDeviceManager:Lcom/sec/print/mobileprint/dm/XMLDeviceManager;

    .line 73
    return-void
.end method
