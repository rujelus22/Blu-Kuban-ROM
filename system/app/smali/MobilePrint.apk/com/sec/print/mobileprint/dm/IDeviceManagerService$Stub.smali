.class public abstract Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;
.super Landroid/os/Binder;
.source "IDeviceManagerService.java"

# interfaces
.implements Lcom/sec/print/mobileprint/dm/IDeviceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.print.mobileprint.dm.IDeviceManagerService"

.field static final TRANSACTION_getLanguages:I = 0x4

.field static final TRANSACTION_getMediaSizes:I = 0x5

.field static final TRANSACTION_getMediaTypes:I = 0x6

.field static final TRANSACTION_getPrinters:I = 0x3

.field static final TRANSACTION_isPrinterAlive:I = 0x9

.field static final TRANSACTION_isPrinterColorModel:I = 0x7

.field static final TRANSACTION_isSupportDuplex:I = 0x8

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
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
    const-string v1, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_108

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 42
    :sswitch_9
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->start(I)I

    move-result v1

    .line 51
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 57
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_23
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->stop()I

    move-result v1

    .line 59
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 65
    .end local v1           #_result:I
    :sswitch_33
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->getPrinters()Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 73
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    :sswitch_43
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    .line 76
    sget-object v6, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    .line 81
    .local v0, _arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :goto_56
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_8

    .line 79
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_61
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    goto :goto_56

    .line 88
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :sswitch_63
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    .line 91
    sget-object v6, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    .line 96
    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :goto_76
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->getMediaSizes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v3

    .line 97
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 94
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    :cond_81
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    goto :goto_76

    .line 103
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :sswitch_83
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a2

    .line 106
    sget-object v6, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    .line 111
    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :goto_96
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->getMediaTypes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v4

    .line 112
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 109
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    goto :goto_96

    .line 118
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :sswitch_a4
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c3

    .line 121
    sget-object v6, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    .line 126
    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :goto_b7
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v1

    .line 127
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 124
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v1           #_result:I
    :cond_c3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    goto :goto_b7

    .line 133
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :sswitch_c5
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e4

    .line 136
    sget-object v6, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    .line 141
    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :goto_d8
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->isSupportDuplex(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v1

    .line 142
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 139
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v1           #_result:I
    :cond_e4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    goto :goto_d8

    .line 148
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :sswitch_e6
    const-string v6, "com.sec.print.mobileprint.dm.IDeviceManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_105

    .line 151
    sget-object v6, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    .line 156
    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    :goto_f9
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v1

    .line 157
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 154
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v1           #_result:I
    :cond_105
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    goto :goto_f9

    .line 38
    nop

    :sswitch_data_108
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_33
        0x4 -> :sswitch_43
        0x5 -> :sswitch_63
        0x6 -> :sswitch_83
        0x7 -> :sswitch_a4
        0x8 -> :sswitch_c5
        0x9 -> :sswitch_e6
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
