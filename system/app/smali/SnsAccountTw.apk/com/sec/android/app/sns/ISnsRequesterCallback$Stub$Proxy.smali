.class Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISnsRequesterCallback.java"

# interfaces
.implements Lcom/sec/android/app/sns/ISnsRequesterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
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
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 15
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    .local v0, _data:Landroid/os/Parcel;
    :try_start_6
    const-string v3, "com.sec.android.app.sns.ISnsRequesterCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    if-eqz p2, :cond_3e

    move v3, v1

    :goto_11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    if-eqz p3, :cond_40

    :goto_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    if-eqz p4, :cond_42

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    :goto_23
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 112
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_47

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    return-void

    :cond_3e
    move v3, v2

    .line 99
    goto :goto_11

    :cond_40
    move v1, v2

    .line 100
    goto :goto_16

    .line 106
    :cond_42
    const/4 v1, 0x0

    :try_start_43
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_23

    .line 116
    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
