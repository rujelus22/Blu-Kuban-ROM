.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardRecord"
.end annotation


# instance fields
.field mAlbum:Ljava/lang/String;

.field mAlbumId:J

.field mArtist:Ljava/lang/String;

.field mArtistId:J

.field mHasRemote:Z

.field mKeepOn:Z

.field mListId:J

.field mListName:Ljava/lang/String;

.field mPlaylistType:I

.field mType:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAlbumCardRecord(JLjava/lang/String;Ljava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .registers 6
    .parameter "albumId"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-direct {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;-><init>()V

    .line 186
    .local v0, c:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    .line 187
    iput-wide p0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 188
    iput-object p2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    .line 189
    iput-object p3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    .line 190
    return-object v0
.end method

.method static createListCardRecord(JLjava/lang/String;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .registers 6
    .parameter "listId"
    .parameter "listName"
    .parameter "playlistType"

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-direct {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;-><init>()V

    .line 195
    .local v0, c:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    .line 196
    iput-wide p0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 197
    iput-object p2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    .line 198
    iput p3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mPlaylistType:I

    .line 199
    return-object v0
.end method

.method static createShuffleAllCardRecord()Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .registers 2

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-direct {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;-><init>()V

    .line 180
    .local v0, c:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    .line 181
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 205
    .local v0, o:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    iget v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 216
    :cond_c
    :goto_c
    :pswitch_c
    return v1

    .line 208
    :cond_d
    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v3, :pswitch_data_60

    .line 219
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_2d
    iget-wide v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-wide v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_49

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_49
    move v1, v2

    goto :goto_c

    .line 216
    :pswitch_4b
    iget-wide v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    iget-wide v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5d

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_5d
    move v1, v2

    goto :goto_c

    .line 208
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_c
        :pswitch_2d
        :pswitch_4b
    .end packed-switch
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v0, :pswitch_data_2a

    .line 233
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_20
    const/4 v0, 0x0

    .line 231
    :goto_21
    return v0

    .line 229
    :pswitch_22
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    long-to-int v0, v0

    goto :goto_21

    .line 231
    :pswitch_26
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    long-to-int v0, v0

    goto :goto_21

    .line 225
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v0, :pswitch_data_80

    .line 246
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_20
    const-string v0, "ShuffleAll"

    .line 244
    :goto_22
    return-object v0

    .line 242
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 244
    :pswitch_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playlist("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 238
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_20
        :pswitch_23
        :pswitch_57
    .end packed-switch
.end method
