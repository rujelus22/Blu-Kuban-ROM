.class public final enum Lcom/google/android/youtube/core/player/Director$StopReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum BANDWIDTH_WARNING_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum VIDEO_ENDED:Lcom/google/android/youtube/core/player/Director$StopReason;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "EMPTY_PLAYLIST"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 169
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "VIDEO_ENDED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->VIDEO_ENDED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 170
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "AUTOPLAY_DENIED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 171
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "BANDWIDTH_WARNING_DECLINED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->BANDWIDTH_WARNING_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 172
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "ADULT_CONTENT_DECLINED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 173
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "ADULT_CONTENT_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/player/Director$StopReason;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->VIDEO_ENDED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->BANDWIDTH_WARNING_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->$VALUES:[Lcom/google/android/youtube/core/player/Director$StopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/Director$StopReason;
    .registers 2
    .parameter

    .prologue
    .line 167
    const-class v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/Director$StopReason;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->$VALUES:[Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/Director$StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/Director$StopReason;

    return-object v0
.end method
