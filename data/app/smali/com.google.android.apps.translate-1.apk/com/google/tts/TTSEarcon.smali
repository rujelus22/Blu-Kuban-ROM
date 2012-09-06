.class public final enum Lcom/google/tts/TTSEarcon;
.super Ljava/lang/Enum;
.source "TTSEarcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/tts/TTSEarcon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/google/tts/TTSEarcon;

.field private static final synthetic ENUM$VALUES:[Lcom/google/tts/TTSEarcon;

.field public static final enum SILENCE:Lcom/google/tts/TTSEarcon;

.field public static final enum TICK:Lcom/google/tts/TTSEarcon;

.field public static final enum TOCK:Lcom/google/tts/TTSEarcon;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/tts/TTSEarcon;

    const-string v1, "SILENCE"

    invoke-direct {v0, v1, v2}, Lcom/google/tts/TTSEarcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEarcon;->SILENCE:Lcom/google/tts/TTSEarcon;

    new-instance v0, Lcom/google/tts/TTSEarcon;

    const-string v1, "TICK"

    invoke-direct {v0, v1, v3}, Lcom/google/tts/TTSEarcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEarcon;->TICK:Lcom/google/tts/TTSEarcon;

    new-instance v0, Lcom/google/tts/TTSEarcon;

    const-string v1, "TOCK"

    invoke-direct {v0, v1, v4}, Lcom/google/tts/TTSEarcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEarcon;->TOCK:Lcom/google/tts/TTSEarcon;

    new-instance v0, Lcom/google/tts/TTSEarcon;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/google/tts/TTSEarcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tts/TTSEarcon;->CANCEL:Lcom/google/tts/TTSEarcon;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/tts/TTSEarcon;

    sget-object v1, Lcom/google/tts/TTSEarcon;->SILENCE:Lcom/google/tts/TTSEarcon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tts/TTSEarcon;->TICK:Lcom/google/tts/TTSEarcon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tts/TTSEarcon;->TOCK:Lcom/google/tts/TTSEarcon;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/tts/TTSEarcon;->CANCEL:Lcom/google/tts/TTSEarcon;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/tts/TTSEarcon;->ENUM$VALUES:[Lcom/google/tts/TTSEarcon;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/tts/TTSEarcon;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/tts/TTSEarcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tts/TTSEarcon;

    return-object v0
.end method

.method public static values()[Lcom/google/tts/TTSEarcon;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/tts/TTSEarcon;->ENUM$VALUES:[Lcom/google/tts/TTSEarcon;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/tts/TTSEarcon;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
