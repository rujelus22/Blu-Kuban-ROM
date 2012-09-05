.class abstract enum Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;
.super Ljava/lang/Enum;
.source "LMTTItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

.field public static final enum DEL:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

.field public static final enum INS:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

.field public static final enum NOOP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

.field public static final enum UP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$1;

    const-string v1, "INS"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->INS:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    .line 59
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$2;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->DEL:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    .line 67
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$3;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->UP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    .line 75
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$4;

    const-string v1, "NOOP"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->NOOP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->INS:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->DEL:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->UP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->NOOP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;
    .registers 2
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-virtual {v0}, [Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    return-object v0
.end method


# virtual methods
.method abstract dbUpdate(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method abstract getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V
.end method
