.class public abstract Lcom/google/android/music/dl/INetworkChangeListener$Stub;
.super Landroid/os/Binder;
.source "INetworkChangeListener.java"

# interfaces
.implements Lcom/google/android/music/dl/INetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/INetworkChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.music.dl.INetworkChangeListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/dl/INetworkChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/INetworkChangeListener;
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
    const-string v1, "com.google.android.music.dl.INetworkChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/dl/INetworkChangeListener;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/music/dl/INetworkChangeListener;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_2e

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 42
    :sswitch_a
    const-string v3, "com.google.android.music.dl.INetworkChangeListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.google.android.music.dl.INetworkChangeListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v2

    .line 51
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    move v1, v2

    .line 52
    .local v1, _arg1:Z
    :goto_23
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/INetworkChangeListener$Stub;->onNetworkChanged(ZZ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_2a
    move v0, v3

    .line 49
    goto :goto_1c

    .restart local v0       #_arg0:Z
    :cond_2c
    move v1, v3

    .line 51
    goto :goto_23

    .line 38
    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
