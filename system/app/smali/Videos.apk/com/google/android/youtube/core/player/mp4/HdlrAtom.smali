.class public Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
.super Lcom/google/android/youtube/core/player/mp4/Atom;
.source "HdlrAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;
    }
.end annotation


# static fields
.field private static final SOUN_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field private static final VIDE_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;


# instance fields
.field private trackType:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "vide"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->VIDE_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "soun"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->SOUN_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V
    .registers 4
    .parameter "size"
    .parameter "tag"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/Atom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    .line 32
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_UNKNOWN:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->trackType:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 33
    return-void
.end method


# virtual methods
.method public getTrackType()Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->trackType:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    return-object v0
.end method

.method public readFrom(Ljava/io/DataInputStream;)V
    .registers 4
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(I)V

    .line 39
    .local v0, trackTypeTag:Lcom/google/android/youtube/core/player/mp4/Tag;
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->VIDE_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 40
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->trackType:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    .line 44
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->getContentSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 45
    return-void

    .line 41
    :cond_26
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->SOUN_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 42
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->trackType:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    goto :goto_1a
.end method
