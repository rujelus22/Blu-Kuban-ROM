.class public abstract LVh;
.super Landroid/os/Binder;
.source "IFileSynchronizer.java"

# interfaces
.implements LVg;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSynchronizer"

    invoke-virtual {p0, p0, v0}, LVh;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_64

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSynchronizer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 43
    goto :goto_8

    .line 47
    :sswitch_10
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSynchronizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LVe;->a(Landroid/os/IBinder;)LVd;

    move-result-object v6

    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v6}, LVh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LVd;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 62
    goto :goto_8

    .line 66
    :sswitch_3a
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSynchronizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LVe;->a(Landroid/os/IBinder;)LVd;

    move-result-object v5

    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, LVh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LVd;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 80
    goto :goto_8

    .line 38
    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
