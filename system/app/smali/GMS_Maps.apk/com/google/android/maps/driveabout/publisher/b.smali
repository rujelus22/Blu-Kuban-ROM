.class public abstract Lcom/google/android/maps/driveabout/publisher/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/publisher/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.google.android.maps.driveabout.publisher.IAccessorAuthorizer"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/maps/driveabout/publisher/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_2a

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 50
    :sswitch_9
    const-string v0, "com.google.android.maps.driveabout.publisher.IAccessorAuthorizer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 51
    goto :goto_8

    .line 55
    :sswitch_10
    const-string v0, "com.google.android.maps.driveabout.publisher.IAccessorAuthorizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 58
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 63
    :goto_23
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/publisher/b;->a(Landroid/os/Message;)V

    move v0, v1

    .line 64
    goto :goto_8

    .line 61
    :cond_28
    const/4 v0, 0x0

    goto :goto_23

    .line 46
    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
