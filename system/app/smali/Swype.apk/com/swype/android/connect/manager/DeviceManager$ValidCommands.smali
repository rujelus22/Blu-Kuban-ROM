.class public final enum Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;
.super Ljava/lang/Enum;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

.field public static final enum ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

.field public static final enum getSwyperId:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

.field public static final enum register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

.field public static final enum timers:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

.field public static final enum update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

.field public static final enum validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;


# instance fields
.field private expectedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    const-string v1, "register"

    const-string v2, "register"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v6

    const-string v4, "INVALID_DEVICE"

    aput-object v4, v3, v7

    const-string v4, "INVALID_ARGUMENT"

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    .line 39
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    const-string v1, "validate"

    const-string v2, "validate"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v6

    const-string v4, "INVALID_DEVICE"

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    .line 42
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    const-string v1, "ack"

    const-string v2, "ack"

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v6

    const-string v4, "FAILURE"

    aput-object v4, v3, v7

    const-string v4, "INVALID_TRANSACTION"

    aput-object v4, v3, v8

    const-string v4, "INVALID_ARGUMENT"

    aput-object v4, v3, v9

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    .line 47
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    const-string v1, "update"

    const-string v2, "update"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v6

    const-string v4, "INVALID_DEVICE"

    aput-object v4, v3, v7

    const-string v4, "FAILURE"

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    .line 51
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    const-string v1, "timers"

    const-string v2, "timers"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->timers:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    .line 53
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    const-string v1, "getSwyperId"

    const/4 v2, 0x5

    const-string v3, "getSwyperId"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "SUCCESS"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->getSwyperId:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    aput-object v1, v0, v7

    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    aput-object v1, v0, v8

    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    aput-object v1, v0, v9

    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->timers:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->getSwyperId:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter "name"
    .parameter "allowedResponses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->name:Ljava/lang/String;

    .line 62
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->expectedResponses:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;
    .registers 2
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    return-object v0
.end method


# virtual methods
.method public final isExpectedResponse(Ljava/lang/String;)Z
    .registers 3
    .parameter "responseStatus"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->expectedResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->name:Ljava/lang/String;

    return-object v0
.end method
