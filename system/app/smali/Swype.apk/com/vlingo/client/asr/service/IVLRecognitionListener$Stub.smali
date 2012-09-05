.class public abstract Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;
.super Landroid/os/Binder;
.source "IVLRecognitionListener.java"

# interfaces
.implements Lcom/vlingo/client/asr/service/IVLRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/IVLRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vlingo.client.asr.service.IVLRecognitionListener"

.field static final TRANSACTION_onBeginningOfSpeech:I = 0x2

.field static final TRANSACTION_onBufferReceived:I = 0x5

.field static final TRANSACTION_onEndOfSpeech:I = 0x6

.field static final TRANSACTION_onError:I = 0x7

.field static final TRANSACTION_onReadyForSpeech:I = 0x1

.field static final TRANSACTION_onResults:I = 0x8

.field static final TRANSACTION_onRmsChanged:I = 0x3

.field static final TRANSACTION_onStatusMessage:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p0, p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_a4

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 48
    :sswitch_9
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 49
    goto :goto_8

    .line 53
    :sswitch_10
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 56
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 61
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 63
    goto :goto_8

    .line 59
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_2b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_23

    .line 67
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_2d
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onBeginningOfSpeech()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 70
    goto :goto_8

    .line 74
    :sswitch_3a
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 77
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onRmsChanged(F)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 79
    goto :goto_8

    .line 83
    .end local v0           #_arg0:F
    :sswitch_4b
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onStatusMessage(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 88
    goto :goto_8

    .line 92
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5c
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 95
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onBufferReceived([B)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 97
    goto :goto_8

    .line 101
    .end local v0           #_arg0:[B
    :sswitch_6d
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onEndOfSpeech()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 104
    goto :goto_8

    .line 108
    :sswitch_7a
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onError(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 113
    goto/16 :goto_8

    .line 117
    .end local v0           #_arg0:I
    :sswitch_8c
    const-string v4, "com.vlingo.client.asr.service.IVLRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    sget-object v4, Lcom/vlingo/client/asr/service/VLRecognitionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/asr/service/VLRecognitionResult;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 122
    .local v2, _arg1:J
    invoke-virtual {p0, v1, v2, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->onResults(Ljava/util/List;J)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 124
    goto/16 :goto_8

    .line 44
    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_7a
        0x8 -> :sswitch_8c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
