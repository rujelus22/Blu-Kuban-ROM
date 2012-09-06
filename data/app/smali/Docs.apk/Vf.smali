.class LVf;
.super Ljava/lang/Object;
.source "IFileSyncMonitor.java"

# interfaces
.implements LVd;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, LVf;->a:Landroid/os/IBinder;

    .line 88
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 105
    :try_start_8
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, LVf;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 110
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    return-void

    .line 110
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(I)V
    .registers 7
    .parameter

    .prologue
    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 148
    :try_start_8
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, LVf;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 154
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    return-void

    .line 154
    :catchall_21
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(JJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 124
    :try_start_8
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v0, p0, LVf;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 131
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-void

    .line 131
    :catchall_24
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, LVf;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()V
    .registers 6

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 166
    :try_start_8
    const-string v0, "com.google.android.apps.docs.sync.syncadapter.IFileSyncMonitor"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, LVf;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 168
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    return-void

    .line 171
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
