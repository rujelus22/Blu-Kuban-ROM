.class public final enum Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
.super Ljava/lang/Enum;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

.field public static final enum MESSAGE_READBACK:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

.field public static final enum SOUND:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

.field public static final enum TTS_PROMPT:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    const-string v1, "SOUND"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->SOUND:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    new-instance v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    const-string v1, "TTS_PROMPT"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->TTS_PROMPT:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    new-instance v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    const-string v1, "MESSAGE_READBACK"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->MESSAGE_READBACK:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    sget-object v1, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->SOUND:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->TTS_PROMPT:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->MESSAGE_READBACK:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->$VALUES:[Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    .registers 2
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->$VALUES:[Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    invoke-virtual {v0}, [Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    return-object v0
.end method
