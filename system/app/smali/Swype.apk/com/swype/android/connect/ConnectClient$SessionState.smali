.class public final enum Lcom/swype/android/connect/ConnectClient$SessionState;
.super Ljava/lang/Enum;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/connect/ConnectClient$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/connect/ConnectClient$SessionState;

.field public static final enum INVALID:Lcom/swype/android/connect/ConnectClient$SessionState;

.field public static final enum PROCESSING:Lcom/swype/android/connect/ConnectClient$SessionState;

.field public static final enum VALID:Lcom/swype/android/connect/ConnectClient$SessionState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    new-instance v0, Lcom/swype/android/connect/ConnectClient$SessionState;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/connect/ConnectClient$SessionState;->VALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    .line 269
    new-instance v0, Lcom/swype/android/connect/ConnectClient$SessionState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/swype/android/connect/ConnectClient$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/connect/ConnectClient$SessionState;->INVALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    .line 270
    new-instance v0, Lcom/swype/android/connect/ConnectClient$SessionState;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v4}, Lcom/swype/android/connect/ConnectClient$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/connect/ConnectClient$SessionState;->PROCESSING:Lcom/swype/android/connect/ConnectClient$SessionState;

    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/swype/android/connect/ConnectClient$SessionState;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$SessionState;->VALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/swype/android/connect/ConnectClient$SessionState;->INVALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/swype/android/connect/ConnectClient$SessionState;->PROCESSING:Lcom/swype/android/connect/ConnectClient$SessionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/swype/android/connect/ConnectClient$SessionState;->$VALUES:[Lcom/swype/android/connect/ConnectClient$SessionState;

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
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/connect/ConnectClient$SessionState;
    .registers 2
    .parameter

    .prologue
    .line 267
    const-class v0, Lcom/swype/android/connect/ConnectClient$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient$SessionState;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/connect/ConnectClient$SessionState;
    .registers 1

    .prologue
    .line 267
    sget-object v0, Lcom/swype/android/connect/ConnectClient$SessionState;->$VALUES:[Lcom/swype/android/connect/ConnectClient$SessionState;

    invoke-virtual {v0}, [Lcom/swype/android/connect/ConnectClient$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/connect/ConnectClient$SessionState;

    return-object v0
.end method
