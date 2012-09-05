.class public final enum Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;
.super Ljava/lang/Enum;
.source "AbstractCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "managerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

.field public static final enum DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

.field public static final enum STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

.field public static final enum STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 72
    new-instance v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 73
    new-instance v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->$VALUES:[Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;
    .registers 2
    .parameter

    .prologue
    .line 70
    const-class v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->$VALUES:[Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    return-object v0
.end method
