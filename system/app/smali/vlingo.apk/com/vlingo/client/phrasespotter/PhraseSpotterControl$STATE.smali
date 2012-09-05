.class final enum Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
.super Ljava/lang/Enum;
.source "PhraseSpotterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

.field public static final enum IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

.field public static final enum RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

.field public static final enum STOPPING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    new-instance v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    new-instance v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->STOPPING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    sget-object v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->STOPPING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->$VALUES:[Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
    .registers 2
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->$VALUES:[Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    invoke-virtual {v0}, [Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    return-object v0
.end method
