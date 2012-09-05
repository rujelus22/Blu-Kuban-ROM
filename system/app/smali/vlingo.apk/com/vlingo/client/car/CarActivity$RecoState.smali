.class public final enum Lcom/vlingo/client/car/CarActivity$RecoState;
.super Ljava/lang/Enum;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/car/CarActivity$RecoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/car/CarActivity$RecoState;

.field public static final enum LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;

.field public static final enum LISTENING_STARTING:Lcom/vlingo/client/car/CarActivity$RecoState;

.field public static final enum READY:Lcom/vlingo/client/car/CarActivity$RecoState;

.field public static final enum THINKING:Lcom/vlingo/client/car/CarActivity$RecoState;

.field public static final enum UNINITIALIZED:Lcom/vlingo/client/car/CarActivity$RecoState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/CarActivity$RecoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->UNINITIALIZED:Lcom/vlingo/client/car/CarActivity$RecoState;

    new-instance v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/car/CarActivity$RecoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    new-instance v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    const-string v1, "LISTENING_STARTING"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/car/CarActivity$RecoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTING:Lcom/vlingo/client/car/CarActivity$RecoState;

    new-instance v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    const-string v1, "LISTENING_STARTED"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/car/CarActivity$RecoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;

    new-instance v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    const-string v1, "THINKING"

    invoke-direct {v0, v1, v6}, Lcom/vlingo/client/car/CarActivity$RecoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->THINKING:Lcom/vlingo/client/car/CarActivity$RecoState;

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->UNINITIALIZED:Lcom/vlingo/client/car/CarActivity$RecoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTING:Lcom/vlingo/client/car/CarActivity$RecoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->THINKING:Lcom/vlingo/client/car/CarActivity$RecoState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->$VALUES:[Lcom/vlingo/client/car/CarActivity$RecoState;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/car/CarActivity$RecoState;
    .registers 2
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarActivity$RecoState;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/car/CarActivity$RecoState;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->$VALUES:[Lcom/vlingo/client/car/CarActivity$RecoState;

    invoke-virtual {v0}, [Lcom/vlingo/client/car/CarActivity$RecoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/car/CarActivity$RecoState;

    return-object v0
.end method
