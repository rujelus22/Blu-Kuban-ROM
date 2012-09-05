.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentDetails"
.end annotation


# instance fields
.field private albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

.field private appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

.field private artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

.field private bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

.field private cachedSize:I

.field private hasAlbumDetails:Z

.field private hasAppDetails:Z

.field private hasArtistDetails:Z

.field private hasBookDetails:Z

.field private hasSongDetails:Z

.field private hasSubscriptionDetails:Z

.field private hasVideoDetails:Z

.field private songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

.field private subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

.field private videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    .line 34
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    .line 54
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 74
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 94
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    .line 114
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    .line 134
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    return-object v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    return-object v0
.end method

.method public getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSerializedSize()I

    .line 204
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 214
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 218
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 222
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 226
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 230
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 234
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_71
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    .line 238
    return v0
.end method

.method public getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method public getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    return-object v0
.end method

.method public getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    return-object v0
.end method

.method public hasAlbumDetails()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails:Z

    return v0
.end method

.method public hasAppDetails()Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails:Z

    return v0
.end method

.method public hasArtistDetails()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails:Z

    return v0
.end method

.method public hasBookDetails()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails:Z

    return v0
.end method

.method public hasSongDetails()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails:Z

    return v0
.end method

.method public hasSubscriptionDetails()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails:Z

    return v0
.end method

.method public hasVideoDetails()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 246
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_62

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    :sswitch_d
    return-object p0

    .line 256
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;-><init>()V

    .line 257
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 258
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setAppDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 262
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;-><init>()V

    .line 263
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 264
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setAlbumDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 268
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 269
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 270
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setArtistDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 274
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;-><init>()V

    .line 275
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setSongDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 280
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;-><init>()V

    .line 281
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 282
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setBookDetails(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 286
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;-><init>()V

    .line 287
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 288
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setVideoDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 292
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;-><init>()V

    .line 293
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 246
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
        0x2a -> :sswitch_3e
        0x32 -> :sswitch_4a
        0x3a -> :sswitch_56
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_8

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    .line 43
    return-object p0
.end method

.method public setAppDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_8

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    .line 23
    return-object p0
.end method

.method public setArtistDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 58
    if-nez p1, :cond_8

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails:Z

    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 63
    return-object p0
.end method

.method public setBookDetails(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 98
    if-nez p1, :cond_8

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails:Z

    .line 102
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    .line 103
    return-object p0
.end method

.method public setSongDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 78
    if-nez p1, :cond_8

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails:Z

    .line 82
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 83
    return-object p0
.end method

.method public setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 138
    if-nez p1, :cond_8

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 141
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails:Z

    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    .line 143
    return-object p0
.end method

.method public setVideoDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 118
    if-nez p1, :cond_8

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails:Z

    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    .line 123
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 178
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 179
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 181
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 182
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 184
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 185
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 187
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 188
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 190
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 191
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 193
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 194
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 196
    :cond_62
    return-void
.end method
