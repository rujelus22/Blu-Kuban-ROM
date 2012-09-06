.class Lcom/google/googlenav/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/d;)V
    .registers 2
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/google/googlenav/android/f;->a:Lcom/google/googlenav/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 603
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    .line 610
    :goto_a
    return-void

    .line 604
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter

    .prologue
    .line 613
    return-void
.end method
