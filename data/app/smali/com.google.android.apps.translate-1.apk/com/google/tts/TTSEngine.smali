.class public final enum Lcom/google/tts/TTSEngine;
.super Ljava/lang/Enum;
.source "TTSEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/tts/TTSEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/tts/TTSEngine;

.field public static final enum ESPEAK:Lcom/google/tts/TTSEngine;

.field public static final enum PICO:Lcom/google/tts/TTSEngine;

.field public static final enum PRERECORDED_ONLY:Lcom/google/tts/TTSEngine;

.field public static final enum PRERECORDED_WITH_TTS:Lcom/google/tts/TTSEngine;

.field public static final enum TTS_ONLY:Lcom/google/tts/TTSEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/tts/TTSEngine;

    const-string v1, "PRERECORDED_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/google/tts/TTSEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEngine;->PRERECORDED_ONLY:Lcom/google/tts/TTSEngine;

    new-instance v0, Lcom/google/tts/TTSEngine;

    const-string v1, "PRERECORDED_WITH_TTS"

    invoke-direct {v0, v1, v3}, Lcom/google/tts/TTSEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEngine;->PRERECORDED_WITH_TTS:Lcom/google/tts/TTSEngine;

    new-instance v0, Lcom/google/tts/TTSEngine;

    const-string v1, "TTS_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/google/tts/TTSEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEngine;->TTS_ONLY:Lcom/google/tts/TTSEngine;

    new-instance v0, Lcom/google/tts/TTSEngine;

    const-string v1, "ESPEAK"

    invoke-direct {v0, v1, v5}, Lcom/google/tts/TTSEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEngine;->ESPEAK:Lcom/google/tts/TTSEngine;

    new-instance v0, Lcom/google/tts/TTSEngine;

    const-string v1, "PICO"

    invoke-direct {v0, v1, v6}, Lcom/google/tts/TTSEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEngine;->PICO:Lcom/google/tts/TTSEngine;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/tts/TTSEngine;

    sget-object v1, Lcom/google/tts/TTSEngine;->PRERECORDED_ONLY:Lcom/google/tts/TTSEngine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tts/TTSEngine;->PRERECORDED_WITH_TTS:Lcom/google/tts/TTSEngine;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tts/TTSEngine;->TTS_ONLY:Lcom/google/tts/TTSEngine;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/tts/TTSEngine;->ESPEAK:Lcom/google/tts/TTSEngine;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/tts/TTSEngine;->PICO:Lcom/google/tts/TTSEngine;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/tts/TTSEngine;->ENUM$VALUES:[Lcom/google/tts/TTSEngine;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/tts/TTSEngine;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/tts/TTSEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tts/TTSEngine;

    return-object v0
.end method

.method public static values()[Lcom/google/tts/TTSEngine;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/tts/TTSEngine;->ENUM$VALUES:[Lcom/google/tts/TTSEngine;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/tts/TTSEngine;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
