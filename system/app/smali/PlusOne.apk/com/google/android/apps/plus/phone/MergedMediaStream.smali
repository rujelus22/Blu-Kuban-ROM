.class public Lcom/google/android/apps/plus/phone/MergedMediaStream;
.super Ljava/lang/Object;
.source "MergedMediaStream.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/MediaStream;


# instance fields
.field private final mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/phone/MediaStream$Row;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/gallery3d/common/Fingerprint;",
            "Lcom/google/android/apps/plus/phone/MediaStream$Row;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/phone/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:I

.field private mPosition:I

.field private final mStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/phone/MediaStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/phone/MediaStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, streams:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/phone/MediaStream;>;"
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    .line 46
    iput v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    .line 49
    iput v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mOffset:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mStreams:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mInitialStreams:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mFingerprints:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private getBuffered(I)Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 4
    .parameter "position"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-ltz p1, :cond_13

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_13

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    check-cast v0, Lcom/google/android/apps/plus/phone/MediaStream$Row;

    .line 143
    .restart local v0       #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_13
    return-object v0
.end method

.method private getNextRow()Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 14

    .prologue
    .line 187
    const/4 v6, 0x0

    .line 188
    .local v6, returnStream:Lcom/google/android/apps/plus/phone/MediaStream;
    const/4 v5, 0x0

    .line 189
    .local v5, returnRow:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    iget-object v9, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mStreams:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 190
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/phone/MediaStream;>;"
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/phone/MediaStream;

    .line 196
    .local v8, stream:Lcom/google/android/apps/plus/phone/MediaStream;
    :goto_14
    invoke-interface {v8}, Lcom/google/android/apps/plus/phone/MediaStream;->read()Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v7

    .line 197
    .local v7, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v7, :cond_1e

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 204
    :cond_1e
    :try_start_1e
    invoke-interface {v7}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    .line 205
    .local v2, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    iget-object v9, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mFingerprints:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_44

    .line 206
    .local v0, duplicateRow:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v0, :cond_3d

    .line 227
    if-eqz v5, :cond_3a

    invoke-interface {v5}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getDateTaken()J

    move-result-wide v9

    invoke-interface {v7}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getDateTaken()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_8

    .line 228
    :cond_3a
    move-object v6, v8

    .line 229
    move-object v5, v7

    goto :goto_8

    .line 209
    :cond_3d
    :try_start_3d
    invoke-interface {v0, v7}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->merge(Lcom/google/android/apps/plus/phone/MediaStream$Row;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_44

    .line 223
    .end local v0           #duplicateRow:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .end local v2           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :goto_40
    invoke-interface {v8}, Lcom/google/android/apps/plus/phone/MediaStream;->moveToNext()V

    goto :goto_14

    .line 211
    :catch_44
    move-exception v1

    .line 212
    .local v1, ex:Ljava/lang/Exception;
    invoke-interface {v7}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPhotoId()Ljava/lang/Long;

    move-result-object v4

    .line 213
    .local v4, photoId:Ljava/lang/Long;
    if-eqz v4, :cond_64

    .line 214
    const-string v9, "MergedMediaStream"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not compute fingerprint for photo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 217
    :cond_64
    const-string v9, "MergedMediaStream"

    const-string v10, "Could not compute fingerprint for unknown photo"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 232
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #photoId:Ljava/lang/Long;
    .end local v7           #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .end local v8           #stream:Lcom/google/android/apps/plus/phone/MediaStream;
    :cond_6c
    if-eqz v5, :cond_80

    .line 235
    invoke-interface {v5}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    .line 236
    .restart local v2       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-eqz v2, :cond_7d

    .line 237
    iget-object v9, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mFingerprints:Ljava/util/Map;

    invoke-interface {v5}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_7d
    invoke-interface {v6}, Lcom/google/android/apps/plus/phone/MediaStream;->moveToNext()V

    .line 241
    .end local v2           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_80
    return-object v5
.end method

.method private readRows(I)V
    .registers 11
    .parameter "target"

    .prologue
    .line 156
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 181
    :cond_8
    :goto_8
    return-void

    .line 160
    :cond_9
    new-instance v3, Lcom/google/android/apps/plus/util/StopWatch;

    invoke-direct {v3}, Lcom/google/android/apps/plus/util/StopWatch;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/StopWatch;->start()Lcom/google/android/apps/plus/util/StopWatch;

    move-result-object v2

    .line 163
    .local v2, watch:Lcom/google/android/apps/plus/util/StopWatch;
    add-int/lit8 v3, p1, 0x4

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v0, v3, -0x1

    .line 164
    .local v0, newOffset:I
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_8

    .line 169
    :goto_26
    iget v3, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mOffset:I

    if-ge v3, v0, :cond_30

    .line 170
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->getNextRow()Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v1

    .line 171
    .local v1, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v1, :cond_60

    .line 177
    .end local v1           #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_30
    const-string v3, "MergedMediaStream"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 178
    const-string v3, "MergedMediaStream"

    const-string v4, "readRows: buffered=%d; msec=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/StopWatch;->getElapsedMsec()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 174
    .restart local v1       #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_60
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget v3, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mOffset:I

    goto :goto_26
.end method


# virtual methods
.method public hasMoreData()Z
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    iget v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mOffset:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public moveTo(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    .line 84
    return-void
.end method

.method public moveToNext()V
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    .line 92
    return-void
.end method

.method public read()Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 3

    .prologue
    .line 99
    iget v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->getBuffered(I)Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v0

    .line 100
    .local v0, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v0, :cond_13

    .line 102
    iget v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->readRows(I)V

    .line 103
    iget v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->getBuffered(I)Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v0

    .line 105
    :cond_13
    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iput v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mOffset:I

    .line 123
    iput v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mPosition:I

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mFingerprints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mStreams:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/MergedMediaStream;->mInitialStreams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    return-void
.end method
