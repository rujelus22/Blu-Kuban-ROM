.class public Lcom/google/android/youtube/googlemobile/common/c/b;
.super Lcom/google/android/youtube/googlemobile/common/c/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/c/a;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    iput p3, p0, Lcom/google/android/youtube/googlemobile/common/c/b;->a:I

    return-void
.end method


# virtual methods
.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/b;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->c(Lcom/google/android/youtube/googlemobile/common/c/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/b;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->a(Lcom/google/android/youtube/googlemobile/common/c/b;)V

    return-void
.end method

.method public final declared-synchronized h()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/b;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
