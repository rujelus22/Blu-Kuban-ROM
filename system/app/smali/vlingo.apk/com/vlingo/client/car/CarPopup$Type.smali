.class public final enum Lcom/vlingo/client/car/CarPopup$Type;
.super Ljava/lang/Enum;
.source "CarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/car/CarPopup$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/car/CarPopup$Type;

.field public static final enum App:Lcom/vlingo/client/car/CarPopup$Type;

.field public static final enum Generic:Lcom/vlingo/client/car/CarPopup$Type;

.field public static final enum None:Lcom/vlingo/client/car/CarPopup$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/vlingo/client/car/CarPopup$Type;

    const-string v1, "App"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/CarPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarPopup$Type;->App:Lcom/vlingo/client/car/CarPopup$Type;

    .line 52
    new-instance v0, Lcom/vlingo/client/car/CarPopup$Type;

    const-string v1, "Generic"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/car/CarPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarPopup$Type;->Generic:Lcom/vlingo/client/car/CarPopup$Type;

    .line 53
    new-instance v0, Lcom/vlingo/client/car/CarPopup$Type;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/car/CarPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/CarPopup$Type;->None:Lcom/vlingo/client/car/CarPopup$Type;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vlingo/client/car/CarPopup$Type;

    sget-object v1, Lcom/vlingo/client/car/CarPopup$Type;->App:Lcom/vlingo/client/car/CarPopup$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/car/CarPopup$Type;->Generic:Lcom/vlingo/client/car/CarPopup$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/car/CarPopup$Type;->None:Lcom/vlingo/client/car/CarPopup$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/car/CarPopup$Type;->$VALUES:[Lcom/vlingo/client/car/CarPopup$Type;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/car/CarPopup$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/vlingo/client/car/CarPopup$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarPopup$Type;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/car/CarPopup$Type;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/vlingo/client/car/CarPopup$Type;->$VALUES:[Lcom/vlingo/client/car/CarPopup$Type;

    invoke-virtual {v0}, [Lcom/vlingo/client/car/CarPopup$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/car/CarPopup$Type;

    return-object v0
.end method
