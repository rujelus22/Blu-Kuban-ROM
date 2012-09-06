.class public abstract Landroid/support/place/connector/IPlaceListener$Stub;
.super Landroid/os/Binder;
.source "IPlaceListener.java"

# interfaces
.implements Landroid/support/place/connector/IPlaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/IPlaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/IPlaceListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IPlaceListener;
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
    const-string v1, "android.support.place.connector.IPlaceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/IPlaceListener;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/IPlaceListener;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_5a

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 42
    :sswitch_9
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    .line 50
    sget-object v2, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 55
    .local v0, _arg0:Landroid/support/place/connector/PlaceInfo;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_8

    .line 53
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/support/place/connector/PlaceInfo;
    goto :goto_22

    .line 60
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :sswitch_28
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 63
    sget-object v2, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 68
    .restart local v0       #_arg0:Landroid/support/place/connector/PlaceInfo;
    :goto_3b
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_8

    .line 66
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :cond_3f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/support/place/connector/PlaceInfo;
    goto :goto_3b

    .line 73
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :sswitch_41
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_58

    .line 76
    sget-object v2, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 81
    .restart local v0       #_arg0:Landroid/support/place/connector/PlaceInfo;
    :goto_54
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_8

    .line 79
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :cond_58
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/support/place/connector/PlaceInfo;
    goto :goto_54

    .line 38
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_41
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
