.class final Lcom/dropbox/android/util/bd;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Landroid/net/wifi/WifiManager$WifiLock;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager$WifiLock;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/dropbox/android/util/bd;->b:I

    .line 66
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 67
    iput-object p1, p0, Lcom/dropbox/android/util/bd;->a:Landroid/net/wifi/WifiManager$WifiLock;

    .line 68
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/util/bd;->b:I

    if-nez v0, :cond_a

    .line 72
    iget-object v0, p0, Lcom/dropbox/android/util/bd;->a:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 74
    :cond_a
    iget v0, p0, Lcom/dropbox/android/util/bd;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/util/bd;->b:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/util/bd;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/android/util/bd;->b:I

    .line 79
    iget v0, p0, Lcom/dropbox/android/util/bd;->b:I

    if-nez v0, :cond_12

    .line 80
    iget-object v0, p0, Lcom/dropbox/android/util/bd;->a:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    .line 84
    :cond_10
    monitor-exit p0

    return-void

    .line 81
    :cond_12
    :try_start_12
    iget v0, p0, Lcom/dropbox/android/util/bd;->b:I

    if-gez v0, :cond_10

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wifi lock released more times than acquired."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1e

    .line 78
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
