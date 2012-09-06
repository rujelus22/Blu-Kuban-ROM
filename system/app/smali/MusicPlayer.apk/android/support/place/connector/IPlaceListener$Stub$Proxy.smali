.class Landroid/support/place/connector/IPlaceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPlaceListener.java"

# interfaces
.implements Landroid/support/place/connector/IPlaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/IPlaceListener$Stub;
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 7
    .parameter "place"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.support.place.connector.IPlaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    if-eqz p1, :cond_1f

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/place/connector/PlaceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    :goto_13
    iget-object v1, p0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    return-void

    .line 112
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 117
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 7
    .parameter "place"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.support.place.connector.IPlaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_1f

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/place/connector/PlaceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_13
    iget-object v1, p0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 130
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 135
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .registers 7
    .parameter "place"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.support.place.connector.IPlaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    if-eqz p1, :cond_1f

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/place/connector/PlaceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_13
    iget-object v1, p0, Landroid/support/place/connector/IPlaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    return-void

    .line 148
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 153
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
