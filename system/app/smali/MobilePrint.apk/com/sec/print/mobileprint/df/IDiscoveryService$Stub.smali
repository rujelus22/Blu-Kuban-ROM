.class public abstract Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;
.super Landroid/os/Binder;
.source "IDiscoveryService.java"

# interfaces
.implements Lcom/sec/print/mobileprint/df/IDiscoveryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/df/IDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.print.mobileprint.df.IDiscoveryService"

.field static final TRANSACTION_IsDeviceSamsungPrinter:I = 0xc

.field static final TRANSACTION_IsDeviceSamsungScanner:I = 0xd

.field static final TRANSACTION_IsPrinterAlive:I = 0xb

.field static final TRANSACTION_IsPrinterColorModel:I = 0xa

.field static final TRANSACTION_Start:I = 0x1

.field static final TRANSACTION_Stop:I = 0x2

.field static final TRANSACTION_getDeviceMode:I = 0x6

.field static final TRANSACTION_getDeviceName:I = 0xe

.field static final TRANSACTION_getDuplex:I = 0x7

.field static final TRANSACTION_getIppDevices:I = 0x13

.field static final TRANSACTION_getLanguages:I = 0x5

.field static final TRANSACTION_getMediaSizes:I = 0x8

.field static final TRANSACTION_getMediaTypes:I = 0x9

.field static final TRANSACTION_getPrinters:I = 0x3

.field static final TRANSACTION_getScanners:I = 0x4

.field static final TRANSACTION_getSmbDevices:I = 0x11

.field static final TRANSACTION_getSmbState:I = 0x12

.field static final TRANSACTION_startSmb:I = 0xf

.field static final TRANSACTION_stopSmb:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/df/IDiscoveryService;
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
    const-string v1, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/print/mobileprint/df/IDiscoveryService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/print/mobileprint/df/IDiscoveryService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_192

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_8
    return v8

    .line 42
    :sswitch_9
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26

    move v0, v8

    .line 50
    .local v0, _arg0:Z
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->Start(Z)I

    move-result v4

    .line 51
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 49
    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_26
    const/4 v0, 0x0

    goto :goto_1b

    .line 57
    :sswitch_28
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->Stop()I

    move-result v4

    .line 59
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 65
    .end local v4           #_result:I
    :sswitch_38
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getPrinters()Ljava/util/List;

    move-result-object v5

    .line 67
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 73
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    :sswitch_48
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getScanners()Ljava/util/List;

    move-result-object v5

    .line 75
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 81
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    :sswitch_58
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getLanguages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_8

    .line 91
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6c
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getDeviceMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_80
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getDuplex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 105
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 111
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_95
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getMediaSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPMediaSize;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 121
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPMediaSize;>;"
    :sswitch_aa
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getMediaTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 125
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 131
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_bf
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->IsPrinterColorModel(Ljava/lang/String;)I

    move-result v4

    .line 135
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 141
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_d4
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->IsPrinterAlive(Ljava/lang/String;)I

    move-result v4

    .line 145
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 151
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_e9
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->IsDeviceSamsungPrinter(Ljava/lang/String;)I

    move-result v4

    .line 155
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 161
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_fe
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->IsDeviceSamsungScanner(Ljava/lang/String;)I

    move-result v4

    .line 165
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 171
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_113
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 181
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_128
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->startSmb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 191
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 197
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_149
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->stopSmb()I

    move-result v4

    .line 199
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 205
    .end local v4           #_result:I
    :sswitch_15a
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getSmbDevices()Ljava/util/List;

    move-result-object v5

    .line 207
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 213
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    :sswitch_16b
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getSmbState()I

    move-result v4

    .line 215
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 221
    .end local v4           #_result:I
    :sswitch_17c
    const-string v9, "com.sec.print.mobileprint.df.IDiscoveryService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;->getIppDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 225
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_192
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5 -> :sswitch_58
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_80
        0x8 -> :sswitch_95
        0x9 -> :sswitch_aa
        0xa -> :sswitch_bf
        0xb -> :sswitch_d4
        0xc -> :sswitch_e9
        0xd -> :sswitch_fe
        0xe -> :sswitch_113
        0xf -> :sswitch_128
        0x10 -> :sswitch_149
        0x11 -> :sswitch_15a
        0x12 -> :sswitch_16b
        0x13 -> :sswitch_17c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
