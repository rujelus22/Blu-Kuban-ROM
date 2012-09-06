.class Lcom/google/android/apps/translate/ITranslate$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITranslate.java"

# interfaces
.implements Lcom/google/android/apps/translate/ITranslate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/ITranslate$Stub;
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
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/translate/ITranslate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/translate/ITranslate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const-string v0, "com.google.android.apps.translate.ITranslate"

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 90
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.google.android.apps.translate.ITranslate"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/translate/ITranslate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2e

    move-result-object v2

    .line 100
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    return-object v2

    .line 100
    .end local v2           #_result:Ljava/lang/String;
    :catchall_2e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
