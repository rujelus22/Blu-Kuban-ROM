.class public final enum Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;
.super Ljava/lang/Enum;
.source "HdlrAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

.field public static final enum TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

.field public static final enum TRACK_UNKNOWN:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

.field public static final enum TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    const-string v1, "TRACK_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_UNKNOWN:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    const-string v1, "TRACK_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    const-string v1, "TRACK_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_UNKNOWN:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->$VALUES:[Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;
    .registers 2
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->$VALUES:[Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    return-object v0
.end method
