.class public abstract Lcom/sec/android/app/music/ICorePlayerService$Stub;
.super Landroid/os/Binder;
.source "ICorePlayerService.java"

# interfaces
.implements Lcom/sec/android/app/music/ICorePlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/ICorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/ICorePlayerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/music/ICorePlayerService;
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
    const-string v1, "com.sec.android.app.music.ICorePlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/app/music/ICorePlayerService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/app/music/ICorePlayerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_446

    .line 568
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 60
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->open([JI)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 67
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_34
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->reorderQueueItem([JI)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_48
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setListFrom(ILjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 89
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_5c
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getTabFrom()I

    move-result v3

    .line 91
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 97
    .end local v3           #_result:I
    :sswitch_6c
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 105
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7c
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getQueuePosition()I

    move-result v3

    .line 107
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v3           #_result:I
    :sswitch_8d
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->isPlaying()Z

    move-result v3

    .line 115
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_9c

    move v5, v6

    :cond_9c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 121
    .end local v3           #_result:Z
    :sswitch_a1
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->isPausedByTransientLossOfFocus()Z

    move-result v3

    .line 123
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v3, :cond_b0

    move v5, v6

    :cond_b0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 129
    .end local v3           #_result:Z
    :sswitch_b5
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->stop()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 136
    :sswitch_c2
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->pause()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 143
    :sswitch_cf
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->play()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 150
    :sswitch_dc
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->prev()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 157
    :sswitch_e9
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->next()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 164
    :sswitch_f6
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->duration()J

    move-result-wide v3

    .line 166
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 172
    .end local v3           #_result:J
    :sswitch_107
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->position()J

    move-result-wide v3

    .line 174
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 180
    .end local v3           #_result:J
    :sswitch_118
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 183
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->seek(J)J

    move-result-wide v3

    .line 184
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 190
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_12d
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 198
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_13e
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 200
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 206
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_14f
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 208
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 214
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_160
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 218
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->enqueue([JI)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 225
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_175
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getQueue()[J

    move-result-object v3

    .line 227
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_9

    .line 233
    .end local v3           #_result:[J
    :sswitch_186
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->moveQueueItem(II)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 244
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_19b
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setQueuePosition(I)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 253
    .end local v0           #_arg0:I
    :sswitch_1ac
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 261
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1bd
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getAudioId()J

    move-result-wide v3

    .line 263
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 269
    .end local v3           #_result:J
    :sswitch_1ce
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setShuffleMode(I)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 278
    .end local v0           #_arg0:I
    :sswitch_1df
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getShuffleMode()I

    move-result v3

    .line 280
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 286
    .end local v3           #_result:I
    :sswitch_1f0
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->removeTracks(II)I

    move-result v3

    .line 292
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 298
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:I
    :sswitch_209
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 301
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->removeTracksSelectedList([I)I

    move-result v3

    .line 302
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 308
    .end local v0           #_arg0:[I
    .end local v3           #_result:I
    :sswitch_21e
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 311
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->removeTrack(J)I

    move-result v3

    .line 312
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 318
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_233
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setRepeatMode(I)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 327
    .end local v0           #_arg0:I
    :sswitch_244
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getRepeatMode()I

    move-result v3

    .line 329
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 335
    .end local v3           #_result:I
    :sswitch_255
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 337
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 343
    .end local v3           #_result:I
    :sswitch_266
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getAudioSessionId()I

    move-result v3

    .line 345
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 351
    .end local v3           #_result:I
    :sswitch_277
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 354
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->playSeek(J)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 360
    .end local v0           #_arg0:J
    :sswitch_288
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_29c

    move v0, v6

    .line 363
    .local v0, _arg0:Z
    :goto_294
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->openCurrent(Z)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_29c
    move v0, v5

    .line 362
    goto :goto_294

    .line 369
    :sswitch_29e
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getCurrent_ID()J

    move-result-wide v3

    .line 371
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 377
    .end local v3           #_result:J
    :sswitch_2af
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 385
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2c0
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    .line 387
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 393
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2d1
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getIndexOfPlayList()I

    move-result v3

    .line 395
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 401
    .end local v3           #_result:I
    :sswitch_2e2
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getCurrentMediaListType()I

    move-result v3

    .line 403
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 409
    .end local v3           #_result:I
    :sswitch_2f3
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setR2VSMode()V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 416
    :sswitch_300
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 420
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 421
    .local v2, _arg1:[I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setR2VSUserEQ(I[I)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 427
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[I
    :sswitch_315
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getTotalMediaCount()I

    move-result v3

    .line 429
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 435
    .end local v3           #_result:I
    :sswitch_326
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getItemCountFromDB()I

    move-result v3

    .line 437
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 443
    .end local v3           #_result:I
    :sswitch_337
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setPlayIteratorWithUri(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 452
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_348
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_35c

    move v0, v6

    .line 455
    .local v0, _arg0:Z
    :goto_354
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->prepareWithLastPlayedFile(Z)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_35c
    move v0, v5

    .line 454
    goto :goto_354

    .line 461
    :sswitch_35e
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 464
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getRealEQdata([I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 470
    .end local v0           #_arg0:[I
    :sswitch_36f
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->offRealEQdata()V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 477
    :sswitch_37c
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->isStop()Z

    move-result v3

    .line 479
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v3, :cond_38b

    move v5, v6

    :cond_38b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 485
    .end local v3           #_result:Z
    :sswitch_390
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->isInitialized()Z

    move-result v3

    .line 487
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v3, :cond_39f

    move v5, v6

    :cond_39f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 493
    .end local v3           #_result:Z
    :sswitch_3a4
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->showNotificationInfo()V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 500
    :sswitch_3b1
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->hideNotificationInfo()V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 507
    :sswitch_3be
    const-string v5, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->initIndex()V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 514
    :sswitch_3cb
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getPrev()Landroid/net/Uri;

    move-result-object v3

    .line 516
    .local v3, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v3, :cond_3e1

    .line 518
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 522
    :cond_3e1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 528
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_3e6
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_403

    move v0, v6

    .line 531
    .local v0, _arg0:Z
    :goto_3f2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->getNext(Z)Landroid/net/Uri;

    move-result-object v3

    .line 532
    .restart local v3       #_result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v3, :cond_405

    .line 534
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v3           #_result:Landroid/net/Uri;
    :cond_403
    move v0, v5

    .line 530
    goto :goto_3f2

    .line 538
    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Landroid/net/Uri;
    :cond_405
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 544
    .end local v0           #_arg0:Z
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_40a
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_42c

    .line 547
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 553
    .local v0, _arg0:Landroid/net/Uri;
    :goto_41d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_42e

    move v2, v6

    .line 554
    .local v2, _arg1:Z
    :goto_424
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->playIt(Landroid/net/Uri;Z)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 550
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v2           #_arg1:Z
    :cond_42c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_41d

    :cond_42e
    move v2, v5

    .line 553
    goto :goto_424

    .line 560
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_430
    const-string v7, "com.sec.android.app.music.ICorePlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_444

    move v0, v6

    .line 563
    .local v0, _arg0:Z
    :goto_43c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->setUlpBypass(Z)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_444
    move v0, v5

    .line 562
    goto :goto_43c

    .line 38
    :sswitch_data_446
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_34
        0x4 -> :sswitch_48
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_7c
        0x8 -> :sswitch_8d
        0x9 -> :sswitch_a1
        0xa -> :sswitch_b5
        0xb -> :sswitch_c2
        0xc -> :sswitch_cf
        0xd -> :sswitch_dc
        0xe -> :sswitch_e9
        0xf -> :sswitch_f6
        0x10 -> :sswitch_107
        0x11 -> :sswitch_118
        0x12 -> :sswitch_12d
        0x13 -> :sswitch_13e
        0x14 -> :sswitch_14f
        0x15 -> :sswitch_160
        0x16 -> :sswitch_175
        0x17 -> :sswitch_186
        0x18 -> :sswitch_19b
        0x19 -> :sswitch_1ac
        0x1a -> :sswitch_1bd
        0x1b -> :sswitch_1ce
        0x1c -> :sswitch_1df
        0x1d -> :sswitch_1f0
        0x1e -> :sswitch_209
        0x1f -> :sswitch_21e
        0x20 -> :sswitch_233
        0x21 -> :sswitch_244
        0x22 -> :sswitch_255
        0x23 -> :sswitch_266
        0x24 -> :sswitch_277
        0x25 -> :sswitch_288
        0x26 -> :sswitch_29e
        0x27 -> :sswitch_2af
        0x28 -> :sswitch_2c0
        0x29 -> :sswitch_2d1
        0x2a -> :sswitch_2e2
        0x2b -> :sswitch_2f3
        0x2c -> :sswitch_300
        0x2d -> :sswitch_315
        0x2e -> :sswitch_326
        0x2f -> :sswitch_337
        0x30 -> :sswitch_348
        0x31 -> :sswitch_35e
        0x32 -> :sswitch_36f
        0x33 -> :sswitch_37c
        0x34 -> :sswitch_390
        0x35 -> :sswitch_3a4
        0x36 -> :sswitch_3b1
        0x37 -> :sswitch_3be
        0x38 -> :sswitch_3cb
        0x39 -> :sswitch_3e6
        0x3a -> :sswitch_40a
        0x3b -> :sswitch_430
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
