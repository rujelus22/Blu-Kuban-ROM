.class public abstract Lcom/vlingo/client/core/tts/ITTSListener$Stub;
.super Landroid/os/Binder;
.source "ITTSListener.java"

# interfaces
.implements Lcom/vlingo/client/core/tts/ITTSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/ITTSListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/tts/ITTSListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vlingo.client.core.tts.ITTSListener"

.field static final TRANSACTION_onCancel:I = 0x3

.field static final TRANSACTION_onIgnore:I = 0x4

.field static final TRANSACTION_onStart:I = 0x1

.field static final TRANSACTION_onStop:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.vlingo.client.core.tts.ITTSListener"

    invoke-virtual {p0, p0, v0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/core/tts/ITTSListener;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.vlingo.client.core.tts.ITTSListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vlingo/client/core/tts/ITTSListener;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/vlingo/client/core/tts/ITTSListener;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/vlingo/client/core/tts/ITTSListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_80

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 46
    :sswitch_9
    const-string v2, "com.vlingo.client.core.tts.ITTSListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v2, "com.vlingo.client.core.tts.ITTSListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    .line 54
    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 59
    .local v0, _arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;->onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 57
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    goto :goto_22

    .line 65
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :sswitch_2b
    const-string v2, "com.vlingo.client.core.tts.ITTSListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    .line 68
    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 73
    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;->onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 71
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    goto :goto_3e

    .line 79
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :sswitch_47
    const-string v2, "com.vlingo.client.core.tts.ITTSListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_61

    .line 82
    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 87
    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :goto_5a
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;->onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 85
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_61
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    goto :goto_5a

    .line 93
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :sswitch_63
    const-string v2, "com.vlingo.client.core.tts.ITTSListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7d

    .line 96
    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 101
    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :goto_76
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;->onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 99
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_7d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    goto :goto_76

    .line 42
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_47
        0x4 -> :sswitch_63
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
