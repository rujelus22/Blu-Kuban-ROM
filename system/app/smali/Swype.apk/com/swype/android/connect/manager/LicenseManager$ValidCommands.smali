.class public final enum Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;
.super Ljava/lang/Enum;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/LicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

.field public static final enum ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

.field public static final enum fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

.field public static final enum request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;


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
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    new-instance v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    const-string v1, "request"

    const-string v2, "request"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    .line 49
    new-instance v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    const-string v1, "fetch"

    const-string v2, "fetch"

    new-array v3, v5, [Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    .line 50
    new-instance v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    const-string v1, "ack"

    const-string v2, "ack"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    const-string v4, "FAILURE"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    aput-object v1, v0, v5

    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    aput-object v1, v0, v7

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->name:Ljava/lang/String;

    .line 60
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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->name:Ljava/lang/String;

    .line 68
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->expectedResponses:Ljava/util/List;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;
    .registers 2
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    return-object v0
.end method


# virtual methods
.method public final isExpectedResponse(Ljava/lang/String;)Z
    .registers 3
    .parameter "responseStatus"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->expectedResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->name:Ljava/lang/String;

    return-object v0
.end method
