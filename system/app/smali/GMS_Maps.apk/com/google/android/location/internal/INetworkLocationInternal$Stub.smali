.class public abstract Lcom/google/android/location/internal/INetworkLocationInternal$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/internal/INetworkLocationInternal;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/location/internal/INetworkLocationInternal;
    .registers 3
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/location/internal/INetworkLocationInternal;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/google/android/location/internal/INetworkLocationInternal;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/google/android/location/internal/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/internal/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_74

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 47
    :sswitch_9
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/internal/a;->a(Landroid/os/IBinder;)Lcom/google/android/location/internal/ILocationListener;

    move-result-object v2

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->a(ILcom/google/android/location/internal/ILocationListener;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 65
    :sswitch_2b
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/internal/a;->a(Landroid/os/IBinder;)Lcom/google/android/location/internal/ILocationListener;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->a(Lcom/google/android/location/internal/ILocationListener;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    :sswitch_3f
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 77
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 82
    :goto_52
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->a(Landroid/location/Location;)[B

    move-result-object v0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 80
    :cond_5d
    const/4 v0, 0x0

    goto :goto_52

    .line 89
    :sswitch_5f
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    move v0, v1

    .line 92
    :goto_6b
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->a(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 91
    :cond_72
    const/4 v0, 0x0

    goto :goto_6b

    .line 43
    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_5f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
