.class public Lat/s;
.super Lat/a;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZZLjava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Lat/a;-><init>()V

    iput p1, p0, Lat/s;->a:I

    iput-object p2, p0, Lat/s;->b:[B

    iput-boolean p3, p0, Lat/s;->c:Z

    iput-boolean p4, p0, Lat/s;->d:Z

    iput-boolean p5, p0, Lat/s;->e:Z

    iput-object p6, p0, Lat/s;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lat/s;->a:I

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    iget-object v0, p0, Lat/s;->b:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/s;->f:Z

    iget-object v0, p0, Lat/s;->h:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lat/s;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lat/s;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lat/s;->g:Z

    iget-object v0, p0, Lat/s;->h:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lat/s;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lat/s;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_10
    return v2

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public i_()Z
    .registers 2

    iget-boolean v0, p0, Lat/s;->e:Z

    return v0
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, Lat/s;->c:Z

    return v0
.end method

.method public z_()Z
    .registers 2

    iget-boolean v0, p0, Lat/s;->d:Z

    return v0
.end method
