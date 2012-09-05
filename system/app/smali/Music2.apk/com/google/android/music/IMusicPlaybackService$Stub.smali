.class public abstract Lcom/google/android/music/IMusicPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/IMusicPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/IMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/IMusicPlaybackService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.google.android.music.IMusicPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/music/IMusicPlaybackService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/music/IMusicPlaybackService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/IMusicPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_328

    .line 416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    .line 50
    sget-object v5, Lcom/google/android/music/medialist/SongList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 56
    .local v0, _arg0:Lcom/google/android/music/medialist/SongList;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 53
    .end local v0           #_arg0:Lcom/google/android/music/medialist/SongList;
    .end local v2           #_arg1:I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/medialist/SongList;
    goto :goto_23

    .line 63
    .end local v0           #_arg0:Lcom/google/android/music/medialist/SongList;
    :sswitch_30
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getNextSongs(I)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    .line 67
    .local v3, _result:[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_9

    .line 73
    .end local v0           #_arg0:I
    .end local v3           #_result:[Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_44
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 75
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v3           #_result:I
    :sswitch_54
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setQueuePosition(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 90
    .end local v0           #_arg0:I
    :sswitch_64
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 92
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v3, :cond_73

    move v5, v6

    :cond_73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 98
    .end local v3           #_result:Z
    :sswitch_77
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->pause()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    :sswitch_83
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->play()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 112
    :sswitch_90
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->stop()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 119
    :sswitch_9d
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->prev()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 126
    :sswitch_aa
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->next()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 133
    :sswitch_b7
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isCurrentSongLoaded()Z

    move-result v3

    .line 135
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v3, :cond_c6

    move v5, v6

    :cond_c6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v3           #_result:Z
    :sswitch_cb
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 149
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_dc
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 157
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_ed
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 159
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 165
    .end local v3           #_result:J
    :sswitch_fe
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 173
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10f
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 175
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 181
    .end local v3           #_result:J
    :sswitch_120
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 189
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_131
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getSongStoreId()Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 197
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_142
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v3

    .line 199
    .local v3, _result:Lcom/google/android/music/medialist/SongList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v3, :cond_158

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v3, p3, v6}, Lcom/google/android/music/medialist/SongList;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 205
    :cond_158
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 211
    .end local v3           #_result:Lcom/google/android/music/medialist/SongList;
    :sswitch_15d
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    .line 213
    .local v3, _result:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v3, :cond_173

    .line 215
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v3, p3, v6}, Lcom/google/android/music/dl/ContentIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 219
    :cond_173
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 225
    .end local v3           #_result:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_178
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getRating()I

    move-result v3

    .line 227
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 233
    .end local v3           #_result:I
    :sswitch_189
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setRating(I)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 242
    .end local v0           #_arg0:I
    :sswitch_19a
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 244
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 250
    .end local v3           #_result:J
    :sswitch_1ab
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 252
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 258
    .end local v3           #_result:J
    :sswitch_1bc
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 261
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/IMusicPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 262
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 268
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_1d1
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setShuffleMode(I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 277
    .end local v0           #_arg0:I
    :sswitch_1e2
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 279
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 285
    .end local v3           #_result:I
    :sswitch_1f3
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setRepeatMode(I)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 294
    .end local v0           #_arg0:I
    :sswitch_204
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 296
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 302
    .end local v3           #_result:I
    :sswitch_215
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isPreparing()Z

    move-result v3

    .line 304
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v3, :cond_224

    move v5, v6

    :cond_224
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 310
    .end local v3           #_result:Z
    :sswitch_229
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isStreaming()Z

    move-result v3

    .line 312
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v3, :cond_238

    move v5, v6

    :cond_238
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 318
    .end local v3           #_result:Z
    :sswitch_23d
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isInErrorState()Z

    move-result v3

    .line 320
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v3, :cond_24c

    move v5, v6

    :cond_24c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 326
    .end local v3           #_result:Z
    :sswitch_251
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getErrorType()I

    move-result v3

    .line 328
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 334
    .end local v3           #_result:I
    :sswitch_262
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->hasValidPlaylist()Z

    move-result v3

    .line 336
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v3, :cond_271

    move v5, v6

    :cond_271
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 342
    .end local v3           #_result:Z
    :sswitch_276
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->hasLocal()Z

    move-result v3

    .line 344
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v3, :cond_285

    move v5, v6

    :cond_285
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 350
    .end local v3           #_result:Z
    :sswitch_28a
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->hasRemote()Z

    move-result v3

    .line 352
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v3, :cond_299

    move v5, v6

    :cond_299
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 358
    .end local v3           #_result:Z
    :sswitch_29e
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2c8

    .line 361
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 367
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v2

    .line 368
    .local v2, _arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v3

    .line 369
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v3, :cond_2c3

    move v5, v6

    :cond_2c3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 364
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    .end local v3           #_result:Z
    :cond_2c8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_2b1

    .line 375
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_2ca
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v0

    .line 378
    .local v0, _arg0:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 384
    .end local v0           #_arg0:Lcom/google/android/music/dl/IDownloadProgressListener;
    :sswitch_2df
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f3

    move v0, v6

    .line 387
    .local v0, _arg0:Z
    :goto_2eb
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setUIVisible(Z)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_2f3
    move v0, v5

    .line 386
    goto :goto_2eb

    .line 393
    :sswitch_2f5
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getPreviewPlayType()I

    move-result v3

    .line 395
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 401
    .end local v3           #_result:I
    :sswitch_306
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAudioSessionId()I

    move-result v3

    .line 403
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 409
    .end local v3           #_result:I
    :sswitch_317
    const-string v5, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getDebugInfo()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_328
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x3 -> :sswitch_44
        0x4 -> :sswitch_54
        0x5 -> :sswitch_64
        0x6 -> :sswitch_77
        0x7 -> :sswitch_83
        0x8 -> :sswitch_90
        0x9 -> :sswitch_9d
        0xa -> :sswitch_aa
        0xb -> :sswitch_b7
        0xc -> :sswitch_cb
        0xd -> :sswitch_dc
        0xe -> :sswitch_ed
        0xf -> :sswitch_fe
        0x10 -> :sswitch_10f
        0x11 -> :sswitch_120
        0x12 -> :sswitch_131
        0x13 -> :sswitch_142
        0x14 -> :sswitch_15d
        0x15 -> :sswitch_178
        0x16 -> :sswitch_189
        0x17 -> :sswitch_19a
        0x18 -> :sswitch_1ab
        0x19 -> :sswitch_1bc
        0x1a -> :sswitch_1d1
        0x1b -> :sswitch_1e2
        0x1c -> :sswitch_1f3
        0x1d -> :sswitch_204
        0x1e -> :sswitch_215
        0x1f -> :sswitch_229
        0x20 -> :sswitch_23d
        0x21 -> :sswitch_251
        0x22 -> :sswitch_262
        0x23 -> :sswitch_276
        0x24 -> :sswitch_28a
        0x25 -> :sswitch_29e
        0x26 -> :sswitch_2ca
        0x27 -> :sswitch_2df
        0x28 -> :sswitch_2f5
        0x29 -> :sswitch_306
        0x2a -> :sswitch_317
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
