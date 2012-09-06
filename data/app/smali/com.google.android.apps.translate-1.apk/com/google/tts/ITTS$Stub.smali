.class public abstract Lcom/google/tts/ITTS$Stub;
.super Landroid/os/Binder;
.source "ITTS.java"

# interfaces
.implements Lcom/google/tts/ITTS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/ITTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/ITTS$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.tts.ITTS"

.field static final TRANSACTION_addEarcon:I = 0xc

.field static final TRANSACTION_addEarconFile:I = 0xd

.field static final TRANSACTION_addSpeech:I = 0x6

.field static final TRANSACTION_addSpeechFile:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x8

.field static final TRANSACTION_isSpeaking:I = 0x4

.field static final TRANSACTION_playEarcon:I = 0xb

.field static final TRANSACTION_registerCallback:I = 0xe

.field static final TRANSACTION_setEngine:I = 0x1

.field static final TRANSACTION_setLanguage:I = 0x9

.field static final TRANSACTION_setSpeechRate:I = 0x2

.field static final TRANSACTION_speak:I = 0x3

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_synthesizeToFile:I = 0xa

.field static final TRANSACTION_unregisterCallback:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.google.tts.ITTS"

    invoke-virtual {p0, p0, v0}, Lcom/google/tts/ITTS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITTS;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_3
    return-object v0

    .line 34
    :cond_4
    const-string v1, "com.google.tts.ITTS"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/tts/ITTS;

    if-eqz v1, :cond_13

    .line 36
    check-cast v0, Lcom/google/tts/ITTS;

    goto :goto_3

    .line 38
    :cond_13
    new-instance v0, Lcom/google/tts/ITTS$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/tts/ITTS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_148

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 50
    :sswitch_a
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 55
    :sswitch_10
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/tts/ITTS$Stub;->setEngine(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 64
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_20
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/tts/ITTS$Stub;->setSpeechRate(I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 73
    .end local v0           #_arg0:I
    :sswitch_30
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tts/ITTS$Stub;->speak(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:[Ljava/lang/String;
    :sswitch_48
    const-string v6, "com.google.tts.ITTS"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/tts/ITTS$Stub;->isSpeaking()Z

    move-result v3

    .line 88
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_57

    move v4, v5

    :cond_57
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v3           #_result:Z
    :sswitch_5b
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/tts/ITTS$Stub;->stop()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 101
    :sswitch_67
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tts/ITTS$Stub;->addSpeech(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 114
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_7f
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/tts/ITTS$Stub;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_94
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/tts/ITTS$Stub;->getVersion()I

    move-result v3

    .line 127
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v3           #_result:I
    :sswitch_a5
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/tts/ITTS$Stub;->setLanguage(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 142
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b6
    const-string v6, "com.google.tts.ITTS"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tts/ITTS$Stub;->synthesizeToFile(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 150
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v3, :cond_d1

    move v4, v5

    :cond_d1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 156
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_d6
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tts/ITTS$Stub;->playEarcon(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:[Ljava/lang/String;
    :sswitch_ef
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tts/ITTS$Stub;->addEarcon(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 182
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_108
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/tts/ITTS$Stub;->addEarconFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_11d
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tts/ITTSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITTSCallback;

    move-result-object v0

    .line 196
    .local v0, _arg0:Lcom/google/tts/ITTSCallback;
    invoke-virtual {p0, v0}, Lcom/google/tts/ITTS$Stub;->registerCallback(Lcom/google/tts/ITTSCallback;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 202
    .end local v0           #_arg0:Lcom/google/tts/ITTSCallback;
    :sswitch_132
    const-string v4, "com.google.tts.ITTS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tts/ITTSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITTSCallback;

    move-result-object v0

    .line 205
    .restart local v0       #_arg0:Lcom/google/tts/ITTSCallback;
    invoke-virtual {p0, v0}, Lcom/google/tts/ITTS$Stub;->unregisterCallback(Lcom/google/tts/ITTSCallback;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 46
    nop

    :sswitch_data_148
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_48
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_67
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_94
        0x9 -> :sswitch_a5
        0xa -> :sswitch_b6
        0xb -> :sswitch_d6
        0xc -> :sswitch_ef
        0xd -> :sswitch_108
        0xe -> :sswitch_11d
        0xf -> :sswitch_132
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
