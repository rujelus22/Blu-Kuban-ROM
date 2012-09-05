.class public final Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
.super Lcom/google/android/youtube/core/player/mp4/a;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/youtube/core/player/mp4/s;

.field private static final c:Lcom/google/android/youtube/core/player/mp4/s;


# instance fields
.field private a:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "vide"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->b:Lcom/google/android/youtube/core/player/mp4/s;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "soun"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->c:Lcom/google/android/youtube/core/player/mp4/s;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/s;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 32
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_UNKNOWN:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->a:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(I)V

    .line 39
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->b:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 40
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->a:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 44
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 45
    return-void

    .line 41
    :cond_26
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->c:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 42
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->a:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    goto :goto_1a
.end method

.method public final e()Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->a:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    return-object v0
.end method
