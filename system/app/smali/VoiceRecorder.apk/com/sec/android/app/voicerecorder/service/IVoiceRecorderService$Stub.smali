.class public abstract Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;
.super Landroid/os/Binder;
.source "IVoiceRecorderService.java"

# interfaces
.implements Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
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
    const-string v1, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1c6

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 42
    :sswitch_a
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    move v1, v8

    .line 51
    .local v1, _arg0:Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 53
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 55
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    move v5, v8

    .local v5, _arg3:Z
    :goto_2b
    move-object v0, p0

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->initRecording(ZJIZ)Z

    move-result v6

    .line 57
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v6, :cond_36

    move v9, v8

    :cond_36
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:J
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Z
    .end local v6           #_result:Z
    :cond_3a
    move v1, v9

    .line 49
    goto :goto_1c

    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:J
    .restart local v4       #_arg2:I
    :cond_3c
    move v5, v9

    .line 55
    goto :goto_2b

    .line 63
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:J
    .end local v4           #_arg2:I
    :sswitch_3e
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->startRecording()Z

    move-result v6

    .line 65
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v6, :cond_4d

    move v9, v8

    :cond_4d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v6           #_result:Z
    :sswitch_51
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->saveRecording()Z

    move-result v6

    .line 73
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v6, :cond_60

    move v9, v8

    :cond_60
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v6           #_result:Z
    :sswitch_64
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->pauseRecording()Z

    move-result v6

    .line 81
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v6, :cond_73

    move v9, v8

    :cond_73
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v6           #_result:Z
    :sswitch_77
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->resumeRecording()Z

    move-result v6

    .line 89
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v6, :cond_86

    move v9, v8

    :cond_86
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v6           #_result:Z
    :sswitch_8a
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->resetRecording()Z

    move-result v6

    .line 97
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v6, :cond_99

    move v9, v8

    :cond_99
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 103
    .end local v6           #_result:Z
    :sswitch_9e
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->cancelRecording()Z

    move-result v6

    .line 105
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v6, :cond_ad

    move v9, v8

    :cond_ad
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 111
    .end local v6           #_result:Z
    :sswitch_b2
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getMediaRecorderState()I

    move-result v6

    .line 113
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 119
    .end local v6           #_result:I
    :sswitch_c3
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getRecDuration()J

    move-result-wide v6

    .line 121
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 127
    .end local v6           #_result:J
    :sswitch_d4
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getMaxAmplitude()I

    move-result v6

    .line 129
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 135
    .end local v6           #_result:I
    :sswitch_e5
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getFileSize()J

    move-result-wide v6

    .line 137
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 143
    .end local v6           #_result:J
    :sswitch_f6
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 151
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_107
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 153
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 159
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_118
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->getLastSavedFileUriString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 167
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_129
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->registerNotification()Z

    move-result v6

    .line 169
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v6, :cond_138

    move v9, v8

    :cond_138
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v6           #_result:Z
    :sswitch_13d
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->hideNotification()Z

    move-result v6

    .line 177
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v6, :cond_14c

    move v9, v8

    :cond_14c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 183
    .end local v6           #_result:Z
    :sswitch_151
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    move-result-object v1

    .line 186
    .local v1, _arg0:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->registerCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 192
    .end local v1           #_arg0:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;
    :sswitch_166
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    move-result-object v1

    .line 195
    .restart local v1       #_arg0:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->unregisterCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 201
    .end local v1           #_arg0:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;
    :sswitch_17b
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->onService(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 211
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_190
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->isPlaying()Z

    move-result v6

    .line 213
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v6, :cond_19f

    move v9, v8

    :cond_19f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 219
    .end local v6           #_result:Z
    :sswitch_1a4
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->isPaused()Z

    move-result v6

    .line 221
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v6, :cond_1b3

    move v9, v8

    :cond_1b3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 227
    .end local v6           #_result:Z
    :sswitch_1b8
    const-string v0, "com.sec.android.app.voicerecorder.service.IVoiceRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->stopPlay()V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_1c6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_51
        0x4 -> :sswitch_64
        0x5 -> :sswitch_77
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_b2
        0x9 -> :sswitch_c3
        0xa -> :sswitch_d4
        0xb -> :sswitch_e5
        0xc -> :sswitch_f6
        0xd -> :sswitch_107
        0xe -> :sswitch_118
        0xf -> :sswitch_129
        0x10 -> :sswitch_13d
        0x11 -> :sswitch_151
        0x12 -> :sswitch_166
        0x13 -> :sswitch_17b
        0x14 -> :sswitch_190
        0x15 -> :sswitch_1a4
        0x16 -> :sswitch_1b8
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
