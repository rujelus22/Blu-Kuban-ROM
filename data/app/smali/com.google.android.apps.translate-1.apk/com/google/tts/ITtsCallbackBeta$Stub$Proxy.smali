.class Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITtsCallbackBeta.java"

# interfaces
.implements Lcom/google/tts/ITtsCallbackBeta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/ITtsCallbackBeta$Stub;
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
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string v0, "com.google.tts.ITtsCallbackBeta"

    return-object v0
.end method

.method public utteranceCompleted(Ljava/lang/String;)V
    .registers 7
    .parameter "utteranceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.google.tts.ITtsCallbackBeta"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    return-void

    .line 91
    :catchall_18
    move-exception v1

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    throw v1
.end method
