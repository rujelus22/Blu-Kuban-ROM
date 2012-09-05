.class Ld/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:LW/a;

.field final synthetic c:Ld/L;


# direct methods
.method constructor <init>(Ld/L;ILW/a;)V
    .registers 4

    iput-object p1, p0, Ld/N;->c:Ld/L;

    iput p2, p0, Ld/N;->a:I

    iput-object p3, p0, Ld/N;->b:LW/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Ld/N;->c:Ld/L;

    invoke-static {v0}, Ld/L;->c(Ld/L;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-class v2, Ld/L;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_18
    iget-object v0, p0, Ld/N;->c:Ld/L;

    invoke-static {v0}, Ld/L;->d(Ld/L;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Ld/N;->c:Ld/L;

    iget-object v0, v0, Ld/L;->a:Ld/C;

    if-eqz v0, :cond_32

    iget-object v0, p0, Ld/N;->c:Ld/L;

    iget-object v0, v0, Ld/L;->a:Ld/C;

    iget v2, p0, Ld/N;->a:I

    const/4 v3, 0x0

    const-string v4, "Failed to create lock file."

    invoke-interface {v0, v2, v3, v4}, Ld/C;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_58

    :cond_32
    :goto_32
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_36
    :try_start_36
    iget-object v0, p0, Ld/N;->c:Ld/L;

    iget-object v2, p0, Ld/N;->b:LW/a;

    invoke-static {v0, v2}, Ld/L;->a(Ld/L;LW/a;)Ld/ak;

    move-result-object v0

    iget-object v2, p0, Ld/N;->c:Ld/L;

    iget-object v2, v2, Ld/L;->a:Ld/C;

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Ld/ak;->a()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Ld/N;->c:Ld/L;

    iget-object v2, v2, Ld/L;->a:Ld/C;

    iget v3, p0, Ld/N;->a:I

    invoke-virtual {v0}, Ld/ak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ld/C;->a(ILjava/lang/String;)V
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_58

    goto :goto_32

    :catchall_58
    move-exception v0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :cond_5d
    :try_start_5d
    iget-object v2, p0, Ld/N;->c:Ld/L;

    iget-object v2, v2, Ld/L;->a:Ld/C;

    iget v3, p0, Ld/N;->a:I

    invoke-virtual {v0}, Ld/ak;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ld/ak;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Ld/C;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_58

    goto :goto_32
.end method
