.class public abstract Lcom/samsung/swift/service/ISwiftService$Stub;
.super Landroid/os/Binder;
.source "ISwiftService.java"

# interfaces
.implements Lcom/samsung/swift/service/ISwiftService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/ISwiftService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/ISwiftService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.swift.service.ISwiftService"

.field static final TRANSACTION_getCurrentNetworkName:I = 0xc

.field static final TRANSACTION_getInstallWorldReadable:I = 0xa

.field static final TRANSACTION_getRootUrl:I = 0x1

.field static final TRANSACTION_install:I = 0x5

.field static final TRANSACTION_installProgress:I = 0x6

.field static final TRANSACTION_installState:I = 0x8

.field static final TRANSACTION_installedFile:I = 0x7

.field static final TRANSACTION_isServerRunning:I = 0xb

.field static final TRANSACTION_restart:I = 0x4

.field static final TRANSACTION_setInstallWorldReadable:I = 0x9

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/swift/service/ISwiftService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/swift/service/ISwiftService;
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
    const-string v1, "com.samsung.swift.service.ISwiftService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/swift/service/ISwiftService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsung/swift/service/ISwiftService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsung/swift/service/ISwiftService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/swift/service/ISwiftService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ee

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v2, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 55
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->stop()Z

    move-result v1

    .line 57
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_2f

    move v2, v3

    :cond_2f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v1           #_result:Z
    :sswitch_33
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->start()Z

    move-result v1

    .line 65
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_42

    move v2, v3

    :cond_42
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v1           #_result:Z
    :sswitch_46
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->restart()Z

    move-result v1

    .line 73
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_55

    move v2, v3

    :cond_55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v1           #_result:Z
    :sswitch_59
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->install()Z

    move-result v1

    .line 81
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_68

    move v2, v3

    :cond_68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v1           #_result:Z
    :sswitch_6c
    const-string v2, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->installProgress()I

    move-result v1

    .line 89
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v1           #_result:I
    :sswitch_7c
    const-string v2, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->installedFile()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 103
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8d
    const-string v2, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->installState()I

    move-result v1

    .line 105
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 111
    .end local v1           #_result:I
    :sswitch_9e
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b2

    move v0, v3

    .line 114
    .local v0, _arg0:Z
    :goto_aa
    invoke-virtual {p0, v0}, Lcom/samsung/swift/service/ISwiftService$Stub;->setInstallWorldReadable(Z)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_b2
    move v0, v2

    .line 113
    goto :goto_aa

    .line 120
    :sswitch_b4
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->getInstallWorldReadable()Z

    move-result v1

    .line 122
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v1, :cond_c3

    move v2, v3

    :cond_c3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v1           #_result:Z
    :sswitch_c8
    const-string v4, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->isServerRunning()Z

    move-result v1

    .line 130
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v1, :cond_d7

    move v2, v3

    :cond_d7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v1           #_result:Z
    :sswitch_dc
    const-string v2, "com.samsung.swift.service.ISwiftService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;->getCurrentNetworkName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_33
        0x4 -> :sswitch_46
        0x5 -> :sswitch_59
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_7c
        0x8 -> :sswitch_8d
        0x9 -> :sswitch_9e
        0xa -> :sswitch_b4
        0xb -> :sswitch_c8
        0xc -> :sswitch_dc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
