.class public final enum Lcom/swype/android/connect/manager/MessageManager$ValidCommands;
.super Ljava/lang/Enum;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/manager/MessageManager$ValidCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

.field public static final enum ack:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

.field public static final enum get:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

.field public static final enum getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;


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

    .line 86
    new-instance v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    const-string v1, "getNext"

    const-string v2, "getNext"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    .line 89
    new-instance v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    const-string v1, "get"

    const-string v2, "get"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    .line 92
    new-instance v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    const-string v1, "ack"

    const-string v2, "ack"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SUCCESS"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    aput-object v1, v0, v5

    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    aput-object v1, v0, v7

    sput-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->name:Ljava/lang/String;

    .line 101
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->expectedResponses:Ljava/util/List;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/manager/MessageManager$ValidCommands;
    .registers 2
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/manager/MessageManager$ValidCommands;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->$VALUES:[Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v0}, [Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    return-object v0
.end method


# virtual methods
.method public final isExpectedResponse(Ljava/lang/String;)Z
    .registers 3
    .parameter "responseStatus"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->expectedResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->name:Ljava/lang/String;

    return-object v0
.end method
