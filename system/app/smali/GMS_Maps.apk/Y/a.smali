.class public abstract LY/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[LY/a;


# instance fields
.field protected b:LY/c;

.field protected c:Ljava/lang/Runnable;

.field protected d:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [LY/a;

    sput-object v0, LY/a;->a:[LY/a;

    return-void
.end method

.method public constructor <init>(LY/c;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, LY/a;-><init>(LY/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LY/a;-><init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LY/a;->g:Ljava/lang/Object;

    iput-object p1, p0, LY/a;->b:LY/c;

    iput-object p2, p0, LY/a;->c:Ljava/lang/Runnable;

    iput-object p3, p0, LY/a;->h:Ljava/lang/String;

    iput-object v1, p0, LY/a;->i:Ljava/lang/String;

    iput-object v1, p0, LY/a;->j:Ljava/lang/String;

    iput-object v1, p0, LY/a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, LY/a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, LY/a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method protected a(I)V
    .registers 2

    iput p1, p0, LY/a;->e:I

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, LY/a;->b:LY/c;

    invoke-virtual {v0, p0}, LY/c;->b(LY/a;)I

    move-result v0

    return v0
.end method

.method abstract c()I
.end method

.method protected d()[LY/a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LY/a;->d:Ljava/util/Vector;

    if-eqz v0, :cond_14

    iget-object v0, p0, LY/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [LY/a;

    iget-object v1, p0, LY/a;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    sget-object v0, LY/a;->a:[LY/a;

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected e()I
    .registers 2

    iget v0, p0, LY/a;->e:I

    return v0
.end method

.method public f()V
    .registers 3

    iget-object v1, p0, LY/a;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, LY/a;->f:I

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    iget-object v0, p0, LY/a;->b:LY/c;

    invoke-virtual {v0, p0}, LY/c;->a(LY/a;)V

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method abstract g()V
.end method

.method h()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, LY/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_22

    :goto_3
    iget-object v1, p0, LY/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget v0, p0, LY/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LY/a;->f:I

    iget-object v0, p0, LY/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_4f

    invoke-virtual {p0}, LY/a;->d()[LY/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_17
    array-length v2, v1

    if-ge v0, v2, :cond_52

    aget-object v2, v1, v0

    invoke-virtual {v2}, LY/a;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime exception ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] thrown by runnable ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LY/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gmm/debug/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    return-void
.end method

.method i()V
    .registers 2

    iget-object v0, p0, LY/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method

.method j()V
    .registers 2

    iget-object v0, p0, LY/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method

.method k()V
    .registers 2

    iget-object v0, p0, LY/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method

.method l()V
    .registers 2

    iget-object v0, p0, LY/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method
