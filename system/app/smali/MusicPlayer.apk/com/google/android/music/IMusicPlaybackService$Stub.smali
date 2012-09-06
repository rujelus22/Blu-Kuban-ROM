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
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_44a

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_35

    .line 50
    sget-object v7, Lcom/google/android/music/medialist/SongList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 56
    .local v0, _arg0:Lcom/google/android/music/medialist/SongList;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2e

    move v3, v6

    .line 59
    .local v3, _arg2:Z
    :cond_2e
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/music/IMusicPlaybackService$Stub;->open(Lcom/google/android/music/medialist/SongList;IZ)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 53
    .end local v0           #_arg0:Lcom/google/android/music/medialist/SongList;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    :cond_35
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/medialist/SongList;
    goto :goto_23

    .line 65
    .end local v0           #_arg0:Lcom/google/android/music/medialist/SongList;
    :sswitch_37
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_55

    .line 68
    sget-object v7, Lcom/google/android/music/medialist/SongList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 74
    .restart local v0       #_arg0:Lcom/google/android/music/medialist/SongList;
    :goto_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->openAndQueue(Lcom/google/android/music/medialist/SongList;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 71
    .end local v0           #_arg0:Lcom/google/android/music/medialist/SongList;
    .end local v2           #_arg1:I
    :cond_55
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/medialist/SongList;
    goto :goto_4a

    .line 81
    .end local v0           #_arg0:Lcom/google/android/music/medialist/SongList;
    :sswitch_57
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->clearQueue()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 88
    :sswitch_63
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getQueuePosition()I

    move-result v4

    .line 90
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v4           #_result:I
    :sswitch_73
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setQueuePosition(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    .end local v0           #_arg0:I
    :sswitch_83
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getQueueSize()I

    move-result v4

    .line 107
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v4           #_result:I
    :sswitch_94
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isPlaying()Z

    move-result v4

    .line 115
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v4, :cond_a3

    move v3, v6

    :cond_a3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 121
    .end local v4           #_result:Z
    :sswitch_a8
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->pause()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 128
    :sswitch_b5
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->play()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 135
    :sswitch_c2
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->stop()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 142
    :sswitch_cf
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->prev()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 149
    :sswitch_dc
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->next()V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 156
    :sswitch_e9
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isCurrentSongLoaded()Z

    move-result v4

    .line 158
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v4, :cond_f8

    move v3, v6

    :cond_f8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 164
    .end local v4           #_result:Z
    :sswitch_fd
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 172
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_10e
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 174
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 180
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_11f
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAlbumId()J

    move-result-wide v4

    .line 182
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 188
    .end local v4           #_result:J
    :sswitch_130
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 196
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_141
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getArtistId()J

    move-result-wide v4

    .line 198
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 204
    .end local v4           #_result:J
    :sswitch_152
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 212
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_163
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getSongStoreId()Ljava/lang/String;

    move-result-object v4

    .line 214
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 220
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_174
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    .line 222
    .local v4, _result:Lcom/google/android/music/medialist/SongList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v4, :cond_18a

    .line 224
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {v4, p3, v6}, Lcom/google/android/music/medialist/SongList;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 228
    :cond_18a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 234
    .end local v4           #_result:Lcom/google/android/music/medialist/SongList;
    :sswitch_18f
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    .line 236
    .local v4, _result:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v4, :cond_1a5

    .line 238
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v4, p3, v6}, Lcom/google/android/music/dl/ContentIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 242
    :cond_1a5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 248
    .end local v4           #_result:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_1aa
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->supportsRating()Z

    move-result v4

    .line 250
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_1b9

    move v3, v6

    :cond_1b9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v4           #_result:Z
    :sswitch_1be
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getRating()I

    move-result v4

    .line 258
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 264
    .end local v4           #_result:I
    :sswitch_1cf
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setRating(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 273
    .end local v0           #_arg0:I
    :sswitch_1e0
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->position()J

    move-result-wide v4

    .line 275
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 281
    .end local v4           #_result:J
    :sswitch_1f1
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->duration()J

    move-result-wide v4

    .line 283
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 289
    .end local v4           #_result:J
    :sswitch_202
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 292
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/IMusicPlaybackService$Stub;->seek(J)J

    move-result-wide v4

    .line 293
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 299
    .end local v0           #_arg0:J
    .end local v4           #_result:J
    :sswitch_217
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setShuffleMode(I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 308
    .end local v0           #_arg0:I
    :sswitch_228
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getShuffleMode()I

    move-result v4

    .line 310
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 316
    .end local v4           #_result:I
    :sswitch_239
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setRepeatMode(I)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 325
    .end local v0           #_arg0:I
    :sswitch_24a
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getRepeatMode()I

    move-result v4

    .line 327
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 333
    .end local v4           #_result:I
    :sswitch_25b
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isPreparing()Z

    move-result v4

    .line 335
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v4, :cond_26a

    move v3, v6

    :cond_26a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 341
    .end local v4           #_result:Z
    :sswitch_26f
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isStreaming()Z

    move-result v4

    .line 343
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v4, :cond_27e

    move v3, v6

    :cond_27e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 349
    .end local v4           #_result:Z
    :sswitch_283
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isInErrorState()Z

    move-result v4

    .line 351
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v4, :cond_292

    move v3, v6

    :cond_292
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 357
    .end local v4           #_result:Z
    :sswitch_297
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getErrorType()I

    move-result v4

    .line 359
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 365
    .end local v4           #_result:I
    :sswitch_2a8
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isInFatalErrorState()Z

    move-result v4

    .line 367
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v4, :cond_2b7

    move v3, v6

    :cond_2b7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 373
    .end local v4           #_result:Z
    :sswitch_2bc
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->hasValidPlaylist()Z

    move-result v4

    .line 375
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v4, :cond_2cb

    move v3, v6

    :cond_2cb
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 381
    .end local v4           #_result:Z
    :sswitch_2d0
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isPlaylistLoading()Z

    move-result v4

    .line 383
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v4, :cond_2df

    move v3, v6

    :cond_2df
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 389
    .end local v4           #_result:Z
    :sswitch_2e4
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->hasLocal()Z

    move-result v4

    .line 391
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v4, :cond_2f3

    move v3, v6

    :cond_2f3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 397
    .end local v4           #_result:Z
    :sswitch_2f8
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->hasRemote()Z

    move-result v4

    .line 399
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v4, :cond_307

    move v3, v6

    :cond_307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 405
    .end local v4           #_result:Z
    :sswitch_30c
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_336

    .line 408
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 414
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_31f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v2

    .line 415
    .local v2, _arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v4

    .line 416
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v4, :cond_331

    move v3, v6

    :cond_331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 411
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    .end local v4           #_result:Z
    :cond_336
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_31f

    .line 422
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_338
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v0

    .line 425
    .local v0, _arg0:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 431
    .end local v0           #_arg0:Lcom/google/android/music/dl/IDownloadProgressListener;
    :sswitch_34d
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_361

    move v0, v6

    .line 434
    .local v0, _arg0:Z
    :goto_359
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->setUIVisible(Z)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_361
    move v0, v3

    .line 433
    goto :goto_359

    .line 440
    :sswitch_363
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getPreviewPlayType()I

    move-result v4

    .line 442
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 448
    .end local v4           #_result:I
    :sswitch_374
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAudioSessionId()I

    move-result v4

    .line 450
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 456
    .end local v4           #_result:I
    :sswitch_385
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getDebugInfo()Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 464
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_396
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->switchToLocalDevicePlayback()V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 471
    :sswitch_3a3
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 475
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->switchToAtHomeDevicePlayback([BLjava/lang/String;)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 482
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_3b8
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isLocalDevicePlayback()Z

    move-result v4

    .line 484
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v4, :cond_3c7

    move v3, v6

    :cond_3c7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 490
    .end local v4           #_result:Z
    :sswitch_3cc
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isAtHomeDevicePlayback()Z

    move-result v4

    .line 492
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v4, :cond_3db

    move v3, v6

    :cond_3db
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 498
    .end local v4           #_result:Z
    :sswitch_3e0
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAtHomeGroupId()Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 506
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3f1
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->configureAtHomeTransmitter(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 515
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_402
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->isAlbumArtInService()Z

    move-result v4

    .line 517
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v4, :cond_411

    move v3, v6

    :cond_411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 523
    .end local v4           #_result:Z
    :sswitch_416
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 526
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getAlbumArtUrl(J)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 533
    .end local v0           #_arg0:J
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_42b
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->getLastUserInteractionTime()J

    move-result-wide v4

    .line 535
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 541
    .end local v4           #_result:J
    :sswitch_43c
    const-string v7, "com.google.android.music.IMusicPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;->disableGroupPlay()V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_44a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_37
        0x3 -> :sswitch_57
        0x4 -> :sswitch_63
        0x5 -> :sswitch_73
        0x6 -> :sswitch_83
        0x7 -> :sswitch_94
        0x8 -> :sswitch_a8
        0x9 -> :sswitch_b5
        0xa -> :sswitch_c2
        0xb -> :sswitch_cf
        0xc -> :sswitch_dc
        0xd -> :sswitch_e9
        0xe -> :sswitch_fd
        0xf -> :sswitch_10e
        0x10 -> :sswitch_11f
        0x11 -> :sswitch_130
        0x12 -> :sswitch_141
        0x13 -> :sswitch_152
        0x14 -> :sswitch_163
        0x15 -> :sswitch_174
        0x16 -> :sswitch_18f
        0x17 -> :sswitch_1aa
        0x18 -> :sswitch_1be
        0x19 -> :sswitch_1cf
        0x1a -> :sswitch_1e0
        0x1b -> :sswitch_1f1
        0x1c -> :sswitch_202
        0x1d -> :sswitch_217
        0x1e -> :sswitch_228
        0x1f -> :sswitch_239
        0x20 -> :sswitch_24a
        0x21 -> :sswitch_25b
        0x22 -> :sswitch_26f
        0x23 -> :sswitch_283
        0x24 -> :sswitch_297
        0x25 -> :sswitch_2a8
        0x26 -> :sswitch_2bc
        0x27 -> :sswitch_2d0
        0x28 -> :sswitch_2e4
        0x29 -> :sswitch_2f8
        0x2a -> :sswitch_30c
        0x2b -> :sswitch_338
        0x2c -> :sswitch_34d
        0x2d -> :sswitch_363
        0x2e -> :sswitch_374
        0x2f -> :sswitch_385
        0x30 -> :sswitch_396
        0x31 -> :sswitch_3a3
        0x32 -> :sswitch_3b8
        0x33 -> :sswitch_3cc
        0x34 -> :sswitch_3e0
        0x35 -> :sswitch_3f1
        0x36 -> :sswitch_402
        0x37 -> :sswitch_416
        0x38 -> :sswitch_42b
        0x39 -> :sswitch_43c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
