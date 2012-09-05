.class final enum Lcom/vlingo/client/car/CarActivity$NewIntentAction;
.super Ljava/lang/Enum;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NewIntentAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/car/CarActivity$NewIntentAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/car/CarActivity$NewIntentAction;

.field public static final enum Cancel:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

.field public static final enum StartListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

.field public static final enum StopListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    const-string v1, "StartListening"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StartListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    new-instance v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    const-string v1, "StopListening"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StopListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    new-instance v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->Cancel:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StartListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StopListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->Cancel:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->$VALUES:[Lcom/vlingo/client/car/CarActivity$NewIntentAction;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/car/CarActivity$NewIntentAction;
    .registers 2
    .parameter "name"

    .prologue
    .line 126
    const-class v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/car/CarActivity$NewIntentAction;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->$VALUES:[Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    invoke-virtual {v0}, [Lcom/vlingo/client/car/CarActivity$NewIntentAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    return-object v0
.end method
