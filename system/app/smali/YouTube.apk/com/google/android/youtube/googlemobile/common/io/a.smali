.class public abstract Lcom/google/android/youtube/googlemobile/common/io/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/d;


# instance fields
.field protected final a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->b:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->c:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->d:Z

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->b:Z

    iget-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->d:Z

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_15

    move v0, v1

    :cond_15
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->d:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->c:Z

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->c:Z

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return v1

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
