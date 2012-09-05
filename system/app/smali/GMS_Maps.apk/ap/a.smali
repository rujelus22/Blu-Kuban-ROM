.class public abstract Lap/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lap/a;


# instance fields
.field protected b:Lap/c;

.field protected c:Ljava/lang/Runnable;

.field protected d:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lap/a;

    sput-object v0, Lap/a;->a:[Lap/a;

    return-void
.end method

.method public constructor <init>(Lap/c;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lap/a;-><init>(Lap/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lap/a;-><init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lap/a;->g:Ljava/lang/Object;

    iput-object p1, p0, Lap/a;->b:Lap/c;

    iput-object p2, p0, Lap/a;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lap/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lap/a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lap/a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method protected a(I)V
    .registers 2

    iput p1, p0, Lap/a;->e:I

    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lap/a;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->b(Lap/a;)I

    move-result v0

    return v0
.end method

.method abstract d()I
.end method

.method protected e()[Lap/a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lap/a;->d:Ljava/util/Vector;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lap/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lap/a;

    iget-object v1, p0, Lap/a;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    sget-object v0, Lap/a;->a:[Lap/a;

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected f()I
    .registers 2

    iget v0, p0, Lap/a;->e:I

    return v0
.end method

.method public g()V
    .registers 3

    iget-object v1, p0, Lap/a;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lap/a;->f:I

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    iget-object v0, p0, Lap/a;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->a(Lap/a;)V

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method abstract h()V
.end method

.method i()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lap/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_22

    :goto_3
    iget-object v1, p0, Lap/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget v0, p0, Lap/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lap/a;->f:I

    iget-object v0, p0, Lap/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_4f

    invoke-virtual {p0}, Lap/a;->e()[Lap/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_17
    array-length v2, v1

    if-ge v0, v2, :cond_52

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lap/a;->g()V

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

    iget-object v2, p0, Lap/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

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
