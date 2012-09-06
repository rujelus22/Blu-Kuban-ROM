.class public abstract Lcom/google/tts/ITtsBeta$Stub;
.super Landroid/os/Binder;
.source "ITtsBeta.java"

# interfaces
.implements Lcom/google/tts/ITtsBeta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/ITtsBeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/ITtsBeta$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.tts.ITtsBeta"

.field static final TRANSACTION_addEarcon:I = 0xd

.field static final TRANSACTION_addEarconFile:I = 0xe

.field static final TRANSACTION_addSpeech:I = 0x6

.field static final TRANSACTION_addSpeechFile:I = 0x7

.field static final TRANSACTION_areDefaultsEnforced:I = 0x14

.field static final TRANSACTION_getDefaultEngine:I = 0x13

.field static final TRANSACTION_getLanguage:I = 0x8

.field static final TRANSACTION_isLanguageAvailable:I = 0x9

.field static final TRANSACTION_isSpeaking:I = 0x4

.field static final TRANSACTION_playEarcon:I = 0xc

.field static final TRANSACTION_playSilence:I = 0x11

.field static final TRANSACTION_registerCallback:I = 0xf

.field static final TRANSACTION_setEngineByPackageName:I = 0x12

.field static final TRANSACTION_setLanguage:I = 0xa

.field static final TRANSACTION_setPitch:I = 0x2

.field static final TRANSACTION_setSpeechRate:I = 0x1

.field static final TRANSACTION_speak:I = 0x3

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_synthesizeToFile:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p0, p0, v0}, Lcom/google/tts/ITtsBeta$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITtsBeta;
    .registers 3
    .parameter "obj"

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 42
    :goto_3
    return-object v0

    .line 38
    :cond_4
    const-string v1, "com.google.tts.ITtsBeta"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/tts/ITtsBeta;

    if-eqz v1, :cond_13

    .line 40
    check-cast v0, Lcom/google/tts/ITtsBeta;

    goto :goto_3

    .line 42
    :cond_13
    new-instance v0, Lcom/google/tts/ITtsBeta$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/tts/ITtsBeta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 46
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 50
    sparse-switch p1, :sswitch_data_222

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 54
    :sswitch_a
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 59
    :sswitch_10
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/google/tts/ITtsBeta$Stub;->setSpeechRate(Ljava/lang/String;I)I

    move-result v6

    .line 65
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_28
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/google/tts/ITtsBeta$Stub;->setPitch(Ljava/lang/String;I)I

    move-result v6

    .line 77
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_40
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v6

    .line 93
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 99
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_60
    const-string v8, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/tts/ITtsBeta$Stub;->isSpeaking()Z

    move-result v6

    .line 101
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v6, :cond_6f

    move v0, v7

    :cond_6f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 107
    .end local v6           #_result:Z
    :sswitch_73
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/tts/ITtsBeta$Stub;->stop(Ljava/lang/String;)I

    move-result v6

    .line 111
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 117
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_87
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .local v5, _arg3:I
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 132
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    :sswitch_a4
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/tts/ITtsBeta$Stub;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 145
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_bd
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/tts/ITtsBeta$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 153
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_ce
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 163
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 169
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_ef
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 179
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 185
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_110
    const-string v8, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, _arg2:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 195
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v6, :cond_12f

    move v0, v7

    :cond_12f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 201
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:[Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_134
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v6

    .line 211
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 217
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_155
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    .local v5, _arg3:I
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/google/tts/ITtsBeta$Stub;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 232
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    :sswitch_172
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/tts/ITtsBeta$Stub;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 245
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_18b
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tts/ITtsCallbackBeta$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITtsCallbackBeta;

    move-result-object v2

    .line 250
    .local v2, _arg1:Lcom/google/tts/ITtsCallbackBeta;
    invoke-virtual {p0, v1, v2}, Lcom/google/tts/ITtsBeta$Stub;->registerCallback(Ljava/lang/String;Lcom/google/tts/ITtsCallbackBeta;)I

    move-result v6

    .line 251
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/google/tts/ITtsCallbackBeta;
    .end local v6           #_result:I
    :sswitch_1a8
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tts/ITtsCallbackBeta$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITtsCallbackBeta;

    move-result-object v2

    .line 262
    .restart local v2       #_arg1:Lcom/google/tts/ITtsCallbackBeta;
    invoke-virtual {p0, v1, v2}, Lcom/google/tts/ITtsBeta$Stub;->unregisterCallback(Ljava/lang/String;Lcom/google/tts/ITtsCallbackBeta;)I

    move-result v6

    .line 263
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 269
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/google/tts/ITtsCallbackBeta;
    .end local v6           #_result:I
    :sswitch_1c5
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 275
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, _arg3:[Ljava/lang/String;
    move-object v0, p0

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/google/tts/ITtsBeta$Stub;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I

    move-result v6

    .line 279
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 285
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:J
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1e7
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/tts/ITtsBeta$Stub;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v6

    .line 289
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1fc
    const-string v0, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/google/tts/ITtsBeta$Stub;->getDefaultEngine()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 303
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_20d
    const-string v8, "com.google.tts.ITtsBeta"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/google/tts/ITtsBeta$Stub;->areDefaultsEnforced()Z

    move-result v6

    .line 305
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v6, :cond_21c

    move v0, v7

    :cond_21c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 50
    nop

    :sswitch_data_222
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_40
        0x4 -> :sswitch_60
        0x5 -> :sswitch_73
        0x6 -> :sswitch_87
        0x7 -> :sswitch_a4
        0x8 -> :sswitch_bd
        0x9 -> :sswitch_ce
        0xa -> :sswitch_ef
        0xb -> :sswitch_110
        0xc -> :sswitch_134
        0xd -> :sswitch_155
        0xe -> :sswitch_172
        0xf -> :sswitch_18b
        0x10 -> :sswitch_1a8
        0x11 -> :sswitch_1c5
        0x12 -> :sswitch_1e7
        0x13 -> :sswitch_1fc
        0x14 -> :sswitch_20d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
