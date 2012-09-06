.class final enum Lcom/google/android/music/MediaPlaybackActivity$LightsState;
.super Ljava/lang/Enum;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LightsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/MediaPlaybackActivity$LightsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/MediaPlaybackActivity$LightsState;

.field public static final enum OFF:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

.field public static final enum ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

.field public static final enum TRANSITIONING_DOWN:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

.field public static final enum TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity$LightsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->OFF:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 92
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    const-string v1, "TRANSITIONING_UP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/MediaPlaybackActivity$LightsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 93
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    const-string v1, "TRANSITIONING_DOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/MediaPlaybackActivity$LightsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_DOWN:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 94
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/MediaPlaybackActivity$LightsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->OFF:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_DOWN:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->$VALUES:[Lcom/google/android/music/MediaPlaybackActivity$LightsState;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/MediaPlaybackActivity$LightsState;
    .registers 2
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/MediaPlaybackActivity$LightsState;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->$VALUES:[Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    invoke-virtual {v0}, [Lcom/google/android/music/MediaPlaybackActivity$LightsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    return-object v0
.end method
