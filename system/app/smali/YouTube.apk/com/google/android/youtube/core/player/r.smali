.class public final Lcom/google/android/youtube/core/player/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/an;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/k;

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/utils/k;ZZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "networkStatus cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/utils/k;

    .line 34
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/r;->b:Z

    .line 35
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/r;->c:Z

    .line 36
    iput-boolean p4, p0, Lcom/google/android/youtube/core/player/r;->d:Z

    .line 37
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 84
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/r;->b:Z

    if-nez v1, :cond_65

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v5, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v1, v5, :cond_65

    move v1, v2

    :goto_1d
    or-int/lit8 v5, v1, 0x0

    .line 86
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/r;->c:Z

    if-eqz v1, :cond_67

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v6, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v1, v6, :cond_35

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v6, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v1, v6, :cond_35

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v6, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v1, v6, :cond_67

    :cond_35
    move v1, v2

    :goto_36
    or-int/2addr v5, v1

    .line 90
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/r;->d:Z

    if-nez v1, :cond_69

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-eqz v1, :cond_69

    move v1, v2

    :goto_40
    or-int/2addr v5, v1

    .line 91
    if-eqz p2, :cond_6b

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    move v1, v2

    :goto_4c
    or-int/2addr v1, v5

    .line 94
    iget-boolean v5, v0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-eqz v5, :cond_6d

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v6, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v5, v6, :cond_6d

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v5, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v0, v5, :cond_6d

    move v0, v2

    :goto_5e
    or-int/2addr v0, v1

    .line 97
    if-eqz v0, :cond_6

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_65
    move v1, v3

    .line 84
    goto :goto_1d

    :cond_67
    move v1, v3

    .line 86
    goto :goto_36

    :cond_69
    move v1, v3

    .line 90
    goto :goto_40

    :cond_6b
    move v1, v3

    .line 91
    goto :goto_4c

    :cond_6d
    move v0, v3

    .line 94
    goto :goto_5e

    .line 101
    :cond_6f
    return-void
.end method

.method private a()[Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    .line 112
    :goto_15
    return-object v0

    :cond_16
    new-array v0, v3, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v2

    goto :goto_15
.end method

.method private b()[Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 6

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 118
    new-array v0, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v4

    .line 120
    :goto_1a
    return-object v0

    :cond_1b
    new-array v0, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v4

    goto :goto_1a
.end method


# virtual methods
.method public final a(Ljava/util/Set;Z)Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 104
    if-eqz p2, :cond_21

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->a()[Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    move-object v1, v0

    .line 105
    :goto_7
    array-length v3, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_2b

    aget-object v4, v1, v2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v4, v0, :cond_12

    :goto_20
    return-object v0

    .line 104
    :cond_21
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->b()[Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    .line 105
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_2b
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;Ljava/util/Set;)Lcom/google/android/youtube/core/model/t;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 45
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_HLS:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/y;->a(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Ljava/util/Set;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 47
    new-instance v0, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    throw v0

    .line 49
    :cond_1f
    new-instance v1, Lcom/google/android/youtube/core/model/t;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/model/t;-><init>(Lcom/google/android/youtube/core/model/Stream;)V

    move-object v0, v1

    .line 77
    :goto_2f
    return-object v0

    .line 53
    :cond_30
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/r;->d:Z

    if-eqz v0, :cond_5d

    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v0, :cond_5d

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->DECLARED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    if-eq v0, v2, :cond_44

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->UPLOADED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    if-ne v0, v2, :cond_5d

    :cond_44
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/y;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    .line 56
    :goto_4b
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/y;->a(Ljava/util/Set;Z)V

    .line 58
    invoke-direct {p0, v1, p2}, Lcom/google/android/youtube/core/player/r;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 60
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 61
    new-instance v0, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    throw v0

    .line 53
    :cond_5d
    const/4 v0, 0x0

    goto :goto_4b

    .line 64
    :cond_5f
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->a()[Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    .line 65
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->b()[Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/y;->a(Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_72

    .line 70
    iget-object v0, v3, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/y;->a(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Ljava/util/Set;

    .line 72
    :cond_72
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/y;->a(Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    .line 74
    if-nez v1, :cond_80

    if-nez v3, :cond_80

    .line 75
    new-instance v0, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    throw v0

    .line 77
    :cond_80
    new-instance v0, Lcom/google/android/youtube/core/model/t;

    invoke-direct {v0, v3, v1}, Lcom/google/android/youtube/core/model/t;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_2f
.end method
