.class public final enum Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;
.super Ljava/lang/Enum;
.source "ReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/ReportingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

.field public static final enum tracking:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

.field public static final enum usage:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    const-string v1, "usage"

    const-string v2, "usage"

    invoke-direct {v0, v1, v3, v2}, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->usage:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    .line 64
    new-instance v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    const-string v1, "tracking"

    const-string v2, "tracking"

    invoke-direct {v0, v1, v4, v2}, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->tracking:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    sget-object v1, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->usage:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    aput-object v1, v0, v3

    sget-object v1, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->tracking:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    aput-object v1, v0, v4

    sput-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;
    .registers 2
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->name:Ljava/lang/String;

    return-object v0
.end method
