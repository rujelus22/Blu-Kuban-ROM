.class public final enum Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
.super Ljava/lang/Enum;
.source "LMTTChunkUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LMTTChunkUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum START_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum STATE_1:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum STATE_2:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum STATE_3:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field public static final enum STATE_4:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;


# instance fields
.field private delay:J

.field private failNextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field private successNextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 77
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v1, "ERRORED_OUT_STATE"

    invoke-direct {v0, v1, v10}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 78
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v1, "FINISHED_STATE"

    invoke-direct {v0, v1, v11}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 79
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v1, "STATE_4"

    const-wide/32 v3, 0x1d4c000

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    sget-object v6, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;IJLcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_4:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 80
    new-instance v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v4, "STATE_3"

    const-wide/32 v6, 0x753000

    sget-object v8, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_4:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    sget-object v9, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;IJLcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    sput-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_3:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 81
    new-instance v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v4, "STATE_2"

    const-wide/32 v6, 0x1d4c00

    sget-object v8, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_3:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    sget-object v9, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;IJLcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    sput-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_2:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 82
    new-instance v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v4, "STATE_1"

    const/4 v5, 0x5

    const-wide/32 v6, 0x75300

    sget-object v8, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_2:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    sget-object v9, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-direct/range {v3 .. v9}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;IJLcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    sput-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_1:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 83
    new-instance v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    const-string v4, "START_STATE"

    const/4 v5, 0x6

    const-wide/16 v6, 0x3a98

    sget-object v8, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_1:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    sget-object v9, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-direct/range {v3 .. v9}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;-><init>(Ljava/lang/String;IJLcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    sput-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->START_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_4:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_3:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_2:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->STATE_1:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->START_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V
    .registers 7
    .parameter
    .parameter
    .parameter "delay"
    .parameter "fail"
    .parameter "success"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;",
            "Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-wide p3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->delay:J

    .line 92
    iput-object p5, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->failNextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 93
    iput-object p6, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->successNextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    .registers 2
    .parameter "name"

    .prologue
    .line 76
    const-class v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-virtual {v0}, [Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    return-object v0
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->delay:J

    return-wide v0
.end method

.method public getNextState(Lcom/vlingo/client/core/http/HttpResponse;I)Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    .registers 5
    .parameter "response"
    .parameter "lmttResponseCode"

    .prologue
    .line 100
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-ne p0, v0, :cond_9

    .line 109
    .end local p0
    :cond_8
    :goto_8
    return-object p0

    .line 102
    .restart local p0
    :cond_9
    if-eqz p1, :cond_14

    iget v0, p1, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    if-eq p2, v0, :cond_17

    .line 105
    :cond_14
    iget-object p0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->failNextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    goto :goto_8

    .line 109
    :cond_17
    iget-object p0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->successNextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    goto :goto_8
.end method
