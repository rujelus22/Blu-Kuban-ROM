.class final Lcom/google/android/youtube/googlemobile/masf/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/common/async/b;

.field final synthetic b:[Lcom/google/android/youtube/googlemobile/masf/a/m;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/youtube/googlemobile/masf/f;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/common/async/b;[Lcom/google/android/youtube/googlemobile/masf/a/m;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/i;->d:Lcom/google/android/youtube/googlemobile/masf/f;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/i;->a:Lcom/google/android/youtube/googlemobile/common/async/b;

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/masf/i;->b:[Lcom/google/android/youtube/googlemobile/masf/a/m;

    iput p4, p0, Lcom/google/android/youtube/googlemobile/masf/i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/i;->a:Lcom/google/android/youtube/googlemobile/common/async/b;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/async/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/i;->d:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/i;->b:[Lcom/google/android/youtube/googlemobile/masf/a/m;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/i;->a:Lcom/google/android/youtube/googlemobile/common/async/b;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/async/b;->c()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/f;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_15
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/i;->d:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/i;->b:[Lcom/google/android/youtube/googlemobile/masf/a/m;

    invoke-static {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/f;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/i;->d:Lcom/google/android/youtube/googlemobile/masf/f;

    iget v1, v0, Lcom/google/android/youtube/googlemobile/masf/f;->m:I

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/i;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/youtube/googlemobile/masf/f;->m:I
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_35

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/i;->a:Lcom/google/android/youtube/googlemobile/common/async/b;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/async/b;->b()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/i;->d:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/i;->a:Lcom/google/android/youtube/googlemobile/common/async/b;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/i;->b:[Lcom/google/android/youtube/googlemobile/masf/a/m;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/common/async/b;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_15

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/i;->a:Lcom/google/android/youtube/googlemobile/common/async/b;

    invoke-interface {v1}, Lcom/google/android/youtube/googlemobile/common/async/b;->b()V

    throw v0
.end method
