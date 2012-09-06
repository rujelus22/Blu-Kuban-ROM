.class public abstract LVe;
.super Landroid/os/Binder;
.source "IFileSyncMonitor.java"

# interfaces
.implements LVd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {p0, p0, v0}, LVe;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)LVd;
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
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, LVd;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, LVd;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, LVf;

    invoke-direct {v0, p0}, LVf;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_4c

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, LVe;->a()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    :sswitch_1b
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 59
    invoke-virtual {p0, v1, v2, v3, v4}, LVe;->a(JJ)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 65
    :sswitch_2f
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    invoke-virtual {p0, v1}, LVe;->a(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    :sswitch_3f
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, LVe;->b()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
