.class public final Lcom/google/android/youtube/core/player/mp4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/android/youtube/core/player/mp4/c;Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;)Lcom/google/android/youtube/core/player/mp4/c;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->b:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/mp4/c;->c(Lcom/google/android/youtube/core/player/mp4/s;)I

    move-result v3

    .line 52
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v3, :cond_2a

    .line 53
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->b:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;I)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v1

    .line 54
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->c:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/mp4/c;->b(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v0

    sget-object v4, Lcom/google/android/youtube/core/player/mp4/b;->d:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;->e()Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    move-result-object v0

    if-ne v0, p1, :cond_26

    move-object v0, v1

    .line 61
    :goto_25
    return-object v0

    .line 52
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 61
    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static a(Ljava/io/InputStream;)Ljava/util/SortedMap;
    .registers 6
    .parameter

    .prologue
    .line 24
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_6
    if-nez v1, :cond_1c

    .line 27
    invoke-static {v2}, Lcom/google/android/youtube/core/player/mp4/b;->a(Ljava/io/DataInputStream;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/a;->c()Lcom/google/android/youtube/core/player/mp4/s;

    move-result-object v3

    sget-object v4, Lcom/google/android/youtube/core/player/mp4/b;->a:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 29
    check-cast v0, Lcom/google/android/youtube/core/player/mp4/c;

    :goto_1a
    move-object v1, v0

    .line 31
    goto :goto_6

    .line 32
    :cond_1c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 34
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_AUDIO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/player/mp4/e;->a(Lcom/google/android/youtube/core/player/mp4/c;Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v0

    .line 35
    sget-object v2, Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;->TRACK_VIDEO:Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/mp4/e;->a(Lcom/google/android/youtube/core/player/mp4/c;Lcom/google/android/youtube/core/player/mp4/HdlrAtom$TrackType;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_2f

    if-nez v0, :cond_37

    .line 37
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input must contain an audio and a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/mp4/e;->a(Lcom/google/android/youtube/core/player/mp4/c;Ljava/util/Map;)V

    .line 42
    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/mp4/e;->a(Lcom/google/android/youtube/core/player/mp4/c;Ljava/util/Map;)V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_48
    move-object v0, v1

    goto :goto_1a
.end method

.method private static a(Lcom/google/android/youtube/core/player/mp4/c;Ljava/util/Map;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->c:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/mp4/c;->b(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->l:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/d;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/d;->e()I

    move-result v7

    .line 76
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->c:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/mp4/c;->b(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->e:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->b(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->f:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->b(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/c;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->h:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/player/mp4/i;

    .line 82
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->j:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/player/mp4/j;

    .line 83
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->i:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/mp4/n;

    .line 84
    sget-object v1, Lcom/google/android/youtube/core/player/mp4/b;->g:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/mp4/p;

    .line 85
    sget-object v5, Lcom/google/android/youtube/core/player/mp4/b;->k:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v0, v5}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/player/mp4/m;

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/g;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/mp4/n;->e()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/player/mp4/g;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;I)V

    .line 91
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/g;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/f;

    .line 92
    iget-boolean v1, v0, Lcom/google/android/youtube/core/player/mp4/f;->j:Z

    if-eqz v1, :cond_59

    .line 93
    iget v1, v0, Lcom/google/android/youtube/core/player/mp4/f;->b:I

    div-int v3, v1, v7

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 95
    if-eqz v1, :cond_81

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lcom/google/android/youtube/core/player/mp4/f;->g:I

    if-le v1, v4, :cond_59

    .line 96
    :cond_81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Lcom/google/android/youtube/core/player/mp4/f;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 100
    :cond_8f
    return-void
.end method
