.class public abstract Landroid/os/ITvoutService$Stub;
.super Landroid/os/Binder;
.source "ITvoutService.java"

# interfaces
.implements Landroid/os/ITvoutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvoutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvoutService"

.field static final TRANSACTION_TvoutGetCableStatus:I = 0x3

.field static final TRANSACTION_TvoutGetStatus:I = 0x1

.field static final TRANSACTION_TvoutGetSubtitleStatus:I = 0x7

.field static final TRANSACTION_TvoutGetSuspendStatus:I = 0xa

.field static final TRANSACTION_TvoutPostSubtitle:I = 0x9

.field static final TRANSACTION_TvoutPostSuspend:I = 0xc

.field static final TRANSACTION_TvoutSetCableStatus:I = 0x4

.field static final TRANSACTION_TvoutSetOutputMode:I = 0x6

.field static final TRANSACTION_TvoutSetResolution:I = 0x5

.field static final TRANSACTION_TvoutSetStatus:I = 0x2

.field static final TRANSACTION_TvoutSetSubtitleStatus:I = 0x8

.field static final TRANSACTION_TvoutSetSuspendStatus:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvoutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITvoutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.os.ITvoutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ITvoutService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/ITvoutService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/ITvoutService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ITvoutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_134

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetStatus()Z

    move-result v2

    .line 50
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_1f

    move v3, v4

    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v2           #_result:Z
    :sswitch_23
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    move v0, v4

    .line 59
    .local v0, _arg0:Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetStatus(Z)Z

    move-result v2

    .line 60
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_39

    move v3, v4

    :cond_39
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_3d
    move v0, v3

    .line 58
    goto :goto_2f

    .line 66
    :sswitch_3f
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetCableStatus()Z

    move-result v2

    .line 68
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_4e

    move v3, v4

    :cond_4e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 74
    .end local v2           #_result:Z
    :sswitch_52
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6c

    move v0, v4

    .line 77
    .restart local v0       #_arg0:Z
    :goto_5e
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetCableStatus(Z)Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_68

    move v3, v4

    :cond_68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_6c
    move v0, v3

    .line 76
    goto :goto_5e

    .line 84
    :sswitch_6e
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetResolution(I)Z

    move-result v2

    .line 88
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_81

    move v3, v4

    :cond_81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_85
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetOutputMode(I)Z

    move-result v2

    .line 98
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_98

    move v3, v4

    :cond_98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 104
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_9d
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSubtitleStatus()Z

    move-result v2

    .line 106
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_ac

    move v3, v4

    :cond_ac
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v2           #_result:Z
    :sswitch_b1
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cc

    move v0, v4

    .line 115
    .local v0, _arg0:Z
    :goto_bd
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetSubtitleStatus(Z)Z

    move-result v2

    .line 116
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_c7

    move v3, v4

    :cond_c7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_cc
    move v0, v3

    .line 114
    goto :goto_bd

    .line 122
    :sswitch_ce
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvoutService$Stub;->TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v2

    .line 128
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_e5

    move v3, v4

    :cond_e5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_ea
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSuspendStatus()Z

    move-result v2

    .line 136
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_f9

    move v3, v4

    :cond_f9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v2           #_result:Z
    :sswitch_fe
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_119

    move v0, v4

    .line 145
    .local v0, _arg0:Z
    :goto_10a
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetSuspendStatus(Z)Z

    move-result v2

    .line 146
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v2, :cond_114

    move v3, v4

    :cond_114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_119
    move v0, v3

    .line 144
    goto :goto_10a

    .line 152
    :sswitch_11b
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v2

    .line 156
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_12e

    move v3, v4

    :cond_12e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_52
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_85
        0x7 -> :sswitch_9d
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_ce
        0xa -> :sswitch_ea
        0xb -> :sswitch_fe
        0xc -> :sswitch_11b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
