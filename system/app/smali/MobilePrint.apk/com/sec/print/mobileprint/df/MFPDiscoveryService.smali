.class public Lcom/sec/print/mobileprint/df/MFPDiscoveryService;
.super Landroid/app/Service;
.source "MFPDiscoveryService.java"

# interfaces
.implements Lcom/sec/print/mobileprint/df/DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;
    }
.end annotation


# static fields
.field private static final PRINTER_OID:Lorg/snmp4j/smi/OID; = null

.field private static final TAG:Ljava/lang/String; = "MFPDiscoveryService"

.field private static final dellOid:Lorg/snmp4j/smi/OID;

.field private static mediaSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPMediaSize;",
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

.field private static final prtMediaPathTypeOid:Lorg/snmp4j/smi/OID;

.field private static final samsungHostNameOid:Lorg/snmp4j/smi/OID;

.field private static final samsungLocationOid:Lorg/snmp4j/smi/OID;

.field private static final samsungModeOid:Lorg/snmp4j/smi/OID;

.field private static final samsungModeOid2:Lorg/snmp4j/smi/OID;

.field private static final samsungModeOid3:Lorg/snmp4j/smi/OID;

.field private static final samsungModelNameOid1:Lorg/snmp4j/smi/OID;

.field private static final samsungModelNameOid2:Lorg/snmp4j/smi/OID;

.field private static scannerModels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sysObjectId:Lorg/snmp4j/smi/OID;

.field private static final xeroxOid:Lorg/snmp4j/smi/OID;


# instance fields
.field private final DEBUG_MSG:Z

.field private final devicesIpp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final devicesRow:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

.field private discoveryIpRangeInstance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryIpRange;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryScanners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private executorIpp:Ljava/util/concurrent/ExecutorService;

.field private executorRow:Ljava/util/concurrent/ExecutorService;

.field private jmdnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/JmDNS;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;

.field private smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;

.field private snmp:Lorg/snmp4j/Snmp;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaTypes:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    .line 70
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1b6

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    .line 73
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.236.11.5.11.53.31.1.4.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid1:Lorg/snmp4j/smi/OID;

    .line 74
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.236.11.5.1.1.1.1.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid2:Lorg/snmp4j/smi/OID;

    .line 78
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.2699.1.2.1.2.1.1.3.1"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    .line 80
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.236.11.5.1.1.1.26.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid2:Lorg/snmp4j/smi/OID;

    .line 83
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.11.2.3.9.1.1.7.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid3:Lorg/snmp4j/smi/OID;

    .line 85
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.2.1.1.5.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungHostNameOid:Lorg/snmp4j/smi/OID;

    .line 86
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.2.1.1.6.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungLocationOid:Lorg/snmp4j/smi/OID;

    .line 87
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.2.1.1.2.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->sysObjectId:Lorg/snmp4j/smi/OID;

    .line 88
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.674"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->dellOid:Lorg/snmp4j/smi/OID;

    .line 89
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.4.1.253"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->xeroxOid:Lorg/snmp4j/smi/OID;

    .line 91
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.2.1.43.13.4.1.9"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->prtMediaPathTypeOid:Lorg/snmp4j/smi/OID;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    .line 102
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaTypes:Ljava/util/List;

    const-string v1, "Normal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaTypes:Ljava/util/List;

    const-string v1, "Thick"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaTypes:Ljava/util/List;

    const-string v1, "Thin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "A4"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xdb3

    const/16 v7, 0x9b0

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "A5"

    const/16 v2, 0x39

    const/16 v3, 0x39

    const/16 v4, 0x39

    const/16 v5, 0x39

    const/16 v6, 0x9b0

    const/16 v7, 0x6d4

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "A6"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0x6d4

    const/16 v7, 0x4d8

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "JISB5"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xbdb

    const/16 v7, 0x865

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "Letter"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xce4

    const/16 v7, 0x9f6

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "Legal"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0x1068

    const/16 v7, 0x9f6

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "Executive"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xc4e

    const/16 v7, 0x87f

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;

    const-string v1, "Folio"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    const/16 v6, 0xf3c

    const/16 v7, 0x9f6

    invoke-direct/range {v0 .. v7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung CLX-6200 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung CLX-6240 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-4x24 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-4x28 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung CLX-3170 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-4500W Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-6x55 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung CLX-8380 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-4x26 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-6545 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-4623 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-5635 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    const-string v1, "Samsung SCX-5835_5935 Series"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 70
    :array_1b6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->DEBUG_MSG:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesIpp:Ljava/util/Map;

    .line 93
    iput-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    .line 97
    iput-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryIpRangeInstance:Ljava/util/List;

    .line 1090
    new-instance v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;

    invoke-direct {v0, p0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;-><init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mBinder:Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Lcom/sec/print/mobileprint/df/SmbDiscovery;)Lcom/sec/print/mobileprint/df/SmbDiscovery;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaSizes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mediaTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;I)Ljava/util/Map;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDeviceProperties(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getCupsPrinters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;)Lcom/sec/print/mobileprint/df/MFPDevice;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getIppPrinter(Ljava/lang/String;)Lcom/sec/print/mobileprint/df/MFPDevice;

    move-result-object v0

    return-object v0
.end method

.method private checkWifiStatus()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 983
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 984
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 985
    .local v1, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private getColorBySNMP(Lorg/snmp4j/CommunityTarget;Lorg/snmp4j/smi/OID;)Ljava/lang/String;
    .registers 10
    .parameter "target"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 308
    new-instance v2, Lorg/snmp4j/PDU;

    invoke-direct {v2}, Lorg/snmp4j/PDU;-><init>()V

    .line 309
    .local v2, pdu:Lorg/snmp4j/PDU;
    new-instance v5, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v5, p2}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v2, v5}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 310
    const/16 v5, -0x60

    invoke-virtual {v2, v5}, Lorg/snmp4j/PDU;->setType(I)V

    .line 312
    iget-object v5, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v5, v2, p1}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v3

    .line 313
    .local v3, response:Lorg/snmp4j/event/ResponseEvent;
    if-nez v3, :cond_1c

    .line 331
    :cond_1b
    :goto_1b
    return-object v4

    .line 316
    :cond_1c
    invoke-virtual {v3}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 319
    invoke-virtual {v3}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v5

    if-nez v5, :cond_1b

    .line 322
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2d
    invoke-virtual {v3}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->size()I

    move-result v5

    if-ge v1, v5, :cond_1b

    .line 323
    invoke-virtual {v3}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v0

    .line 324
    .local v0, binding:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v5

    const/16 v6, 0x81

    if-eq v5, v6, :cond_67

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v5

    const/16 v6, 0x80

    if-eq v5, v6, :cond_67

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_67

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v5

    if-eqz v5, :cond_67

    .line 328
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    .line 322
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d
.end method

.method private getCupsPrinters(Ljava/lang/String;)Ljava/util/List;
    .registers 23
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 989
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v14, printers:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 991
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "requested-attributes"

    const-string v19, "copies-supported page-ranges-supported printer-name printer-info printer-location printer-make-and-model printer-uri-supported"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 997
    .local v17, url:Ljava/net/URL;
    new-instance v3, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getPort()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v3, v0}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;-><init>(I)V

    .line 998
    .local v3, command:Lorg/cups4j/operations/cups/CupsGetPrintersOperation;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v8}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v15

    .line 999
    .local v15, result:Lch/ethz/vppserver/ippclient/IppResult;
    invoke-virtual {v15}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_37
    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_196

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 1000
    .local v5, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "printer-attributes-tag"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_37

    .line 1001
    const/4 v12, 0x0

    .line 1002
    .local v12, printerURI:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1003
    .local v11, printerName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1004
    .local v9, modelName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1005
    .local v10, printerLocation:Ljava/lang/String;
    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5b
    :goto_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_104

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 1006
    .local v2, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "printer-uri-supported"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 1007
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v18 .. v18}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ipp://"

    const-string v20, "http://"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5b

    .line 1008
    :cond_8c
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "printer-name"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a9

    .line 1009
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v18 .. v18}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_5b

    .line 1010
    :cond_a9
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "printer-location"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d6

    .line 1011
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_5b

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_5b

    .line 1012
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v18 .. v18}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_5b

    .line 1013
    :cond_d6
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "printer-make-and-model"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5b

    .line 1014
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_5b

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_5b

    .line 1015
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v18 .. v18}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5b

    .line 1019
    .end local v2           #attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    :cond_104
    const/4 v13, 0x0

    .line 1021
    .local v13, printerUrl:Ljava/net/URL;
    :try_start_105
    new-instance v13, Ljava/net/URL;

    .end local v13           #printerUrl:Ljava/net/URL;
    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_10a} :catch_149

    .line 1028
    .restart local v13       #printerUrl:Ljava/net/URL;
    new-instance v4, Lcom/sec/print/mobileprint/df/MFPDevice;

    invoke-direct {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 1029
    .local v4, device:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setName(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v4, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setNote(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v4, v12}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setPort(I)V

    .line 1033
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    .line 1022
    .end local v4           #device:Lcom/sec/print/mobileprint/df/MFPDevice;
    .end local v13           #printerUrl:Ljava/net/URL;
    :catch_149
    move-exception v16

    .line 1023
    .local v16, t:Ljava/lang/Throwable;
    const-string v18, "cups4j"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error encountered building URL from printer uri of printer "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uri returned was ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "].  Attribute group tag/description: ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 1036
    .end local v5           #group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #modelName:Ljava/lang/String;
    .end local v10           #printerLocation:Ljava/lang/String;
    .end local v11           #printerName:Ljava/lang/String;
    .end local v12           #printerURI:Ljava/lang/String;
    .end local v16           #t:Ljava/lang/Throwable;
    :cond_196
    return-object v14
.end method

.method private getDeviceProperties(Ljava/lang/String;I)Ljava/util/Map;
    .registers 34
    .parameter "host"
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    .line 702
    .local v11, inetAddress:Ljava/net/InetAddress;
    new-instance v23, Lorg/snmp4j/smi/UdpAddress;

    const/16 v28, 0xa1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-direct {v0, v11, v1}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 703
    .local v23, targetAddress:Lorg/snmp4j/smi/UdpAddress;
    new-instance v22, Lorg/snmp4j/CommunityTarget;

    invoke-direct/range {v22 .. v22}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 704
    .local v22, target:Lorg/snmp4j/CommunityTarget;
    new-instance v28, Lorg/snmp4j/smi/OctetString;

    const-string v29, "public"

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 705
    invoke-virtual/range {v22 .. v23}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 706
    const/16 v28, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 707
    const-wide/16 v28, 0x5dc

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 708
    const/16 v28, 0x2

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_e1

    const/16 v28, 0x1

    :goto_41
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 710
    new-instance v18, Lorg/snmp4j/PDU;

    invoke-direct/range {v18 .. v18}, Lorg/snmp4j/PDU;-><init>()V

    .line 711
    .local v18, requestPdu:Lorg/snmp4j/PDU;
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid1:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 712
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid2:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 713
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 714
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid2:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 715
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid3:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 716
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungHostNameOid:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 717
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungLocationOid:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 718
    new-instance v28, Lorg/snmp4j/smi/VariableBinding;

    sget-object v29, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->sysObjectId:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v28 .. v29}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 720
    const/16 v28, -0x60

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->setType(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v19

    .line 723
    .local v19, response:Lorg/snmp4j/event/ResponseEvent;
    if-eqz v19, :cond_de

    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v28

    if-nez v28, :cond_e5

    .line 724
    :cond_de
    const/16 v21, 0x0

    .line 815
    :goto_e0
    return-object v21

    .line 708
    .end local v18           #requestPdu:Lorg/snmp4j/PDU;
    .end local v19           #response:Lorg/snmp4j/event/ResponseEvent;
    :cond_e1
    const/16 v28, 0x0

    goto/16 :goto_41

    .line 726
    .restart local v18       #requestPdu:Lorg/snmp4j/PDU;
    .restart local v19       #response:Lorg/snmp4j/event/ResponseEvent;
    :cond_e5
    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v20

    .line 728
    .local v20, responsePdu:Lorg/snmp4j/PDU;
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v5

    .line 729
    .local v5, error:I
    :goto_ed
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v5, v0, :cond_13b

    .line 730
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/PDU;->getErrorIndex()I

    move-result v28

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/PDU;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_107

    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/PDU;->getErrorIndex()I

    move-result v28

    if-gtz v28, :cond_10a

    .line 731
    :cond_107
    const/16 v21, 0x0

    goto :goto_e0

    .line 733
    :cond_10a
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/PDU;->getErrorIndex()I

    move-result v6

    .line 734
    .local v6, errorIndex:I
    add-int/lit8 v28, v6, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->remove(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v19

    .line 737
    if-eqz v19, :cond_12f

    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v28

    if-nez v28, :cond_132

    .line 738
    :cond_12f
    const/16 v21, 0x0

    goto :goto_e0

    .line 740
    :cond_132
    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v20

    .line 741
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v5

    .line 742
    goto :goto_ed

    .line 744
    .end local v6           #errorIndex:I
    :cond_13b
    if-eqz v5, :cond_140

    .line 745
    const/16 v21, 0x0

    goto :goto_e0

    .line 747
    :cond_140
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 748
    .local v27, variables:Ljava/util/Map;,"Ljava/util/Map<Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_146
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/PDU;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_17a

    .line 749
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v4

    .line 750
    .local v4, binding:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v28

    const/16 v29, 0x81

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_177

    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v28

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_177

    .line 752
    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v28

    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v29

    invoke-interface/range {v27 .. v29}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_177
    add-int/lit8 v8, v8, 0x1

    goto :goto_146

    .line 756
    .end local v4           #binding:Lorg/snmp4j/smi/VariableBinding;
    :cond_17a
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getModelName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 757
    .local v16, modelName:Ljava/lang/String;
    if-eqz v16, :cond_18a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_18e

    .line 758
    :cond_18a
    const/16 v21, 0x0

    goto/16 :goto_e0

    .line 760
    :cond_18e
    const/4 v7, 0x0

    .line 761
    .local v7, hostName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 762
    .local v14, location:Ljava/lang/String;
    const/4 v12, 0x0

    .line 764
    .local v12, isScanner:Z
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungHostNameOid:Lorg/snmp4j/smi/OID;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c4

    .line 765
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungHostNameOid:Lorg/snmp4j/smi/OID;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/snmp4j/smi/Variable;

    .line 766
    .local v25, var:Lorg/snmp4j/smi/Variable;
    invoke-interface/range {v25 .. v25}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c4

    move-object/from16 v26, v25

    .line 767
    check-cast v26, Lorg/snmp4j/smi/OctetString;

    .line 768
    .local v26, variable:Lorg/snmp4j/smi/OctetString;
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v29

    const-string v30, "UTF8"

    invoke-direct/range {v28 .. v30}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x20

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 772
    .end local v25           #var:Lorg/snmp4j/smi/Variable;
    .end local v26           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_1c4
    if-eqz v7, :cond_1cc

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_1d0

    .line 773
    :cond_1cc
    const/16 v21, 0x0

    goto/16 :goto_e0

    .line 775
    :cond_1d0
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungLocationOid:Lorg/snmp4j/smi/OID;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_203

    .line 776
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungLocationOid:Lorg/snmp4j/smi/OID;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/snmp4j/smi/Variable;

    .line 777
    .restart local v25       #var:Lorg/snmp4j/smi/Variable;
    invoke-interface/range {v25 .. v25}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_203

    move-object/from16 v26, v25

    .line 778
    check-cast v26, Lorg/snmp4j/smi/OctetString;

    .line 779
    .restart local v26       #variable:Lorg/snmp4j/smi/OctetString;
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v29

    const-string v30, "UTF8"

    invoke-direct/range {v28 .. v30}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x20

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 783
    .end local v25           #var:Lorg/snmp4j/smi/Variable;
    .end local v26           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_203
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_287

    .line 784
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/snmp4j/smi/Variable;

    .line 785
    .restart local v25       #var:Lorg/snmp4j/smi/Variable;
    invoke-interface/range {v25 .. v25}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_287

    move-object/from16 v26, v25

    .line 786
    check-cast v26, Lorg/snmp4j/smi/OctetString;

    .line 787
    .restart local v26       #variable:Lorg/snmp4j/smi/OctetString;
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v29

    const-string v30, "UTF8"

    invoke-direct/range {v28 .. v30}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x20

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    .line 788
    .local v24, value:Ljava/lang/String;
    const-string v28, "MODE:"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 789
    .local v10, index:I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v10, v0, :cond_287

    .line 790
    add-int/lit8 v28, v10, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 791
    const-string v28, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 792
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v10, v0, :cond_287

    .line 793
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 794
    const-string v28, ","

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 795
    .local v17, modes:[Ljava/lang/String;
    move-object/from16 v3, v17

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_278
    if-ge v9, v13, :cond_287

    aget-object v15, v3, v9

    .line 796
    .local v15, mode:Ljava/lang/String;
    const-string v28, "SCN"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2ca

    .line 797
    const/4 v12, 0x1

    .line 806
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #index:I
    .end local v13           #len$:I
    .end local v15           #mode:Ljava/lang/String;
    .end local v17           #modes:[Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    .end local v25           #var:Lorg/snmp4j/smi/Variable;
    .end local v26           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_287
    if-nez v12, :cond_293

    .line 807
    sget-object v28, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->scannerModels:Ljava/util/Set;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 810
    :cond_293
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 811
    .local v21, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v28, "modelName"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v28, "hostName"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v28, "location"

    if-nez v14, :cond_2b2

    const-string v14, ""

    .end local v14           #location:Ljava/lang/String;
    :cond_2b2
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v28, "isScanner"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e0

    .line 795
    .end local v21           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #index:I
    .restart local v13       #len$:I
    .restart local v14       #location:Ljava/lang/String;
    .restart local v15       #mode:Ljava/lang/String;
    .restart local v17       #modes:[Ljava/lang/String;
    .restart local v24       #value:Ljava/lang/String;
    .restart local v25       #var:Lorg/snmp4j/smi/Variable;
    .restart local v26       #variable:Lorg/snmp4j/smi/OctetString;
    :cond_2ca
    add-int/lit8 v9, v9, 0x1

    goto :goto_278
.end method

.method private getIppPrinter(Ljava/lang/String;)Lcom/sec/print/mobileprint/df/MFPDevice;
    .registers 22
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1040
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1041
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "requested-attributes"

    const-string v18, "copies-supported page-ranges-supported printer-name printer-info printer-location printer-make-and-model printer-uri-supported"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v16, url:Ljava/net/URL;
    new-instance v3, Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;

    invoke-direct {v3}, Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;-><init>()V

    .line 1048
    .local v3, command:Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v8}, Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v14

    .line 1050
    .local v14, result:Lch/ethz/vppserver/ippclient/IppResult;
    const/4 v12, 0x0

    .line 1051
    .local v12, printerURI:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1052
    .local v11, printerName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1053
    .local v9, modelName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1054
    .local v10, printerLocation:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1056
    .local v13, printerUrl:Ljava/net/URL;
    invoke-virtual {v14}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_31
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 1057
    .local v5, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "printer-attributes-tag"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_31

    .line 1058
    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_fa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 1059
    .local v2, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "printer-uri-supported"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_82

    .line 1060
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ipp://"

    const-string v19, "http://"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    goto :goto_51

    .line 1061
    :cond_82
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "printer-name"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9f

    .line 1062
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_51

    .line 1063
    :cond_9f
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "printer-location"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_cc

    .line 1064
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_51

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_51

    .line 1065
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_51

    .line 1066
    :cond_cc
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "printer-make-and-model"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_51

    .line 1067
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_51

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_51

    .line 1068
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_51

    .line 1073
    .end local v2           #attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    :cond_fa
    :try_start_fa
    new-instance v13, Ljava/net/URL;

    .end local v13           #printerUrl:Ljava/net/URL;
    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_ff} :catch_101

    .restart local v13       #printerUrl:Ljava/net/URL;
    goto/16 :goto_31

    .line 1074
    .end local v13           #printerUrl:Ljava/net/URL;
    :catch_101
    move-exception v15

    .line 1075
    .local v15, t:Ljava/lang/Throwable;
    const-string v17, "cups4j"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error encountered building URL from printer uri of printer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", uri returned was ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "].  Attribute group tag/description: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 1082
    .end local v5           #group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v13       #printerUrl:Ljava/net/URL;
    :cond_14c
    new-instance v4, Lcom/sec/print/mobileprint/df/MFPDevice;

    invoke-direct {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 1083
    .local v4, device:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setName(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v4, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setNote(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v4, v12}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setPort(I)V

    .line 1087
    return-object v4
.end method


# virtual methods
.method public IsPrinterAlive(Ljava/lang/String;)I
    .registers 12
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 132
    .local v0, inetAddress:Ljava/net/InetAddress;
    new-instance v4, Lorg/snmp4j/smi/UdpAddress;

    const/16 v7, 0xa1

    invoke-direct {v4, v0, v7}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 133
    .local v4, targetAddress:Lorg/snmp4j/smi/UdpAddress;
    new-instance v3, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v3}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 134
    .local v3, target:Lorg/snmp4j/CommunityTarget;
    new-instance v7, Lorg/snmp4j/smi/OctetString;

    const-string v8, "public"

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 135
    invoke-virtual {v3, v4}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 136
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 137
    const-wide/16 v7, 0x5dc

    invoke-virtual {v3, v7, v8}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 138
    invoke-virtual {v3, v6}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 140
    new-instance v1, Lorg/snmp4j/PDU;

    invoke-direct {v1}, Lorg/snmp4j/PDU;-><init>()V

    .line 141
    .local v1, pdu:Lorg/snmp4j/PDU;
    new-instance v7, Lorg/snmp4j/smi/VariableBinding;

    new-instance v8, Lorg/snmp4j/smi/OID;

    sget-object v9, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-direct {v8, v9}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v1, v7}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 142
    const/16 v7, -0x5f

    invoke-virtual {v1, v7}, Lorg/snmp4j/PDU;->setType(I)V

    .line 144
    iget-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v7, v1, v3}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v2

    .line 145
    .local v2, response:Lorg/snmp4j/event/ResponseEvent;
    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v7

    if-eqz v7, :cond_7b

    invoke-virtual {v2}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v7

    invoke-virtual {v7}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v7

    if-nez v7, :cond_7b

    invoke-virtual {v2}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v7

    invoke-virtual {v7}, Lorg/snmp4j/PDU;->size()I

    move-result v7

    if-ne v7, v5, :cond_7b

    invoke-virtual {v2}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v7

    invoke-virtual {v7}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v7

    sget-object v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v7, v8}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 153
    :goto_7a
    return v5

    :cond_7b
    move v5, v6

    goto :goto_7a
.end method

.method public IsPrinterColorModelBySNMP(Ljava/lang/String;)I
    .registers 17
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 336
    .local v6, inetAddress:Ljava/net/InetAddress;
    new-instance v12, Lorg/snmp4j/smi/UdpAddress;

    const/16 v13, 0xa1

    invoke-direct {v12, v6, v13}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 337
    .local v12, targetAddress:Lorg/snmp4j/smi/UdpAddress;
    new-instance v11, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v11}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 338
    .local v11, target:Lorg/snmp4j/CommunityTarget;
    new-instance v13, Lorg/snmp4j/smi/OctetString;

    const-string v14, "public"

    invoke-direct {v13, v14}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 339
    invoke-virtual {v11, v12}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 340
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 341
    const-wide/16 v13, 0x5dc

    invoke-virtual {v11, v13, v14}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 342
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 344
    new-instance v7, Lorg/snmp4j/smi/OID;

    const-string v13, "1.3.6.1.2.1.43.11.1.1.3"

    invoke-direct {v7, v13}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    .line 345
    .local v7, mainOid:Lorg/snmp4j/smi/OID;
    move-object v3, v7

    .line 347
    .local v3, currentOID:Lorg/snmp4j/smi/OID;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v2, colors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_37
    invoke-virtual {v3, v7}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v13

    if-eqz v13, :cond_df

    .line 349
    new-instance v9, Lorg/snmp4j/PDU;

    invoke-direct {v9}, Lorg/snmp4j/PDU;-><init>()V

    .line 350
    .local v9, pdu:Lorg/snmp4j/PDU;
    new-instance v13, Lorg/snmp4j/smi/VariableBinding;

    new-instance v14, Lorg/snmp4j/smi/OID;

    invoke-direct {v14, v3}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-direct {v13, v14}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v9, v13}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 351
    const/16 v13, -0x5f

    invoke-virtual {v9, v13}, Lorg/snmp4j/PDU;->setType(I)V

    .line 353
    iget-object v13, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v13, v9, v11}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v10

    .line 354
    .local v10, response:Lorg/snmp4j/event/ResponseEvent;
    if-nez v10, :cond_5e

    .line 355
    const/4 v13, -0x1

    .line 386
    .end local v9           #pdu:Lorg/snmp4j/PDU;
    .end local v10           #response:Lorg/snmp4j/event/ResponseEvent;
    :goto_5d
    return v13

    .line 357
    .restart local v9       #pdu:Lorg/snmp4j/PDU;
    .restart local v10       #response:Lorg/snmp4j/event/ResponseEvent;
    :cond_5e
    invoke-virtual {v10}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v13

    if-nez v13, :cond_66

    .line 358
    const/4 v13, -0x1

    goto :goto_5d

    .line 360
    :cond_66
    invoke-virtual {v10}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v13

    invoke-virtual {v13}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v13

    if-eqz v13, :cond_72

    .line 361
    const/4 v13, -0x1

    goto :goto_5d

    .line 363
    :cond_72
    invoke-virtual {v10}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v13

    invoke-virtual {v13}, Lorg/snmp4j/PDU;->size()I

    move-result v13

    if-nez v13, :cond_7e

    .line 364
    const/4 v13, 0x0

    goto :goto_5d

    .line 366
    :cond_7e
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7f
    invoke-virtual {v10}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v13

    invoke-virtual {v13}, Lorg/snmp4j/PDU;->size()I

    move-result v13

    if-ge v4, v13, :cond_37

    .line 367
    invoke-virtual {v10}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v0

    .line 368
    .local v0, binding:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v13

    const/16 v14, 0x81

    if-eq v13, v14, :cond_d8

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v13

    const/16 v14, 0x80

    if-eq v13, v14, :cond_d8

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v13

    invoke-virtual {v13, v7}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v13

    if-eqz v13, :cond_d8

    .line 371
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "1.3.6.1.2.1.43.12.1.1.4.1."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/smi/Variable;->toInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, oid:Ljava/lang/String;
    new-instance v13, Lorg/snmp4j/smi/OID;

    invoke-direct {v13, v8}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11, v13}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getColorBySNMP(Lorg/snmp4j/CommunityTarget;Lorg/snmp4j/smi/OID;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, color:Ljava/lang/String;
    if-eqz v1, :cond_d8

    .line 375
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v1           #color:Ljava/lang/String;
    .end local v8           #oid:Ljava/lang/String;
    :cond_d8
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v3

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 381
    .end local v0           #binding:Lorg/snmp4j/smi/VariableBinding;
    .end local v4           #i:I
    .end local v9           #pdu:Lorg/snmp4j/PDU;
    .end local v10           #response:Lorg/snmp4j/event/ResponseEvent;
    :cond_df
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_e3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_fe

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .restart local v1       #color:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "black"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e3

    .line 383
    const/4 v13, 0x1

    goto/16 :goto_5d

    .line 386
    .end local v1           #color:Ljava/lang/String;
    :cond_fe
    const/4 v13, 0x0

    goto/16 :goto_5d
.end method

.method public StartBroadcastDiscovery()V
    .registers 4

    .prologue
    .line 852
    monitor-enter p0

    .line 853
    :try_start_1
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    if-nez v0, :cond_31

    .line 854
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 855
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 856
    new-instance v0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    const/4 v1, 0x5

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;-><init>(II)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    .line 857
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    const-string v1, "public"

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->enableSnmp1(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    const-string v1, "public"

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->enableSnmp2(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    invoke-virtual {v0, p0}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->addDiscoveryListener(Lcom/sec/print/mobileprint/df/DiscoveryListener;)V

    .line 860
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->start()V

    .line 862
    :cond_31
    monitor-exit p0

    .line 863
    return-void

    .line 862
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public StartDiscovery(Z)V
    .registers 13
    .parameter "scanners"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    monitor-enter p0

    .line 506
    const/4 v6, 0x0

    .line 508
    .local v6, jmdns:Ljavax/jmdns/JmDNS;
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_ab

    .line 511
    :goto_5
    :try_start_5
    iget-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->jmdnsList:Ljava/util/List;

    if-nez v7, :cond_84

    .line 512
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->jmdnsList:Ljava/util/List;

    .line 514
    iget-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 515
    iget-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesIpp:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 516
    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorRow:Ljava/util/concurrent/ExecutorService;

    .line 517
    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorIpp:Ljava/util/concurrent/ExecutorService;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_a8

    .line 520
    const/4 v0, 0x0

    .line 522
    .local v0, addr:Ljava/net/InetAddress;
    :try_start_2b
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 523
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 524
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 525
    .local v4, interf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 526
    .local v5, ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3f
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 527
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 529
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pdp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_a8
    .catch Ljava/net/SocketException; {:try_start_2b .. :try_end_5a} :catch_5f

    move-result v7

    if-nez v7, :cond_3f

    .line 530
    move-object v0, v3

    .line 531
    goto :goto_2f

    .line 535
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #interf:Ljava/net/NetworkInterface;
    .end local v5           #ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_5f
    move-exception v2

    .line 536
    .local v2, ex:Ljava/net/SocketException;
    :try_start_60
    const-string v7, "MobilePrint"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v2           #ex:Ljava/net/SocketException;
    :cond_69
    if-eqz v0, :cond_86

    .line 540
    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v6

    .line 545
    :goto_6f
    if-eqz p1, :cond_8b

    .line 546
    const-string v7, "_scanner._tcp.local."

    new-instance v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

    iget-object v9, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorRow:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v8, p0, v6, v9, v10}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;-><init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljavax/jmdns/JmDNS;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v6, v7, v8}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 551
    :goto_7f
    iget-object v7, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->jmdnsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_84
    monitor-exit p0

    .line 554
    return-void

    .line 543
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_86
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v6

    goto :goto_6f

    .line 548
    :cond_8b
    const-string v7, "_pdl-datastream._tcp.local."

    new-instance v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

    iget-object v9, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorRow:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v8, p0, v6, v9, v10}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;-><init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljavax/jmdns/JmDNS;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v6, v7, v8}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 549
    const-string v7, "_ipp._tcp.local."

    new-instance v8, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

    iget-object v9, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesIpp:Ljava/util/Map;

    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorIpp:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v8, p0, v6, v9, v10}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;-><init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljavax/jmdns/JmDNS;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v6, v7, v8}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_7f

    .line 553
    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_a8
    move-exception v7

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_60 .. :try_end_aa} :catchall_a8

    throw v7

    .line 509
    :catch_ab
    move-exception v7

    goto/16 :goto_5
.end method

.method public StartIpRangeDiscovery()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 881
    monitor-enter p0

    .line 882
    :try_start_1
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryIpRangeInstance:Ljava/util/List;

    if-nez v3, :cond_88

    .line 883
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 884
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 885
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryIpRangeInstance:Ljava/util/List;

    .line 886
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v13

    .line 887
    .local v13, networkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1a
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 888
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/NetworkInterface;

    .line 889
    .local v10, iface:Ljava/net/NetworkInterface;
    invoke-static {v10}, Lcom/sec/print/mobileprint/df/DiscoveryUtil;->isNetworkIntefaceWorking(Ljava/net/NetworkInterface;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 890
    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v12

    .line 891
    .local v12, inetAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_30
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 892
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    .line 893
    .local v11, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 894
    .local v7, addr:[B
    array-length v3, v7

    new-array v8, v3, [B

    .line 895
    .local v8, fromAddr:[B
    array-length v3, v7

    new-array v14, v3, [B

    .line 896
    .local v14, toAddr:[B
    const/4 v9, 0x0

    .line 897
    .local v9, i:I
    :goto_47
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ge v9, v3, :cond_57

    .line 898
    aget-byte v3, v7, v9

    aput-byte v3, v8, v9

    .line 899
    aget-byte v3, v7, v9

    aput-byte v3, v14, v9

    .line 897
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 901
    :cond_57
    const/4 v3, 0x0

    aput-byte v3, v8, v9

    .line 902
    const/4 v3, -0x1

    aput-byte v3, v14, v9

    .line 903
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 904
    .local v1, from:Ljava/net/InetAddress;
    invoke-static {v14}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 905
    .local v2, to:Ljava/net/InetAddress;
    new-instance v0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    const-wide/16 v3, 0x1388

    const/4 v5, 0x5

    const/16 v6, 0x400

    invoke-direct/range {v0 .. v6}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;JII)V

    .line 906
    .local v0, discovery:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;
    const-string v3, "public"

    invoke-virtual {v0, v3}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->enableSnmp1(Ljava/lang/String;)V

    .line 907
    const-string v3, "public"

    invoke-virtual {v0, v3}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->enableSnmp2(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addDiscoveryListener(Lcom/sec/print/mobileprint/df/DiscoveryListener;)V

    .line 909
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->start()V

    .line 910
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryIpRangeInstance:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 915
    .end local v0           #discovery:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;
    .end local v1           #from:Ljava/net/InetAddress;
    .end local v2           #to:Ljava/net/InetAddress;
    .end local v7           #addr:[B
    .end local v8           #fromAddr:[B
    .end local v9           #i:I
    .end local v10           #iface:Ljava/net/NetworkInterface;
    .end local v11           #inetAddress:Ljava/net/InetAddress;
    .end local v12           #inetAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v13           #networkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v14           #toAddr:[B
    :catchall_85
    move-exception v3

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_85

    throw v3

    :cond_88
    :try_start_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_85

    .line 916
    return-void
.end method

.method public StartSnmp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    if-nez v1, :cond_13

    .line 498
    new-instance v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-direct {v0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>()V

    .line 499
    .local v0, transport:Lorg/snmp4j/transport/DefaultUdpTransportMapping;
    new-instance v1, Lorg/snmp4j/Snmp;

    invoke-direct {v1, v0}, Lorg/snmp4j/Snmp;-><init>(Lorg/snmp4j/TransportMapping;)V

    iput-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    .line 500
    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listen()V

    .line 502
    .end local v0           #transport:Lorg/snmp4j/transport/DefaultUdpTransportMapping;
    :cond_13
    return-void
.end method

.method public StopBroadcastDiscovery()V
    .registers 3

    .prologue
    .line 867
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_1c

    .line 868
    :try_start_1
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    if-eqz v1, :cond_17

    .line 869
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->stop()V

    .line 870
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    .line 871
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 872
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 874
    :cond_17
    monitor-exit p0

    .line 878
    :goto_18
    return-void

    .line 874
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 875
    :catch_1c
    move-exception v0

    .line 876
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_18
.end method

.method public StopDiscovery()V
    .registers 4

    .prologue
    .line 557
    monitor-enter p0

    .line 558
    :try_start_1
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->jmdnsList:Ljava/util/List;

    if-eqz v2, :cond_3a

    .line 559
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->jmdnsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3c

    .line 561
    .local v1, jmdns:Ljavax/jmdns/JmDNS;
    :try_start_17
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_b

    .line 562
    :catch_1b
    move-exception v2

    goto :goto_b

    .line 565
    .end local v1           #jmdns:Ljavax/jmdns/JmDNS;
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorRow:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 566
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorIpp:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 567
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorRow:Ljava/util/concurrent/ExecutorService;

    .line 568
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->executorIpp:Ljava/util/concurrent/ExecutorService;

    .line 569
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->jmdnsList:Ljava/util/List;

    .line 570
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 571
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesIpp:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 573
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3a
    monitor-exit p0

    .line 574
    return-void

    .line 573
    :catchall_3c
    move-exception v2

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public StopIpRangeDiscovery()V
    .registers 5

    .prologue
    .line 920
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_1e

    .line 921
    :try_start_1
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryInstance:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    if-eqz v3, :cond_34

    .line 922
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryIpRangeInstance:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    .line 923
    .local v0, d:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->stop()V

    goto :goto_b

    .line 929
    .end local v0           #d:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 930
    :catch_1e
    move-exception v1

    .line 931
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 933
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_26
    return-void

    .line 925
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_27
    const/4 v3, 0x0

    :try_start_28
    iput-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryIpRangeInstance:Ljava/util/List;

    .line 926
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 927
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 929
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_1b

    goto :goto_26
.end method

.method public getDeviceModeBySNMP(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 158
    .local v3, inetAddress:Ljava/net/InetAddress;
    new-instance v7, Lorg/snmp4j/smi/UdpAddress;

    const/16 v9, 0xa1

    invoke-direct {v7, v3, v9}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 159
    .local v7, targetAddress:Lorg/snmp4j/smi/UdpAddress;
    new-instance v6, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v6}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 160
    .local v6, target:Lorg/snmp4j/CommunityTarget;
    new-instance v9, Lorg/snmp4j/smi/OctetString;

    const-string v10, "public"

    invoke-direct {v9, v10}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 161
    invoke-virtual {v6, v7}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 162
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 163
    const-wide/16 v9, 0x5dc

    invoke-virtual {v6, v9, v10}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 166
    new-instance v4, Lorg/snmp4j/PDU;

    invoke-direct {v4}, Lorg/snmp4j/PDU;-><init>()V

    .line 167
    .local v4, pdu:Lorg/snmp4j/PDU;
    new-instance v9, Lorg/snmp4j/smi/VariableBinding;

    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    invoke-direct {v9, v10}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v4, v9}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 169
    const/16 v9, -0x60

    invoke-virtual {v4, v9}, Lorg/snmp4j/PDU;->setType(I)V

    .line 171
    iget-object v9, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v9, v4, v6}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v5

    .line 172
    .local v5, response:Lorg/snmp4j/event/ResponseEvent;
    if-nez v5, :cond_48

    .line 173
    const/4 v8, 0x0

    .line 198
    :cond_47
    :goto_47
    return-object v8

    .line 175
    :cond_48
    invoke-virtual {v5}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v9

    if-nez v9, :cond_50

    .line 176
    const/4 v8, 0x0

    goto :goto_47

    .line 178
    :cond_50
    invoke-virtual {v5}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v9

    invoke-virtual {v9}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v9

    if-eqz v9, :cond_5c

    .line 179
    const/4 v8, 0x0

    goto :goto_47

    .line 181
    :cond_5c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5d
    invoke-virtual {v5}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v9

    invoke-virtual {v9}, Lorg/snmp4j/PDU;->size()I

    move-result v9

    if-ge v1, v9, :cond_b9

    .line 182
    invoke-virtual {v5}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v0

    .line 183
    .local v0, binding:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v9

    const/16 v10, 0x81

    if-eq v9, v10, :cond_b6

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v9

    const/16 v10, 0x80

    if-eq v9, v10, :cond_b6

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b6

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    if-eqz v9, :cond_b6

    .line 187
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    check-cast v9, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, value:Ljava/lang/String;
    const-string v9, "MODE:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, index:I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_a1

    .line 190
    const/4 v8, 0x0

    goto :goto_47

    .line 191
    :cond_a1
    add-int/lit8 v9, v2, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 192
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 193
    const/4 v9, -0x1

    if-eq v2, v9, :cond_47

    .line 194
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_47

    .line 181
    .end local v2           #index:I
    .end local v8           #value:Ljava/lang/String;
    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 198
    .end local v0           #binding:Lorg/snmp4j/smi/VariableBinding;
    :cond_b9
    const/4 v8, 0x0

    goto :goto_47
.end method

.method public getDuplexBySNMP(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 203
    .local v3, inetAddress:Ljava/net/InetAddress;
    new-instance v11, Lorg/snmp4j/smi/UdpAddress;

    const/16 v12, 0xa1

    invoke-direct {v11, v3, v12}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 204
    .local v11, targetAddress:Lorg/snmp4j/smi/UdpAddress;
    new-instance v10, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v10}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 205
    .local v10, target:Lorg/snmp4j/CommunityTarget;
    new-instance v12, Lorg/snmp4j/smi/OctetString;

    const-string v13, "public"

    invoke-direct {v12, v13}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 206
    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 207
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 208
    const-wide/16 v12, 0x5dc

    invoke-virtual {v10, v12, v13}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 209
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 211
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v6, mediaPathTypes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "other"

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "unknown"

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "longEdgeBindingDuplex"

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "shortEdgeBindingDuplex"

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "simplex"

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v5, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->prtMediaPathTypeOid:Lorg/snmp4j/smi/OID;

    .line 219
    .local v5, mainOid:Lorg/snmp4j/smi/OID;
    move-object v1, v5

    .line 221
    .local v1, currentOID:Lorg/snmp4j/smi/OID;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v9, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_69
    invoke-virtual {v1, v5}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 223
    new-instance v7, Lorg/snmp4j/PDU;

    invoke-direct {v7}, Lorg/snmp4j/PDU;-><init>()V

    .line 224
    .local v7, pdu:Lorg/snmp4j/PDU;
    new-instance v12, Lorg/snmp4j/smi/VariableBinding;

    new-instance v13, Lorg/snmp4j/smi/OID;

    invoke-direct {v13, v1}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-direct {v12, v13}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v7, v12}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 225
    const/16 v12, -0x5f

    invoke-virtual {v7, v12}, Lorg/snmp4j/PDU;->setType(I)V

    .line 227
    iget-object v12, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v12, v7, v10}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v8

    .line 228
    .local v8, response:Lorg/snmp4j/event/ResponseEvent;
    if-nez v8, :cond_90

    .line 229
    const/4 v9, 0x0

    .line 253
    .end local v7           #pdu:Lorg/snmp4j/PDU;
    .end local v8           #response:Lorg/snmp4j/event/ResponseEvent;
    .end local v9           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8f
    :goto_8f
    return-object v9

    .line 231
    .restart local v7       #pdu:Lorg/snmp4j/PDU;
    .restart local v8       #response:Lorg/snmp4j/event/ResponseEvent;
    .restart local v9       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_90
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v12

    if-nez v12, :cond_98

    .line 232
    const/4 v9, 0x0

    goto :goto_8f

    .line 234
    :cond_98
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v12

    invoke-virtual {v12}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v12

    if-eqz v12, :cond_a4

    .line 235
    const/4 v9, 0x0

    goto :goto_8f

    .line 237
    :cond_a4
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v12

    invoke-virtual {v12}, Lorg/snmp4j/PDU;->size()I

    move-result v12

    if-nez v12, :cond_b0

    .line 238
    const/4 v9, 0x0

    goto :goto_8f

    .line 240
    :cond_b0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b1
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v12

    invoke-virtual {v12}, Lorg/snmp4j/PDU;->size()I

    move-result v12

    if-ge v2, v12, :cond_69

    .line 241
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v12

    invoke-virtual {v12, v2}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v0

    .line 242
    .local v0, binding:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v12

    const/16 v13, 0x81

    if-eq v12, v13, :cond_ff

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v12

    const/16 v13, 0x80

    if-eq v12, v13, :cond_ff

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_ff

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v12

    if-eqz v12, :cond_ff

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 247
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/smi/Integer32;

    .line 248
    .local v4, intValue:Lorg/snmp4j/smi/Integer32;
    invoke-virtual {v4}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v4           #intValue:Lorg/snmp4j/smi/Integer32;
    :cond_ff
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v1

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1
.end method

.method public getLanguageBySNMP(Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 258
    .local v7, inetAddress:Ljava/net/InetAddress;
    new-instance v15, Lorg/snmp4j/smi/UdpAddress;

    const/16 v17, 0xa1

    move/from16 v0, v17

    invoke-direct {v15, v7, v0}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 259
    .local v15, targetAddress:Lorg/snmp4j/smi/UdpAddress;
    new-instance v14, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v14}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 260
    .local v14, target:Lorg/snmp4j/CommunityTarget;
    new-instance v17, Lorg/snmp4j/smi/OctetString;

    const-string v18, "public"

    invoke-direct/range {v17 .. v18}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 261
    invoke-virtual {v14, v15}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 262
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 263
    const-wide/16 v17, 0x5dc

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 264
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 266
    new-instance v11, Lorg/snmp4j/PDU;

    invoke-direct {v11}, Lorg/snmp4j/PDU;-><init>()V

    .line 267
    .local v11, pdu:Lorg/snmp4j/PDU;
    new-instance v17, Lorg/snmp4j/smi/VariableBinding;

    sget-object v18, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    invoke-direct/range {v17 .. v18}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 269
    const/16 v17, -0x60

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v14}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v12

    .line 272
    .local v12, response:Lorg/snmp4j/event/ResponseEvent;
    if-nez v12, :cond_5e

    .line 273
    const/4 v13, 0x0

    .line 303
    :cond_5d
    :goto_5d
    return-object v13

    .line 275
    :cond_5e
    invoke-virtual {v12}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v17

    if-nez v17, :cond_66

    .line 276
    const/4 v13, 0x0

    goto :goto_5d

    .line 278
    :cond_66
    invoke-virtual {v12}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v17

    if-eqz v17, :cond_72

    .line 279
    const/4 v13, 0x0

    goto :goto_5d

    .line 281
    :cond_72
    const/4 v4, 0x0

    .local v4, i:I
    :goto_73
    invoke-virtual {v12}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/snmp4j/PDU;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_103

    .line 282
    invoke-virtual {v12}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v3

    .line 283
    .local v3, binding:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v17

    const/16 v18, 0x81

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ff

    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v17

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ff

    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getSyntax()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ff

    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v17

    if-eqz v17, :cond_ff

    .line 287
    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v17

    check-cast v17, Lorg/snmp4j/smi/OctetString;

    invoke-virtual/range {v17 .. v17}, Lorg/snmp4j/smi/OctetString;->toString()Ljava/lang/String;

    move-result-object v16

    .line 288
    .local v16, value:Ljava/lang/String;
    const-string v17, "CMD:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 289
    .local v6, index:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_cb

    .line 290
    const/4 v13, 0x0

    goto :goto_5d

    .line 291
    :cond_cb
    add-int/lit8 v17, v6, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 292
    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 293
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_e7

    .line 294
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 295
    :cond_e7
    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 296
    .local v9, langs:[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v13, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_f5
    if-ge v5, v10, :cond_5d

    aget-object v8, v2, v5

    .line 298
    .local v8, l:Ljava/lang/String;
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_f5

    .line 281
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #index:I
    .end local v8           #l:Ljava/lang/String;
    .end local v9           #langs:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v13           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #value:Ljava/lang/String;
    :cond_ff
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_73

    .line 303
    .end local v3           #binding:Lorg/snmp4j/smi/VariableBinding;
    :cond_103
    const/4 v13, 0x0

    goto/16 :goto_5d
.end method

.method public getModelName(Ljava/util/Map;)Ljava/lang/String;
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/snmp4j/smi/OID;",
            "Lorg/snmp4j/smi/Variable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, variables:Ljava/util/Map;,"Ljava/util/Map<Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;>;"
    const/4 v9, 0x0

    const/4 v14, 0x4

    const/4 v13, -0x1

    .line 580
    :try_start_3
    const-string v2, "Samsung "

    .line 581
    .local v2, manufacturer:Ljava/lang/String;
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->sysObjectId:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/smi/Variable;

    .line 582
    .local v4, objectId:Lorg/snmp4j/smi/Variable;
    if-eqz v4, :cond_2d

    invoke-interface {v4}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2d

    .line 583
    move-object v0, v4

    check-cast v0, Lorg/snmp4j/smi/OID;

    move-object v5, v0

    .line 584
    .local v5, oid:Lorg/snmp4j/smi/OID;
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->dellOid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v5, v10}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 697
    .end local v2           #manufacturer:Ljava/lang/String;
    .end local v4           #objectId:Lorg/snmp4j/smi/Variable;
    .end local v5           #oid:Lorg/snmp4j/smi/OID;
    :cond_24
    :goto_24
    return-object v9

    .line 587
    .restart local v2       #manufacturer:Ljava/lang/String;
    .restart local v4       #objectId:Lorg/snmp4j/smi/Variable;
    .restart local v5       #oid:Lorg/snmp4j/smi/OID;
    :cond_25
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->xeroxOid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v5, v10}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v10

    if-nez v10, :cond_24

    .line 593
    .end local v5           #oid:Lorg/snmp4j/smi/OID;
    :cond_2d
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 594
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/snmp4j/smi/Variable;

    .line 595
    .local v7, var:Lorg/snmp4j/smi/Variable;
    invoke-interface {v7}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v10

    if-ne v10, v14, :cond_c1

    .line 596
    move-object v0, v7

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    move-object v8, v0

    .line 597
    .local v8, variable:Lorg/snmp4j/smi/OctetString;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v11

    const-string v12, "UTF8"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, value:Ljava/lang/String;
    move-object v3, v6

    .line 599
    .local v3, mfg:Ljava/lang/String;
    const-string v10, "MFG:"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, index:I
    if-eq v1, v13, :cond_c1

    .line 601
    add-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 603
    if-eq v1, v13, :cond_c1

    .line 604
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 606
    const-string v10, "^\\s+"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    const-string v10, "\\s+$"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "samsung"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c1

    .line 609
    const-string v10, "MDL:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 610
    if-eq v1, v13, :cond_c1

    .line 611
    add-int/lit8 v10, v1, 0x4

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 612
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 613
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 614
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_24

    .line 622
    .end local v1           #index:I
    .end local v3           #mfg:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #var:Lorg/snmp4j/smi/Variable;
    .end local v8           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_c1
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid3:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_155

    .line 623
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid3:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/snmp4j/smi/Variable;

    .line 624
    .restart local v7       #var:Lorg/snmp4j/smi/Variable;
    invoke-interface {v7}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v10

    if-ne v10, v14, :cond_155

    .line 625
    move-object v0, v7

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    move-object v8, v0

    .line 626
    .restart local v8       #variable:Lorg/snmp4j/smi/OctetString;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v11

    const-string v12, "UTF8"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 627
    .restart local v6       #value:Ljava/lang/String;
    move-object v3, v6

    .line 628
    .restart local v3       #mfg:Ljava/lang/String;
    const-string v10, "MFG:"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 629
    .restart local v1       #index:I
    if-eq v1, v13, :cond_155

    .line 630
    add-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 631
    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 632
    if-eq v1, v13, :cond_155

    .line 633
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 635
    const-string v10, "^\\s+"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    const-string v10, "\\s+$"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "samsung"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_155

    .line 638
    const-string v10, "MDL:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 639
    if-eq v1, v13, :cond_155

    .line 640
    add-int/lit8 v10, v1, 0x4

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 641
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 642
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 643
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_24

    .line 651
    .end local v1           #index:I
    .end local v3           #mfg:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #var:Lorg/snmp4j/smi/Variable;
    .end local v8           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_155
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid2:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e9

    .line 652
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModeOid2:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/snmp4j/smi/Variable;

    .line 653
    .restart local v7       #var:Lorg/snmp4j/smi/Variable;
    invoke-interface {v7}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v10

    if-ne v10, v14, :cond_1e9

    .line 654
    move-object v0, v7

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    move-object v8, v0

    .line 655
    .restart local v8       #variable:Lorg/snmp4j/smi/OctetString;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v11

    const-string v12, "UTF8"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 656
    .restart local v6       #value:Ljava/lang/String;
    move-object v3, v6

    .line 657
    .restart local v3       #mfg:Ljava/lang/String;
    const-string v10, "MFG:"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 658
    .restart local v1       #index:I
    if-eq v1, v13, :cond_1e9

    .line 659
    add-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 661
    if-eq v1, v13, :cond_1e9

    .line 662
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 664
    const-string v10, "^\\s+"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 665
    const-string v10, "\\s+$"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "samsung"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1e9

    .line 667
    const-string v10, "MDL:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 668
    if-eq v1, v13, :cond_1e9

    .line 669
    add-int/lit8 v10, v1, 0x4

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 670
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 671
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 672
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_24

    .line 680
    .end local v1           #index:I
    .end local v3           #mfg:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #var:Lorg/snmp4j/smi/Variable;
    .end local v8           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_1e9
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid1:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22c

    .line 681
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid1:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/snmp4j/smi/Variable;

    .line 682
    .restart local v7       #var:Lorg/snmp4j/smi/Variable;
    invoke-interface {v7}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v10

    if-ne v10, v14, :cond_22c

    .line 683
    move-object v0, v7

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    move-object v8, v0

    .line 684
    .restart local v8       #variable:Lorg/snmp4j/smi/OctetString;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v12

    const-string v13, "UTF8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_24

    .line 687
    .end local v7           #var:Lorg/snmp4j/smi/Variable;
    .end local v8           #variable:Lorg/snmp4j/smi/OctetString;
    :cond_22c
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid2:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 688
    sget-object v10, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->samsungModelNameOid2:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/snmp4j/smi/Variable;

    .line 689
    .restart local v7       #var:Lorg/snmp4j/smi/Variable;
    invoke-interface {v7}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v10

    if-ne v10, v14, :cond_24

    .line 690
    move-object v0, v7

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    move-object v8, v0

    .line 691
    .restart local v8       #variable:Lorg/snmp4j/smi/OctetString;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v12

    const-string v13, "UTF8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_26c} :catch_26f

    move-result-object v9

    goto/16 :goto_24

    .line 694
    .end local v2           #manufacturer:Ljava/lang/String;
    .end local v4           #objectId:Lorg/snmp4j/smi/Variable;
    .end local v7           #var:Lorg/snmp4j/smi/Variable;
    .end local v8           #variable:Lorg/snmp4j/smi/OctetString;
    :catch_26f
    move-exception v10

    goto/16 :goto_24
.end method

.method public getPrinters()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 957
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesIpp:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 958
    .local v0, devices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 959
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 960
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getScanners()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesIpp:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 965
    .local v0, devices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->devicesRow:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 966
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method protected isSamsungMFP(Ljavax/jmdns/ServiceInfo;)Z
    .registers 8
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 942
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 953
    :cond_d
    :goto_d
    return v3

    .line 944
    :cond_e
    const-string v4, "product"

    invoke-virtual {p1, v4}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, product:Ljava/lang/String;
    if-eqz v0, :cond_1e

    const-string v4, "Samsung"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 947
    :cond_1e
    const-string v4, "ty"

    invoke-virtual {p1, v4}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, ty:Ljava/lang/String;
    if-eqz v1, :cond_2e

    const-string v4, "Samsung"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 950
    :cond_2e
    const-string v4, "usb_MFG"

    invoke-virtual {p1, v4}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, usbMFG:Ljava/lang/String;
    if-eqz v2, :cond_3e

    const-string v4, "Samsung"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 953
    :cond_3e
    const/4 v3, 0x0

    goto :goto_d
.end method

.method public newDeviceFound(Ljava/lang/String;I)V
    .registers 11
    .parameter "host"
    .parameter "version"

    .prologue
    .line 819
    iget-object v6, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 844
    :cond_8
    :goto_8
    return-void

    .line 822
    :cond_9
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDeviceProperties(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    .line 823
    .local v5, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_8

    .line 824
    const-string v6, "modelName"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 825
    .local v4, modelName:Ljava/lang/String;
    const-string v6, "hostName"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 826
    .local v1, hostName:Ljava/lang/String;
    const-string v6, "location"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 827
    .local v3, location:Ljava/lang/String;
    const-string v6, "isScanner"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 829
    .local v2, isScanner:Ljava/lang/Boolean;
    new-instance v0, Lcom/sec/print/mobileprint/df/MFPDevice;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 830
    .local v0, device:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/print/mobileprint/df/MFPDevice;->setName(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, v3}, Lcom/sec/print/mobileprint/df/MFPDevice;->setNote(Ljava/lang/String;)V

    .line 833
    const/16 v6, 0x238c

    invoke-virtual {v0, v6}, Lcom/sec/print/mobileprint/df/MFPDevice;->setPort(I)V

    .line 835
    iget-object v6, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryPrinters:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 837
    iget-object v6, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->discoveryScanners:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_6f} :catch_70

    goto :goto_8

    .line 842
    .end local v0           #device:Lcom/sec/print/mobileprint/df/MFPDevice;
    .end local v1           #hostName:Ljava/lang/String;
    .end local v2           #isScanner:Ljava/lang/Boolean;
    .end local v3           #location:Ljava/lang/String;
    .end local v4           #modelName:Ljava/lang/String;
    .end local v5           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_70
    move-exception v6

    goto :goto_8
.end method

.method public newDeviceFoundException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "exception"

    .prologue
    .line 848
    const-string v0, "deviceListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newDeviceFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->mBinder:Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 937
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 939
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 972
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 975
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopDiscovery()V

    .line 976
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopBroadcastDiscovery()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d

    .line 979
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->snmp:Lorg/snmp4j/Snmp;

    .line 980
    return-void

    .line 977
    :catch_d
    move-exception v0

    goto :goto_9
.end method
