.class public final enum Lcom/swype/android/connect/manager/SessionManager$ValidCommands;
.super Ljava/lang/Enum;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/SessionManager$ValidCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

.field public static final enum create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

.field public static final enum invalidate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

.field public static final enum poll:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

.field public static final enum validate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;


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
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    const-string v1, "create"

    const-string v2, "create"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    const-string v4, "VALIDATE_DEVICE"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    .line 34
    new-instance v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    const-string v1, "validate"

    const-string v2, "validate"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    const-string v4, "FAILURE"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    .line 37
    new-instance v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    const-string v1, "invalidate"

    const-string v2, "invalidate"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    const-string v4, "FAILURE"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->invalidate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    .line 40
    new-instance v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    const-string v1, "poll"

    const-string v2, "poll"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    const-string v4, "FAILURE"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->poll:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    aput-object v1, v0, v5

    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->invalidate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    aput-object v1, v0, v7

    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->poll:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    aput-object v1, v0, v8

    sput-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->name:Ljava/lang/String;

    .line 50
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->expectedResponses:Ljava/util/List;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/SessionManager$ValidCommands;
    .registers 2
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/SessionManager$ValidCommands;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    return-object v0
.end method


# virtual methods
.method public final isExpectedResponse(Ljava/lang/String;)Z
    .registers 3
    .parameter "responseStatus"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->expectedResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->name:Ljava/lang/String;

    return-object v0
.end method
