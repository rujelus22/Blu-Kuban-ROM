.class public Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;
.super Ljava/lang/Object;
.source "NetworkResponseParser.java"


# static fields
.field private static final CLASSTAG:Ljava/lang/String;

.field private static mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

.field private static mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

.field private static mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

.field private static mRequestConfigTag:I

.field private static mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->CLASSTAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    .line 196
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mRequestConfigTag:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseEndTag(Ljava/lang/String;)V
    .registers 4
    .parameter "current"

    .prologue
    const/4 v2, 0x0

    .line 337
    const-string v0, "/shazamResponse/requestResult1/tracks/track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 338
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_18

    .line 339
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->resultTracks:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    .line 353
    :cond_18
    :goto_18
    return-void

    .line 342
    :cond_19
    const-string v0, "/shazamResponse/requestResult1/tracks/track/tartists/tartist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 343
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    if-eqz v0, :cond_18

    .line 344
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->artists:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    goto :goto_18

    .line 347
    :cond_35
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/track"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 348
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    if-eqz v0, :cond_18

    .line 349
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->resultFindTags:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    goto :goto_18
.end method

.method public static parseResponse(Ljava/lang/String;)Lcom/sec/android/app/music/common/richinfo/NetworkData;
    .registers 4
    .parameter "response"

    .prologue
    .line 30
    new-instance v2, Lcom/sec/android/app/music/common/richinfo/NetworkData;

    invoke-direct {v2}, Lcom/sec/android/app/music/common/richinfo/NetworkData;-><init>()V

    sput-object v2, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    .line 31
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, reader:Ljava/io/Reader;
    :try_start_c
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseXML(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1a

    .line 36
    :try_start_f
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_15

    .line 41
    :goto_12
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    return-object v2

    .line 37
    :catch_15
    move-exception v0

    .line 38
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 35
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1a
    move-exception v2

    .line 36
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 39
    :goto_1e
    throw v2

    .line 37
    :catch_1f
    move-exception v0

    .line 38
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method

.method private static parseStartTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "current"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 207
    const-string v0, "/shazamResponse@timestamp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 208
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->timeStamp:Ljava/lang/String;

    .line 271
    :cond_d
    :goto_d
    return-void

    .line 209
    :cond_e
    const-string v0, "/shazamResponse/requestConfig1/elements/config@key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 210
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 211
    sput v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mRequestConfigTag:I

    goto :goto_d

    .line 212
    :cond_21
    const-string v0, "chart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 213
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mRequestConfigTag:I

    goto :goto_d

    .line 215
    :cond_2d
    const-string v0, "/shazamResponse/requestConfig1/elements/config@value"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 218
    sget v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mRequestConfigTag:I

    packed-switch v0, :pswitch_data_ec

    .line 238
    :goto_3a
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mRequestConfigTag:I

    goto :goto_d

    .line 220
    :pswitch_3e
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestConfig:Ljava/util/HashMap;

    const-string v1, "service"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 228
    :pswitch_48
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestConfig:Ljava/util/HashMap;

    const-string v1, "chart"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 239
    :cond_52
    const-string v0, "/shazamResponse/doRecognition1/requestId@id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 241
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestId:Ljava/lang/String;

    goto :goto_d

    .line 247
    :cond_5f
    const-string v0, "/shazamResponse/error@code"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 248
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-boolean v1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->isError:Z

    .line 249
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->errorCode:Ljava/lang/String;

    goto :goto_d

    .line 251
    :cond_70
    const-string v0, "/shazamResponse/error@message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 252
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->errorMessage:Ljava/lang/String;

    goto :goto_d

    .line 253
    :cond_7d
    const-string v0, "/shazamResponse/requestResult1/tracks/track@id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 254
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;-><init>(Lcom/sec/android/app/music/common/richinfo/NetworkData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    goto/16 :goto_d

    .line 255
    :cond_93
    const-string v0, "/shazamResponse/requestResult1/tracks/track/tartists/tartist@id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 256
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_d

    .line 257
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;-><init>(Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    .line 258
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;->id:Ljava/lang/String;

    goto/16 :goto_d

    .line 260
    :cond_b1
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/track@amgid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 261
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;-><init>(Lcom/sec/android/app/music/common/richinfo/NetworkData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    goto/16 :goto_d

    .line 262
    :cond_c7
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/track@href"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 263
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    if-eqz v0, :cond_d

    .line 264
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->url:Ljava/lang/String;

    goto/16 :goto_d

    .line 266
    :cond_d9
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/track/Album/AlbumSimpleInfo/Artwork@uri"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    if-eqz v0, :cond_d

    .line 268
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->albumArtUrl:Ljava/lang/String;

    goto/16 :goto_d

    .line 218
    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_48
    .end packed-switch
.end method

.method private static parseTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "current"
    .parameter "value"

    .prologue
    .line 278
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 283
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 284
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->isError:Z

    .line 330
    :cond_15
    :goto_15
    return-void

    .line 293
    :cond_16
    const-string v0, "/shazamResponse/error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 294
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->errorText:Ljava/lang/String;

    goto :goto_15

    .line 295
    :cond_23
    const-string v0, "/shazamResponse/requestResult1/tracks/track/ttitle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 296
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_15

    .line 297
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->title:Ljava/lang/String;

    goto :goto_15

    .line 299
    :cond_34
    const-string v0, "/shazamResponse/requestResult1/tracks/track/tartists/tartist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 300
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    if-eqz v0, :cond_15

    .line 301
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mArtist:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;->name:Ljava/lang/String;

    goto :goto_15

    .line 303
    :cond_45
    const-string v0, "/shazamResponse/requestResult1/tracks/track/tcoverurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 304
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_15

    .line 305
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->coverUrl:Ljava/lang/String;

    goto :goto_15

    .line 307
    :cond_56
    const-string v0, "/shazamResponse/requestResult1/tracks/track/talbum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 308
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_15

    .line 309
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->album:Ljava/lang/String;

    goto :goto_15

    .line 311
    :cond_67
    const-string v0, "/shazamResponse/requestResult1/tracks/track/tgenre"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 312
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_15

    .line 313
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->genre:Ljava/lang/String;

    goto :goto_15

    .line 315
    :cond_78
    const-string v0, "/shazamResponse/requestResult1/tracks/track/trecommendations"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 316
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    if-eqz v0, :cond_15

    .line 317
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->recommendation:Ljava/lang/String;

    goto :goto_15

    .line 319
    :cond_89
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/EncryptedData/CipherData/CipherValue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 320
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mNetworkResponseData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->encryptedData:Ljava/lang/String;

    goto :goto_15

    .line 321
    :cond_96
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/track/Album/AlbumSimpleInfo/Title"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 322
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    if-eqz v0, :cond_15

    .line 323
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->trackName:Ljava/lang/String;

    goto/16 :goto_15

    .line 325
    :cond_a8
    const-string v0, "/shazamResponse/requestResults1/tracks/track/findTag/track/Album/AlbumSimpleInfo/Artist/Name"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 326
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    if-eqz v0, :cond_15

    .line 327
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->mFindTag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->artistName:Ljava/lang/String;

    goto/16 :goto_15
.end method

.method private static parseXML(Ljava/io/Reader;)V
    .registers 10
    .parameter "reader"

    .prologue
    const/4 v8, 0x1

    .line 62
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 63
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 64
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 65
    .local v5, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, current:Ljava/lang/StringBuffer;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 70
    .local v2, eventType:I
    :goto_1b
    if-eq v2, v8, :cond_75

    .line 71
    packed-switch v2, :pswitch_data_a2

    .line 125
    :cond_20
    :goto_20
    :pswitch_20
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1b

    .line 81
    :pswitch_25
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-eqz v6, :cond_67

    .line 90
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v4, v6, :cond_20

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 101
    .end local v4           #i:I
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseStartTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_70} :catch_71
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_70} :catch_8b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_70} :catch_9c

    goto :goto_20

    .line 127
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_71
    move-exception v1

    .line 128
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 134
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_75
    :goto_75
    return-void

    .line 105
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_76
    :try_start_76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseEndTag(Ljava/lang/String;)V

    .line 107
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_8a} :catch_71
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8a} :catch_8b
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_8a} :catch_9c

    goto :goto_20

    .line 129
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_8b
    move-exception v1

    .line 130
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    .line 117
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_90
    :try_start_90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_9b} :catch_71
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9b} :catch_8b
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_9b} :catch_9c

    goto :goto_20

    .line 131
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_9c
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_75

    .line 71
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_25
        :pswitch_76
        :pswitch_90
    .end packed-switch
.end method
