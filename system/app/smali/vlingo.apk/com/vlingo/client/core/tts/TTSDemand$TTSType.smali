.class public final enum Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
.super Ljava/lang/Enum;
.source "TTSDemand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSDemand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TTSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/core/tts/TTSDemand$TTSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_BACKGROUND:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_ERROR:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CAR_PROMPT:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum READBACK_EMAIL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

.field public static final enum READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_PROMPT"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_PROMPT:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_CONFIRM"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ERROR:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "READBACK_EMAIL"

    invoke-direct {v0, v1, v7}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_EMAIL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "READBACK_SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "READBACK_MMS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "ANSWER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_ANSWER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_BACKGROUND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_BACKGROUND:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_CANCELABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const-string v1, "CAR_CONFIRM_CANCEL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_PROMPT:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ERROR:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_EMAIL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_BACKGROUND:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->$VALUES:[Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    .registers 2
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->$VALUES:[Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-virtual {v0}, [Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    return-object v0
.end method
