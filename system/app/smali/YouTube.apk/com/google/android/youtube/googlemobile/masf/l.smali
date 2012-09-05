.class final Lcom/google/android/youtube/googlemobile/masf/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/util/b;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/youtube/googlemobile/masf/k;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/googlemobile/masf/k;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/l;->b:Lcom/google/android/youtube/googlemobile/masf/k;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/l;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/l;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/l;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
