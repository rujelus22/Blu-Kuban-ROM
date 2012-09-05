.class Lz/p;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# instance fields
.field private final a:Lat/h;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z


# direct methods
.method public constructor <init>(Lat/h;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/p;->a:Lat/h;

    iput-object p2, p0, Lz/p;->b:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lat/h;->e()Z

    move-result v0

    iput-boolean v0, p0, Lz/p;->c:Z

    iget-boolean v0, p0, Lz/p;->c:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lat/h;->g()V

    :cond_14
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2a

    if-eqz p2, :cond_2a

    :goto_6
    if-nez v0, :cond_29

    invoke-static {}, Lz/n;->f()Lcom/google/android/maps/driveabout/vector/dp;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lz/p;->a:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->b(Lat/p;)V

    iget-object v0, p0, Lz/p;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lz/p;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1c
    const-class v1, Lz/n;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_20
    invoke-static {v0}, Lz/n;->a(Z)Z

    const-class v0, Lz/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public a(Lat/g;)V
    .registers 3

    instance-of v0, p1, Lz/q;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lz/p;->a:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->b(Lat/p;)V

    iget-boolean v0, p0, Lz/p;->c:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lz/p;->a:Lat/h;

    invoke-virtual {v0}, Lat/h;->f()V

    :cond_12
    return-void
.end method

.method public b(Lat/g;)V
    .registers 2

    return-void
.end method
