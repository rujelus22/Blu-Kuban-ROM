.class public abstract Landroid/support/place/connector/IPlaceListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/IPlaceListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.place.connector.IPlaceListener"

.field static final TRANSACTION_onPlaceAdded:I = 0x1

.field static final TRANSACTION_onPlaceRemoved:I = 0x2

.field static final TRANSACTION_onPlaceUpdated:I = 0x3


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
    .parameter

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
    const-string v0, "android.support.place.connector.IPlaceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/IPlaceListener;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/IPlaceListener;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;

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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_5a

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 50
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 55
    :cond_24
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    move v0, v1

    .line 56
    goto :goto_9

    .line 60
    :sswitch_29
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 63
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 68
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V

    move v0, v1

    .line 69
    goto :goto_9

    .line 73
    :sswitch_41
    const-string v2, "android.support.place.connector.IPlaceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    .line 76
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 81
    :cond_54
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IPlaceListener$Stub;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    move v0, v1

    .line 82
    goto :goto_9

    .line 38
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_29
        0x3 -> :sswitch_41
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
