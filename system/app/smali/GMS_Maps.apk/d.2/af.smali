.class Ld/af;
.super Landroid/os/HandlerThread;


# instance fields
.field final synthetic a:Ld/ad;


# direct methods
.method public constructor <init>(Ld/ad;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Ld/af;->a:Ld/ad;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ld/af;->a:Ld/ad;

    invoke-static {v0}, Ld/ad;->a(Ld/ad;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-class v2, Ld/ad;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    :try_start_11
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
