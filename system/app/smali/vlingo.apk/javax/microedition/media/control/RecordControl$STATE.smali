.class final enum Ljavax/microedition/media/control/RecordControl$STATE;
.super Ljava/lang/Enum;
.source "RecordControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/media/control/RecordControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/microedition/media/control/RecordControl$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/microedition/media/control/RecordControl$STATE;

.field public static final enum IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

.field public static final enum RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

.field public static final enum STOPPING:Ljavax/microedition/media/control/RecordControl$STATE;

.field public static final enum STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Ljavax/microedition/media/control/RecordControl$STATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/media/control/RecordControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    new-instance v0, Ljavax/microedition/media/control/RecordControl$STATE;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v3}, Ljavax/microedition/media/control/RecordControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

    new-instance v0, Ljavax/microedition/media/control/RecordControl$STATE;

    const-string v1, "STOP_REQUESTED"

    invoke-direct {v0, v1, v4}, Ljavax/microedition/media/control/RecordControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    new-instance v0, Ljavax/microedition/media/control/RecordControl$STATE;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Ljavax/microedition/media/control/RecordControl$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->STOPPING:Ljavax/microedition/media/control/RecordControl$STATE;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/microedition/media/control/RecordControl$STATE;

    sget-object v1, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/microedition/media/control/RecordControl$STATE;->RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/microedition/media/control/RecordControl$STATE;->STOPPING:Ljavax/microedition/media/control/RecordControl$STATE;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->$VALUES:[Ljavax/microedition/media/control/RecordControl$STATE;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/microedition/media/control/RecordControl$STATE;
    .registers 2
    .parameter "name"

    .prologue
    .line 76
    const-class v0, Ljavax/microedition/media/control/RecordControl$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/microedition/media/control/RecordControl$STATE;

    return-object v0
.end method

.method public static values()[Ljavax/microedition/media/control/RecordControl$STATE;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->$VALUES:[Ljavax/microedition/media/control/RecordControl$STATE;

    invoke-virtual {v0}, [Ljavax/microedition/media/control/RecordControl$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/microedition/media/control/RecordControl$STATE;

    return-object v0
.end method
