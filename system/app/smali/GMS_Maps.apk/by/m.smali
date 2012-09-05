.class Lby/m;
.super Ljava/lang/Object;

# interfaces
.implements Lbw/n;


# instance fields
.field final synthetic a:Lby/h;


# direct methods
.method private constructor <init>(Lby/h;)V
    .registers 2

    iput-object p1, p0, Lby/m;->a:Lby/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lby/h;Lby/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lby/m;-><init>(Lby/h;)V

    return-void
.end method


# virtual methods
.method public a(Lbw/m;Lbw/o;)V
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

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    check-cast p1, Lby/f;

    :try_start_28
    const-string v0, "WindowResumeService.Listener.requestCompleted(): try block"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    new-instance v0, Lby/g;

    invoke-direct {v0, p2}, Lby/g;-><init>(Lbw/o;)V

    invoke-virtual {p1, v0}, Lby/f;->a(Lby/g;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_61
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_44

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/m;->a:Lby/h;

    invoke-static {v0}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v0

    invoke-virtual {v0}, LY/b;->f()V

    :goto_43
    return-void

    :catch_44
    move-exception v0

    :try_start_45
    const-string v1, "WindowResumeService.Listener.requestCompleted(): catch block"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    new-instance v1, Lby/g;

    invoke-direct {v1, v0}, Lby/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v1}, Lby/f;->a(Lby/g;)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_61

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/m;->a:Lby/h;

    invoke-static {v0}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v0

    invoke-virtual {v0}, LY/b;->f()V

    goto :goto_43

    :catchall_61
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lby/m;->a:Lby/h;

    invoke-static {v1}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v1

    invoke-virtual {v1}, LY/b;->f()V

    throw v0
.end method

.method public a(Lbw/m;Ljava/lang/Exception;)V
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

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    :try_start_26
    const-string v0, "WindowResumeService.Listener.requestFailed(): try block"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    check-cast p1, Lby/f;

    new-instance v0, Lby/g;

    invoke-direct {v0, p2}, Lby/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lby/f;->a(Lby/g;)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_44

    const-string v0, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/m;->a:Lby/h;

    invoke-static {v0}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v0

    invoke-virtual {v0}, LY/b;->f()V

    return-void

    :catchall_44
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lby/m;->a:Lby/h;

    invoke-static {v1}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v1

    invoke-virtual {v1}, LY/b;->f()V

    throw v0
.end method
