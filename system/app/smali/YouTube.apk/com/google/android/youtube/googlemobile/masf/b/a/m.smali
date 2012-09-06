.class final Lcom/google/android/youtube/googlemobile/masf/b/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/m;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/m;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/m;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/m;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/m;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;

    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_28

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a()V

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method
