.class final Lcom/google/android/youtube/googlemobile/masf/b/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/a/n;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/l;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/l;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    :try_start_28
    const-string v0, "WindowResumeService.Listener.requestCompleted(): try block"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/g;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;-><init>(Lcom/google/android/youtube/googlemobile/masf/a/o;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_61
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_44

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/l;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    :goto_43
    return-void

    :catch_44
    move-exception v0

    :try_start_45
    const-string v1, "WindowResumeService.Listener.requestCompleted(): catch block"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/b/a/g;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_61

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/l;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    goto :goto_43

    :catchall_61
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/l;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    :try_start_26
    const-string v0, "WindowResumeService.Listener.requestFailed(): try block"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/g;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_44

    const-string v0, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/l;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    return-void

    :catchall_44
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/l;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    throw v0
.end method
