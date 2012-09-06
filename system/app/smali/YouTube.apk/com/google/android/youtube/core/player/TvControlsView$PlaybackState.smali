.class public final enum Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

.field public static final enum PAUSED:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

.field public static final enum PLAYING:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PLAYING:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    .line 65
    new-instance v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PAUSED:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    sget-object v1, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PLAYING:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PAUSED:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->$VALUES:[Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;
    .registers 2
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->$VALUES:[Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    return-object v0
.end method
