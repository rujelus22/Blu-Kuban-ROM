.class public Lcom/google/android/youtube/core/player/mp4/Mp4Util;
.super Ljava/lang/Object;
.source "Mp4Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findTrackWithType(Lcom/google/android/youtube/core/player/mp4/ContainerAtom;Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    .registers 8
    .parameter "moov"
    .parameter "trackType"

    .prologue
    .line 51
    sget-object v4, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->TRAK_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerCountWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)I

    move-result v3

    .line 52
    .local v3, numTracks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_27

    .line 53
    sget-object v4, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->TRAK_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p0, v4, v2}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;I)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v0

    .line 54
    .local v0, currentTrack:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    sget-object v4, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDIA_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v4

    sget-object v5, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->HDLR_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;

    .line 57
    .local v1, hdlr:Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->getTrackType()Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    move-result-object v4

    if-ne v4, p1, :cond_24

    .line 61
    .end local v0           #currentTrack:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    .end local v1           #hdlr:Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
    :goto_23
    return-object v0

    .line 52
    .restart local v0       #currentTrack:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    .restart local v1       #hdlr:Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 61
    .end local v0           #currentTrack:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    .end local v1           #hdlr:Lcom/google/android/youtube/core/player/mp4/HdlrAtom;
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static getOffsetMap(Ljava/io/InputStream;)Ljava/util/SortedMap;
    .registers 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 26
    .local v3, moov:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    :cond_6
    :goto_6
    if-nez v3, :cond_1c

    .line 27
    invoke-static {v2}, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->readNextAtom(Ljava/io/DataInputStream;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v0

    .line 28
    .local v0, atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getTag()Lcom/google/android/youtube/core/player/mp4/Tag;

    move-result-object v6

    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MOOV_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v6, v7}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v3, v0

    .line 29
    check-cast v3, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    goto :goto_6

    .line 32
    .end local v0           #atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    :cond_1c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 34
    sget-object v6, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    invoke-static {v3, v6}, Lcom/google/android/youtube/core/player/mp4/Mp4Util;->findTrackWithType(Lcom/google/android/youtube/core/player/mp4/ContainerAtom;Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v1

    .line 35
    .local v1, audioTrack:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    sget-object v6, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    invoke-static {v3, v6}, Lcom/google/android/youtube/core/player/mp4/Mp4Util;->findTrackWithType(Lcom/google/android/youtube/core/player/mp4/ContainerAtom;Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v5

    .line 36
    .local v5, videoTrack:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    if-eqz v5, :cond_2f

    if-nez v1, :cond_37

    .line 37
    :cond_2f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The input must contain an audio and a video track"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 40
    :cond_37
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v4, offsets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5, v4}, Lcom/google/android/youtube/core/player/mp4/Mp4Util;->parseTrackOffsets(Lcom/google/android/youtube/core/player/mp4/ContainerAtom;Ljava/util/Map;)V

    .line 42
    invoke-static {v1, v4}, Lcom/google/android/youtube/core/player/mp4/Mp4Util;->parseTrackOffsets(Lcom/google/android/youtube/core/player/mp4/ContainerAtom;Ljava/util/Map;)V

    .line 44
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method private static parseTrackOffsets(Lcom/google/android/youtube/core/player/mp4/ContainerAtom;Ljava/util/Map;)V
    .registers 18
    .parameter "track"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/player/mp4/ContainerAtom;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, offsets:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDIA_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v7

    sget-object v15, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDHD_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v7, v15}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/player/mp4/MdhdAtom;

    .line 74
    .local v9, mdhdAtom:Lcom/google/android/youtube/core/player/mp4/MdhdAtom;
    invoke-virtual {v9}, Lcom/google/android/youtube/core/player/mp4/MdhdAtom;->getTimescale()I

    move-result v13

    .line 76
    .local v13, timescale:I
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDIA_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v7

    sget-object v15, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MINF_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v7, v15}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v7

    sget-object v15, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STBL_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v7, v15}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    move-result-object v12

    .line 81
    .local v12, stbl:Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STCO_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v12, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/player/mp4/StcoAtom;

    .line 82
    .local v5, stcoAtom:Lcom/google/android/youtube/core/player/mp4/StcoAtom;
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSC_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v12, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/player/mp4/StscAtom;

    .line 83
    .local v4, stscAtom:Lcom/google/android/youtube/core/player/mp4/StscAtom;
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSZ_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v12, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/player/mp4/StszAtom;

    .line 84
    .local v3, stszAtom:Lcom/google/android/youtube/core/player/mp4/StszAtom;
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STTS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v12, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/mp4/SttsAtom;

    .line 85
    .local v2, sttsAtom:Lcom/google/android/youtube/core/player/mp4/SttsAtom;
    sget-object v7, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {v12, v7}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/player/mp4/StssAtom;

    .line 88
    .local v6, stssAtom:Lcom/google/android/youtube/core/player/mp4/StssAtom;
    new-instance v1, Lcom/google/android/youtube/core/player/mp4/StblReader;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/mp4/StszAtom;->getSampleCount()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/player/mp4/StblReader;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;I)V

    .line 91
    .local v1, stblReader:Lcom/google/android/youtube/core/player/mp4/StblReader;
    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/mp4/StblReader;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5d
    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/youtube/core/player/mp4/Sample;

    .line 92
    .local v10, sample:Lcom/google/android/youtube/core/player/mp4/Sample;
    iget-boolean v7, v10, Lcom/google/android/youtube/core/player/mp4/Sample;->seekable:Z

    if-eqz v7, :cond_5d

    .line 93
    iget v7, v10, Lcom/google/android/youtube/core/player/mp4/Sample;->pts:I

    div-int v11, v7, v13

    .line 94
    .local v11, sampleTimeSeconds:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 95
    .local v14, value:Ljava/lang/Integer;
    if-eqz v14, :cond_87

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v15, v10, Lcom/google/android/youtube/core/player/mp4/Sample;->chunkOffset:I

    if-le v7, v15, :cond_5d

    .line 96
    :cond_87
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v15, v10, Lcom/google/android/youtube/core/player/mp4/Sample;->chunkOffset:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 100
    .end local v10           #sample:Lcom/google/android/youtube/core/player/mp4/Sample;
    .end local v11           #sampleTimeSeconds:I
    .end local v14           #value:Ljava/lang/Integer;
    :cond_97
    return-void
.end method
