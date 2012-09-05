.class public LR/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static a:Lcom/google/gmm/debug/c;


# instance fields
.field protected b:Z

.field private c:Ljava/util/Vector;

.field private d:Ljava/lang/Object;

.field private e:LY/c;

.field private f:LX/c;

.field private g:LU/i;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, LR/c;

    invoke-static {v0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Class;)Lcom/google/gmm/debug/c;

    move-result-object v0

    sput-object v0, LR/c;->a:Lcom/google/gmm/debug/c;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LR/c;->c:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LY/c;LX/c;LU/i;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LR/c;->c:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR/c;->d:Ljava/lang/Object;

    iput-object p1, p0, LR/c;->e:LY/c;

    iput-object p2, p0, LR/c;->f:LX/c;

    iput-object p3, p0, LR/c;->g:LU/i;

    iput-object p4, p0, LR/c;->h:Ljava/lang/String;

    new-array v0, p5, [Ljava/lang/Thread;

    iput-object v0, p0, LR/c;->i:[Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(LR/c;Ljava/lang/String;Z)LU/f;
    .registers 4

    invoke-direct {p0, p1, p2}, LR/c;->a(Ljava/lang/String;Z)LU/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)LU/f;
    .registers 4

    iget-object v0, p0, LR/c;->g:LU/i;

    invoke-interface {v0, p1, p2}, LU/i;->a(Ljava/lang/String;Z)LU/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LR/c;)LY/c;
    .registers 2

    invoke-direct {p0}, LR/c;->b()LY/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LR/c;LR/d;)Z
    .registers 3

    invoke-direct {p0, p1}, LR/c;->a(LR/d;)Z

    move-result v0

    return v0
.end method

.method private a(LR/d;)Z
    .registers 4

    iget-object v1, p0, LR/c;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LR/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, LR/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, LR/c;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_17

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static synthetic b(LR/c;)LU/i;
    .registers 2

    iget-object v0, p0, LR/c;->g:LU/i;

    return-object v0
.end method

.method private b()LY/c;
    .registers 2

    iget-object v0, p0, LR/c;->e:LY/c;

    return-object v0
.end method

.method private c()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, LR/c;->d:Ljava/lang/Object;

    monitor-enter v1

    :goto_4
    :try_start_4
    iget-object v2, p0, LR/c;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v2, p0, LR/c;->b:Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1f

    if-eqz v2, :cond_19

    :try_start_10
    iget-object v2, p0, LR/c;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_4

    :catch_16
    move-exception v2

    :try_start_17
    monitor-exit v1

    :goto_18
    return v0

    :cond_19
    iget-boolean v2, p0, LR/c;->b:Z

    if-nez v2, :cond_22

    monitor-exit v1

    goto :goto_18

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, LR/c;->c:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR/d;

    iget-object v2, p0, LR/c;->c:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_1f

    :try_start_32
    sget-object v1, LR/c;->a:Lcom/google/gmm/debug/c;

    const-string v2, "Executing AsyncHttpRequest "

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LR/d;->run()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3c} :catch_3e

    :goto_3c
    const/4 v0, 0x1

    goto :goto_18

    :catch_3e
    move-exception v0

    sget-object v1, LR/c;->a:Lcom/google/gmm/debug/c;

    const-string v2, "AsyncHttpRequestFactory.run(): uncaught exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c
.end method


# virtual methods
.method public a(Ljava/lang/String;I)LR/b;
    .registers 4

    new-instance v0, LR/d;

    invoke-direct {v0, p0, p1, p2}, LR/d;-><init>(LR/c;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a()V
    .registers 7

    iget-object v1, p0, LR/c;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, LR/c;->b:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, LR/c;->b:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, LR/c;->i:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, LR/c;->i:[Ljava/lang/Thread;

    iget-object v3, p0, LR/c;->f:LX/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LR/c;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, LX/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, LR/c;->i:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public run()V
    .registers 3

    sget-object v0, LR/c;->a:Lcom/google/gmm/debug/c;

    const-string v1, "run"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0}, LR/c;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void
.end method
