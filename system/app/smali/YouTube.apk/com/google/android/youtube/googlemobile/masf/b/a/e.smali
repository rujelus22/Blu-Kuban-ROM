.class public abstract Lcom/google/android/youtube/googlemobile/masf/b/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/b;->h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;-><init>(Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/a;

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.removeClientTicketMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.addClientTicketMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
