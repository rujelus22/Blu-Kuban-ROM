.class final enum Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
.super Ljava/lang/Enum;
.source "NavMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/nav/NavMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

.field public static final enum ITEM_GO_HOME:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

.field public static final enum ITEM_OPEN_MAPS:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

.field public static final enum ITEM_OPEN_NAV:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    const-string v1, "ITEM_GO_HOME"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_GO_HOME:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    new-instance v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    const-string v1, "ITEM_OPEN_NAV"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_OPEN_NAV:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    new-instance v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    const-string v1, "ITEM_OPEN_MAPS"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_OPEN_MAPS:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    sget-object v1, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_GO_HOME:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_OPEN_NAV:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_OPEN_MAPS:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->$VALUES:[Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
    .registers 2
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->$VALUES:[Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-virtual {v0}, [Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    return-object v0
.end method
