.class public final enum Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "net4GBaseStationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/net4GBaseStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NSP_NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

.field public static final enum NSP_NETWORK_TYPE_HOME:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

.field public static final enum NSP_NETWORK_TYPE_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

.field public static final enum NSP_NETWORK_TYPE_ROAMING_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

.field public static final enum NSP_NETWORK_TYPE_UNKNOWN:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    const-string v1, "NSP_NETWORK_TYPE_HOME"

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_HOME:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    .line 39
    new-instance v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    const-string v1, "NSP_NETWORK_TYPE_PARTNER"

    invoke-direct {v0, v1, v3}, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    .line 40
    new-instance v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    const-string v1, "NSP_NETWORK_TYPE_ROAMING_PARTNER"

    invoke-direct {v0, v1, v4}, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_ROAMING_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    .line 41
    new-instance v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    const-string v1, "NSP_NETWORK_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v5}, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    sget-object v1, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_HOME:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_ROAMING_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->$VALUES:[Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;
    .registers 2
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->$VALUES:[Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    invoke-virtual {v0}, [Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    return-object v0
.end method
