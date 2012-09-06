.class Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConnectionStateListener.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;)V
    .registers 8
    .parameter "state"
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.google.android.gtalkservice.IConnectionStateListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_32

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gtalkservice/ConnectionState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    :goto_17
    if-eqz p2, :cond_3f

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gtalkservice/ConnectionError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    :goto_21
    iget-object v2, p0, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    return-void

    .line 106
    :cond_32
    const/4 v2, 0x0

    :try_start_33
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_17

    .line 119
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 113
    :cond_3f
    const/4 v2, 0x0

    :try_start_40
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_37

    goto :goto_21
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "com.google.android.gtalkservice.IConnectionStateListener"

    return-object v0
.end method
