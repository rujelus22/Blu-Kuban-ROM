.class public final Lcom/google/android/youtube/googlemobile/common/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/b/c;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->a:I

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->b:I

    return-void
.end method

.method private declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/b/a;->a()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/youtube/googlemobile/common/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/b/a;->b()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/b/a;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/youtube/googlemobile/common/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/b/a;->c()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/b/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/b/b;-><init>(Lcom/google/android/youtube/googlemobile/common/b/a;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
