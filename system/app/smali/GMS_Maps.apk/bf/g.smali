.class public abstract Lbf/g;
.super Lap/d;


# instance fields
.field private final a:Lcom/google/googlenav/android/ac;

.field private final e:Z

.field private f:Ljava/lang/Runnable;

.field private final g:Ljava/util/concurrent/locks/Lock;

.field private h:Z


# direct methods
.method public constructor <init>(Lap/c;Lcom/google/googlenav/android/ac;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lap/d;-><init>(Lap/c;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbf/g;->g:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lbf/g;->a:Lcom/google/googlenav/android/ac;

    iput-boolean p3, p0, Lbf/g;->e:Z

    invoke-direct {p0}, Lbf/g;->m()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lbf/g;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lbf/g;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lbf/g;->g:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic a(Lbf/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lbf/g;->h:Z

    return p1
.end method

.method static synthetic b(Lbf/g;)Z
    .registers 2

    iget-boolean v0, p0, Lbf/g;->h:Z

    return v0
.end method

.method private m()Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lbf/h;

    invoke-direct {v0, p0}, Lbf/h;-><init>(Lbf/g;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lbf/g;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lbf/g;->h:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/g;->h:Z

    iget-object v0, p0, Lbf/g;->a:Lcom/google/googlenav/android/ac;

    iget-object v1, p0, Lbf/g;->f:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lbf/g;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    :cond_15
    iget-object v0, p0, Lbf/g;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lbf/g;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract b()V
.end method
