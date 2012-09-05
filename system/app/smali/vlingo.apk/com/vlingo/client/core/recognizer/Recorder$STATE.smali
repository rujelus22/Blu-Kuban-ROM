.class final enum Lcom/vlingo/client/core/recognizer/Recorder$STATE;
.super Ljava/lang/Enum;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/core/recognizer/Recorder$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/core/recognizer/Recorder$STATE;

.field public static final enum STARTED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

.field public static final enum STARTING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

.field public static final enum STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

.field public static final enum STOPPING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    new-instance v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    new-instance v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    new-instance v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->$VALUES:[Lcom/vlingo/client/core/recognizer/Recorder$STATE;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/Recorder$STATE;
    .registers 2
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/core/recognizer/Recorder$STATE;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->$VALUES:[Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    invoke-virtual {v0}, [Lcom/vlingo/client/core/recognizer/Recorder$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    return-object v0
.end method
