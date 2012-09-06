.class Lcom/google/android/finsky/services/IMarketCatalogService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMarketCatalogService.java"

# interfaces
.implements Lcom/google/android/finsky/services/IMarketCatalogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/IMarketCatalogService$Stub;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/services/IMarketCatalogService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/services/IMarketCatalogService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public isBackendEnabled(Ljava/lang/String;I)Z
    .registers 10
    .parameter "account"
    .parameter "backendId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.google.android.finsky.services.IMarketCatalogService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v4, p0, Lcom/google/android/finsky/services/IMarketCatalogService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_2e

    move-result v4

    if-eqz v4, :cond_2c

    .line 108
    .local v2, _result:Z
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    return v2

    .end local v2           #_result:Z
    :cond_2c
    move v2, v3

    .line 105
    goto :goto_25

    .line 108
    :catchall_2e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
