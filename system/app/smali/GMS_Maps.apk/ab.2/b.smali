.class public Lab/b;
.super Lat/a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lam/b;

.field private final c:I

.field private d:[Lcom/google/googlenav/ah;

.field private final e:Lab/c;


# direct methods
.method public constructor <init>(ILam/b;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lab/b;-><init>(ILam/b;Lab/c;)V

    return-void
.end method

.method public constructor <init>(ILam/b;Lab/c;)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lab/b;->a:Ljava/lang/Object;

    iput p1, p0, Lab/b;->c:I

    iput-object p2, p0, Lab/b;->b:Lam/b;

    iput-object p3, p0, Lab/b;->e:Lab/c;

    return-void
.end method


# virtual methods
.method public X()V
    .registers 3

    iget-object v1, p0, Lab/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lab/b;->d:[Lcom/google/googlenav/ah;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lab/b;->d:[Lcom/google/googlenav/ah;

    iget-object v0, p0, Lab/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x67

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/c;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget v2, p0, Lab/b;->c:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x1

    iget-object v2, p0, Lab/b;->b:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    invoke-static {p1, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x1

    sget-object v0, LbD/c;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    iget-object v3, p0, Lab/b;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    new-array v0, v2, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lab/b;->d:[Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_25

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    iget-object v5, p0, Lab/b;->d:[Lcom/google/googlenav/ah;

    invoke-static {v4}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v4

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_25
    iget-object v0, p0, Lab/b;->e:Lab/c;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lab/b;->e:Lab/c;

    invoke-interface {v0}, Lab/c;->a()V

    :cond_2e
    iget-object v0, p0, Lab/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    return v6

    :catchall_35
    move-exception v0

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v0
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()[Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lab/b;->d:[Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public k()[Lcom/google/googlenav/ah;
    .registers 3

    iget-object v1, p0, Lab/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lab/b;->d:[Lcom/google/googlenav/ah;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v0, :cond_c

    :try_start_7
    iget-object v0, p0, Lab/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13

    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_10

    iget-object v0, p0, Lab/b;->d:[Lcom/google/googlenav/ah;

    return-object v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0

    :catch_13
    move-exception v0

    goto :goto_c
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
