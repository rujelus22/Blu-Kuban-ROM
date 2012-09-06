.class public final enum Lcom/google/tts/TTSParams;
.super Ljava/lang/Enum;
.source "TTSParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/tts/TTSParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/tts/TTSParams;

.field public static final enum VOICE_FEMALE:Lcom/google/tts/TTSParams;

.field public static final enum VOICE_MALE:Lcom/google/tts/TTSParams;

.field public static final enum VOICE_ROBOT:Lcom/google/tts/TTSParams;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/tts/TTSParams;

    const-string v1, "VOICE_MALE"

    invoke-direct {v0, v1, v2}, Lcom/google/tts/TTSParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSParams;->VOICE_MALE:Lcom/google/tts/TTSParams;

    new-instance v0, Lcom/google/tts/TTSParams;

    const-string v1, "VOICE_FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/google/tts/TTSParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSParams;->VOICE_FEMALE:Lcom/google/tts/TTSParams;

    new-instance v0, Lcom/google/tts/TTSParams;

    const-string v1, "VOICE_ROBOT"

    invoke-direct {v0, v1, v4}, Lcom/google/tts/TTSParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSParams;->VOICE_ROBOT:Lcom/google/tts/TTSParams;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/tts/TTSParams;

    sget-object v1, Lcom/google/tts/TTSParams;->VOICE_MALE:Lcom/google/tts/TTSParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tts/TTSParams;->VOICE_FEMALE:Lcom/google/tts/TTSParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tts/TTSParams;->VOICE_ROBOT:Lcom/google/tts/TTSParams;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/tts/TTSParams;->ENUM$VALUES:[Lcom/google/tts/TTSParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tts/TTSParams;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/tts/TTSParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tts/TTSParams;

    return-object v0
.end method

.method public static values()[Lcom/google/tts/TTSParams;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/tts/TTSParams;->ENUM$VALUES:[Lcom/google/tts/TTSParams;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/tts/TTSParams;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
