.class public abstract enum Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum CC:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum FAST_FORWARD:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum HOME:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum REWIND:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field public static final enum SCROLL:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$1;

    const-string v1, "FAST_FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 69
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$2;

    const-string v1, "REWIND"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$3;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 86
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$4;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 92
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$5;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 98
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$6;

    const-string v1, "PREVIOUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 104
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$7;

    const-string v1, "CC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->CC:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 110
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$8;

    const-string v1, "HOME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->HOME:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 116
    new-instance v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$9;

    const-string v1, "SCROLL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->SCROLL:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->CC:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->HOME:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->SCROLL:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->$VALUES:[Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/core/player/af;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
    .registers 2
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->$VALUES:[Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    return-object v0
.end method


# virtual methods
.method abstract execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
.end method

.method isRepeatable()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
