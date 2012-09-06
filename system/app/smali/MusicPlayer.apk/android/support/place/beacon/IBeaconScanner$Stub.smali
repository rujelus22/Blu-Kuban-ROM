.class public abstract Landroid/support/place/beacon/IBeaconScanner$Stub;
.super Landroid/os/Binder;
.source "IBeaconScanner.java"

# interfaces
.implements Landroid/support/place/beacon/IBeaconScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/beacon/IBeaconScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/beacon/IBeaconScanner$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.beacon.IBeaconScanner"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/beacon/IBeaconScanner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/beacon/IBeaconScanner;
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
    const-string v1, "android.support.place.beacon.IBeaconScanner"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/beacon/IBeaconScanner;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/beacon/IBeaconScanner;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/beacon/IBeaconScanner$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/place/beacon/IBeaconScanner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_54

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "android.support.place.beacon.IBeaconScanner"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "android.support.place.beacon.IBeaconScanner"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/support/place/beacon/IBeaconScanner$Stub;->getBeacons()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, _result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/beacon/BeaconInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 55
    .end local v1           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/beacon/BeaconInfo;>;"
    :sswitch_1f
    const-string v3, "android.support.place.beacon.IBeaconScanner"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/support/place/beacon/IBeaconScanner$Stub;->scanForBeacons()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 62
    :sswitch_2b
    const-string v3, "android.support.place.beacon.IBeaconScanner"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/support/place/beacon/IBeaconScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/beacon/IBeaconScannerListener;

    move-result-object v0

    .line 65
    .local v0, _arg0:Landroid/support/place/beacon/IBeaconScannerListener;
    invoke-virtual {p0, v0}, Landroid/support/place/beacon/IBeaconScanner$Stub;->addListener(Landroid/support/place/beacon/IBeaconScannerListener;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 71
    .end local v0           #_arg0:Landroid/support/place/beacon/IBeaconScannerListener;
    :sswitch_3f
    const-string v3, "android.support.place.beacon.IBeaconScanner"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/support/place/beacon/IBeaconScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/beacon/IBeaconScannerListener;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Landroid/support/place/beacon/IBeaconScannerListener;
    invoke-virtual {p0, v0}, Landroid/support/place/beacon/IBeaconScanner$Stub;->removeListener(Landroid/support/place/beacon/IBeaconScannerListener;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_3f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
