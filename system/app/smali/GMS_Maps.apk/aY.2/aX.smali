.class public LaY/aX;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/googlenav/android/ac;

.field private final c:LaY/aZ;

.field private d:Z

.field private e:Lcom/google/googlenav/ui/bo;

.field private f:Lcom/google/googlenav/ui/bl;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/ac;LaY/aZ;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaY/aX;->a:Ljava/lang/Object;

    iput-object p1, p0, LaY/aX;->b:Lcom/google/googlenav/android/ac;

    iput-object p2, p0, LaY/aX;->c:LaY/aZ;

    if-nez p3, :cond_1c

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/aX;->d:Z

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/aX;->d:Z

    goto :goto_1b
.end method

.method static synthetic a(LaY/aX;)Lcom/google/googlenav/ui/bl;
    .registers 2

    iget-object v0, p0, LaY/aX;->f:Lcom/google/googlenav/ui/bl;

    return-object v0
.end method

.method private a(Z)V
    .registers 6

    iget-object v1, p0, LaY/aX;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaY/aX;->f:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_14

    iget-object v0, p0, LaY/aX;->e:Lcom/google/googlenav/ui/bo;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_16

    iget-object v0, p0, LaY/aX;->e:Lcom/google/googlenav/ui/bo;

    iget-object v2, p0, LaY/aX;->f:Lcom/google/googlenav/ui/bl;

    invoke-interface {v0, v2}, Lcom/google/googlenav/ui/bo;->a(Lcom/google/googlenav/ui/bl;)V

    :cond_14
    :goto_14
    monitor-exit v1

    return-void

    :cond_16
    const/4 v0, 0x1

    iget-object v2, p0, LaY/aX;->b:Lcom/google/googlenav/android/ac;

    new-instance v3, LaY/aY;

    invoke-direct {v3, p0}, LaY/aY;-><init>(LaY/aX;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_14

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method static synthetic b(LaY/aX;)Lcom/google/googlenav/ui/bo;
    .registers 2

    iget-object v0, p0, LaY/aX;->e:Lcom/google/googlenav/ui/bo;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bl;
    .registers 2

    iget-object v0, p0, LaY/aX;->f:Lcom/google/googlenav/ui/bl;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bo;)V
    .registers 4

    iget-object v1, p0, LaY/aX;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, LaY/aX;->e:Lcom/google/googlenav/ui/bo;

    iget-boolean v0, p0, LaY/aX;->d:Z

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/aX;->d:Z

    :goto_14
    monitor-exit v1

    return-void

    :cond_16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaY/aX;->a(Z)V

    goto :goto_14

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, LaY/aX;->c:LaY/aZ;

    invoke-interface {v0}, LaY/aZ;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iput-object v0, p0, LaY/aX;->f:Lcom/google/googlenav/ui/bl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaY/aX;->a(Z)V

    return-void
.end method
