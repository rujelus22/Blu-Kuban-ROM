.class public final enum Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;
.super Ljava/lang/Enum;
.source "AbstractCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;

    sput-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;
    .registers 2
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;

    return-object v0
.end method
