.class public final enum Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
.super Ljava/lang/Enum;
.source "DeviceStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/DeviceStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Connecting:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Data_Connected:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Disconnected:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Disconnecting:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Initialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum RF_OFF_HW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum RF_OFF_HW_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum RF_OFF_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Ready:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum Scanning:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

.field public static final enum UnInitialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "UnInitialized"

    invoke-direct {v0, v1, v3}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->UnInitialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 20
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "RF_OFF_HW_SW"

    invoke-direct {v0, v1, v4}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 23
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "RF_OFF_HW"

    invoke-direct {v0, v1, v5}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 26
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "RF_OFF_SW"

    invoke-direct {v0, v1, v6}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 29
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v7}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Initialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 32
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Scanning"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Scanning:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 35
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Ready"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Ready:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 38
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Connecting"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Connecting:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 41
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Data_Connected"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Data_Connected:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 44
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Disconnecting"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Disconnecting:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 47
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    const-string v1, "Disconnected"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Disconnected:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->UnInitialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Initialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Scanning:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Ready:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Connecting:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Data_Connected:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Disconnecting:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Disconnected:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->$VALUES:[Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    return-object v0
.end method

.method public static values()[Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->$VALUES:[Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    invoke-virtual {v0}, [Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    return-object v0
.end method
