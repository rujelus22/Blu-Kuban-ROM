.class public Lcom/samsung/api/HTTP_API;
.super Ljava/lang/Object;
.source "HTTP_API.java"


# static fields
.field public static DEVICE_NAME:Ljava/lang/String;

.field public static DEVICE_TYPE:Ljava/lang/String;

.field static final DEVICE_TYPE_LIST:[Ljava/lang/String;

.field public static FRIENDLYNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 113
    const-string v0, "SEC_HHP_Samsung Mobile/1.0"

    sput-object v0, Lcom/samsung/api/HTTP_API;->DEVICE_NAME:Ljava/lang/String;

    .line 114
    const-string v0, "Samsung Mobile"

    sput-object v0, Lcom/samsung/api/HTTP_API;->FRIENDLYNAME:Ljava/lang/String;

    .line 115
    const-string v0, "Mobile"

    sput-object v0, Lcom/samsung/api/HTTP_API;->DEVICE_TYPE:Ljava/lang/String;

    .line 116
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TV"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Tablet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Camera"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Camcorder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Notebook"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Netbook"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Desktop"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AIO PC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Ref"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "STB"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Media Player"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NAS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/api/HTTP_API;->DEVICE_TYPE_LIST:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
