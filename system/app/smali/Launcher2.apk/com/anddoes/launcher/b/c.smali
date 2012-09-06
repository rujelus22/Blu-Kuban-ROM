.class final Lcom/anddoes/launcher/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/b/a;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/anddoes/launcher/b/c;->a:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/a/a;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 106
    :try_start_5
    const-string v2, "com.anddoes.launcher.pro.ILVLService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/a/a/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/b/c;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    return-void

    .line 110
    :catchall_1f
    move-exception v0

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    :try_start_4
    const-string v0, "com.anddoes.launcher.pro.ILVLService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/anddoes/launcher/b/c;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    return-void

    .line 98
    :catchall_18
    move-exception v0

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/anddoes/launcher/b/c;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/a;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 118
    :try_start_5
    const-string v2, "com.anddoes.launcher.pro.ILVLService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/a/a/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 120
    iget-object v0, p0, Lcom/anddoes/launcher/b/c;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 122
    :catchall_1f
    move-exception v0

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw v0
.end method
