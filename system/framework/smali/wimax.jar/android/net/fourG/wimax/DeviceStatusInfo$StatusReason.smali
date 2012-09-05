.class public final enum Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
.super Ljava/lang/Enum;
.source "DeviceStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/DeviceStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

.field public static final enum Fail:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

.field public static final enum Normal:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->Normal:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    .line 54
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v3}, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->Fail:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->Normal:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->Fail:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->$VALUES:[Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    .registers 2
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    return-object v0
.end method

.method public static values()[Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->$VALUES:[Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    invoke-virtual {v0}, [Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    return-object v0
.end method
