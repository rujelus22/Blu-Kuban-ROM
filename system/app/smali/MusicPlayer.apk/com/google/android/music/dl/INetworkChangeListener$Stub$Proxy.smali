.class Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkChangeListener.java"

# interfaces
.implements Lcom/google/android/music/dl/INetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/INetworkChangeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onNetworkChanged(ZZ)V
    .registers 8
    .parameter "mobileConnected"
    .parameter "wifiOrEthernetConnected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 77
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.google.android.music.dl.INetworkChangeListener"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_2b

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    if-eqz p2, :cond_2d

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v2, p0, Lcom/google/android/music/dl/INetworkChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2f

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    return-void

    :cond_2b
    move v4, v3

    .line 80
    goto :goto_12

    :cond_2d
    move v2, v3

    .line 81
    goto :goto_17

    .line 86
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
