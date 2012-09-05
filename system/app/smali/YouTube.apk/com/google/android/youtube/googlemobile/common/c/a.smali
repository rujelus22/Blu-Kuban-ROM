.class public abstract Lcom/google/android/youtube/googlemobile/common/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/android/youtube/googlemobile/common/c/a;


# instance fields
.field protected b:Lcom/google/android/youtube/googlemobile/common/c/c;

.field protected c:Ljava/lang/Runnable;

.field protected d:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/youtube/googlemobile/common/c/a;

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/c/a;->a:[Lcom/google/android/youtube/googlemobile/common/c/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private h()[Lcom/google/android/youtube/googlemobile/common/c/a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->d:Ljava/util/Vector;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/youtube/googlemobile/common/c/a;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/c/a;->a:[Lcom/google/android/youtube/googlemobile/common/c/a;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method protected final a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->e:I

    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->b(Lcom/google/android/youtube/googlemobile/common/c/a;)I

    move-result v0

    return v0
.end method

.method protected abstract c()I
.end method

.method protected final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->e:I

    return v0
.end method

.method public e()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->f:I

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->a(Lcom/google/android/youtube/googlemobile/common/c/a;)V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract f()V
.end method

.method protected g()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/c/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_22

    :goto_3
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->f:I

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_27

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/c/a;->h()[Lcom/google/android/youtube/googlemobile/common/c/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_17
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/common/c/a;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2a
    return-void
.end method
