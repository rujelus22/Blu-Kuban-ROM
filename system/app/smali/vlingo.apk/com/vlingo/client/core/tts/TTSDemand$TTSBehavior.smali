.class public final enum Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
.super Ljava/lang/Enum;
.source "TTSDemand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSDemand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TTSBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

.field public static final enum CACHE_ONLY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

.field public static final enum HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

.field public static final enum INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

.field public static final enum NORMAL:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->NORMAL:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    const-string v1, "HIGH_PRIORITY"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    const-string v1, "CACHE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->CACHE_ONLY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    const-string v1, "INCOMING_CALL_ANNOUNCE"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->NORMAL:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->CACHE_ONLY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->$VALUES:[Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->$VALUES:[Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    invoke-virtual {v0}, [Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    return-object v0
.end method
