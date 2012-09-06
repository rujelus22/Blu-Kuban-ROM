.class public abstract Lcom/google/android/music/store/IStoreService$Stub;
.super Landroid/os/Binder;
.source "IStoreService.java"

# interfaces
.implements Lcom/google/android/music/store/IStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/IStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/IStoreService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.music.store.IStoreService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;
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
    const-string v1, "com.google.android.music.store.IStoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/store/IStoreService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/music/store/IStoreService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/music/store/IStoreService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/store/IStoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1f0

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v8, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_33

    .line 50
    sget-object v8, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 55
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->getPreferredMusicId(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    .line 56
    .local v4, _result:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_35

    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v4, p3, v6}, Lcom/google/android/music/dl/ContentIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 53
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #_result:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_33
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_23

    .line 62
    .restart local v4       #_result:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_35
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #_result:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_39
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_61

    .line 71
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 77
    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 79
    .local v2, _arg1:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/music/store/IStoreService$Stub;->getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 74
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_arg1:[I
    .end local v3           #_arg2:[Ljava/lang/String;
    :cond_61
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_4c

    .line 88
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_63
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 91
    .local v0, _arg0:[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    .line 92
    .local v4, _result:[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_9

    .line 98
    .end local v0           #_arg0:[Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #_result:[Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_7b
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_96

    .line 101
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 106
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_8e
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 104
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_96
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_8e

    .line 112
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_98
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->getAccountByHash(I)[Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 122
    .end local v0           #_arg0:I
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_ad
    const-string v8, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d1

    .line 125
    sget-object v8, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 130
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_c0
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v4

    .line 131
    .local v4, _result:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_d3

    .line 133
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v4, p3, v6}, Lcom/google/android/music/dl/DownloadOrder;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 128
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #_result:Lcom/google/android/music/dl/DownloadOrder;
    :cond_d1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_c0

    .line 137
    .restart local v4       #_result:Lcom/google/android/music/dl/DownloadOrder;
    :cond_d3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 143
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #_result:Lcom/google/android/music/dl/DownloadOrder;
    :sswitch_d8
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 146
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/IStoreService$Stub;->getSizeToDownloadAlbum(J)J

    move-result-wide v4

    .line 147
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 153
    .end local v0           #_arg0:J
    .end local v4           #_result:J
    :sswitch_ed
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 156
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/IStoreService$Stub;->getSizeToDownloadPlaylist(J)J

    move-result-wide v4

    .line 157
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 163
    .end local v0           #_arg0:J
    .end local v4           #_result:J
    :sswitch_102
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 166
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/IStoreService$Stub;->getArtistIdsForAlbum(J)[J

    move-result-object v4

    .line 167
    .local v4, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_9

    .line 173
    .end local v0           #_arg0:J
    .end local v4           #_result:[J
    :sswitch_117
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 176
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/IStoreService$Stub;->getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Ljava/util/Map;

    move-result-object v4

    .line 177
    .local v4, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 183
    .end local v0           #_arg0:J
    .end local v4           #_result:Ljava/util/Map;
    :sswitch_12c
    const-string v8, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 187
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14b

    move v2, v6

    .line 188
    .local v2, _arg1:Z
    :goto_13c
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/store/IStoreService$Stub;->isAlbumSelectedAsKeepOn(JZ)Z

    move-result v4

    .line 189
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v4, :cond_146

    move v7, v6

    :cond_146
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_14b
    move v2, v7

    .line 187
    goto :goto_13c

    .line 195
    .end local v0           #_arg0:J
    :sswitch_14d
    const-string v8, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 198
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/IStoreService$Stub;->isArtistSelectedAsKeepOn(J)Z

    move-result v4

    .line 199
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v4, :cond_160

    move v7, v6

    :cond_160
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 205
    .end local v0           #_arg0:J
    .end local v4           #_result:Z
    :sswitch_165
    const-string v8, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 208
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/IStoreService$Stub;->isPlaylistSelectedAsKeepOn(J)Z

    move-result v4

    .line 209
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v4, :cond_178

    move v7, v6

    :cond_178
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 215
    .end local v0           #_arg0:J
    .end local v4           #_result:Z
    :sswitch_17d
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 219
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/store/IStoreService$Stub;->setRingtone(JLjava/lang/String;)I

    move-result v4

    .line 221
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 227
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_196
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b5

    .line 230
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 235
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_1a9
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->getRating(Lcom/google/android/music/dl/ContentIdentifier;)I

    move-result v4

    .line 236
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 233
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #_result:I
    :cond_1b5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_1a9

    .line 242
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_1b7
    const-string v8, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d9

    .line 245
    sget-object v8, Lcom/google/android/music/download/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/DownloadRequest;

    .line 250
    .local v0, _arg0:Lcom/google/android/music/download/DownloadRequest;
    :goto_1ca
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->requiresDownload(Lcom/google/android/music/download/DownloadRequest;)Z

    move-result v4

    .line 251
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v4, :cond_1d4

    move v7, v6

    :cond_1d4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 248
    .end local v0           #_arg0:Lcom/google/android/music/download/DownloadRequest;
    .end local v4           #_result:Z
    :cond_1d9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/download/DownloadRequest;
    goto :goto_1ca

    .line 257
    .end local v0           #_arg0:Lcom/google/android/music/download/DownloadRequest;
    :sswitch_1db
    const-string v7, "com.google.android.music.store.IStoreService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/IStoreService$Stub;->getNextKeeponToDownload(I)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    .line 261
    .local v4, _result:[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1f0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_39
        0x3 -> :sswitch_63
        0x4 -> :sswitch_7b
        0x5 -> :sswitch_98
        0x6 -> :sswitch_ad
        0x7 -> :sswitch_d8
        0x8 -> :sswitch_ed
        0x9 -> :sswitch_102
        0xa -> :sswitch_117
        0xb -> :sswitch_12c
        0xc -> :sswitch_14d
        0xd -> :sswitch_165
        0xe -> :sswitch_17d
        0xf -> :sswitch_196
        0x10 -> :sswitch_1b7
        0x11 -> :sswitch_1db
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
