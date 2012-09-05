.class public abstract Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMoviePlaybackService.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

.field static final TRANSACTION_checkIsDRM:I = 0x11

.field static final TRANSACTION_duration:I = 0x5

.field static final TRANSACTION_getBufferPercentage:I = 0x1

.field static final TRANSACTION_getDisplayName:I = 0x2

.field static final TRANSACTION_getFullPath:I = 0x3

.field static final TRANSACTION_getVideoHeight:I = 0x16

.field static final TRANSACTION_getVideoWidth:I = 0x15

.field static final TRANSACTION_isInitialized:I = 0x9

.field static final TRANSACTION_isPlaying:I = 0x8

.field static final TRANSACTION_pause:I = 0xb

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_position:I = 0x4

.field static final TRANSACTION_reset:I = 0xe

.field static final TRANSACTION_resume:I = 0x14

.field static final TRANSACTION_seek:I = 0x6

.field static final TRANSACTION_seekTo:I = 0x7

.field static final TRANSACTION_setDisplay:I = 0x12

.field static final TRANSACTION_setInternalEq:I = 0xf

.field static final TRANSACTION_setWakeMode:I = 0xc

.field static final TRANSACTION_startPlay:I = 0x10

.field static final TRANSACTION_stop:I = 0xa

.field static final TRANSACTION_suspend:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
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
    const-string v1, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_18a

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getBufferPercentage()I

    move-result v3

    .line 49
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v3           #_result:I
    :sswitch_20
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 63
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_30
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getFullPath()Ljava/lang/String;

    move-result-object v3

    .line 65
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 71
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_40
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->position()J

    move-result-wide v3

    .line 73
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 79
    .end local v3           #_result:J
    :sswitch_50
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 81
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 87
    .end local v3           #_result:J
    :sswitch_60
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 90
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 91
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 97
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_74
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->seekTo(II)J

    move-result-wide v3

    .line 103
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 109
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:J
    :sswitch_8d
    const-string v7, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 111
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v3, :cond_9c

    move v5, v6

    :cond_9c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 117
    .end local v3           #_result:Z
    :sswitch_a1
    const-string v7, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->isInitialized()Z

    move-result v3

    .line 119
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v3, :cond_b0

    move v5, v6

    :cond_b0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 125
    .end local v3           #_result:Z
    :sswitch_b5
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->stop()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 132
    :sswitch_c2
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->pause()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 139
    :sswitch_cf
    const-string v7, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e3

    move v0, v6

    .line 142
    .local v0, _arg0:Z
    :goto_db
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->setWakeMode(Z)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_e3
    move v0, v5

    .line 141
    goto :goto_db

    .line 148
    :sswitch_e5
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->play()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 155
    :sswitch_f2
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->reset()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 162
    :sswitch_ff
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->setInternalEq(I)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 171
    .end local v0           #_arg0:I
    :sswitch_110
    const-string v7, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->startPlay(Ljava/lang/String;)Z

    move-result v3

    .line 175
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v3, :cond_123

    move v5, v6

    :cond_123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 181
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_128
    const-string v7, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->checkIsDRM(Ljava/lang/String;)Z

    move-result v3

    .line 185
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v3, :cond_13b

    move v5, v6

    :cond_13b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 191
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_140
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->setDisplay()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 198
    :sswitch_14d
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->suspend()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 205
    :sswitch_15a
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->resume()V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 212
    :sswitch_167
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getVideoWidth()I

    move-result v3

    .line 214
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 220
    .end local v3           #_result:I
    :sswitch_178
    const-string v5, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getVideoHeight()I

    move-result v3

    .line 222
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_18a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_50
        0x6 -> :sswitch_60
        0x7 -> :sswitch_74
        0x8 -> :sswitch_8d
        0x9 -> :sswitch_a1
        0xa -> :sswitch_b5
        0xb -> :sswitch_c2
        0xc -> :sswitch_cf
        0xd -> :sswitch_e5
        0xe -> :sswitch_f2
        0xf -> :sswitch_ff
        0x10 -> :sswitch_110
        0x11 -> :sswitch_128
        0x12 -> :sswitch_140
        0x13 -> :sswitch_14d
        0x14 -> :sswitch_15a
        0x15 -> :sswitch_167
        0x16 -> :sswitch_178
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
