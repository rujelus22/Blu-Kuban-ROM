.class LG/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LG/h;


# direct methods
.method constructor <init>(LG/h;)V
    .registers 2

    iput-object p1, p0, LG/i;->a:LG/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LG/g;)V
    .registers 6

    instance-of v0, p1, LG/d;

    if-eqz v0, :cond_44

    check-cast p1, LG/d;

    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->d(LG/h;)LF/T;

    move-result-object v0

    iget-object v1, p1, LG/d;->a:LF/R;

    invoke-interface {v0, v1}, LF/T;->a(LF/R;)V

    :cond_11
    :goto_11
    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->a(LG/h;)LK/ch;

    move-result-object v0

    invoke-interface {v0}, LK/ch;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->a(LG/h;)LK/ch;

    move-result-object v0

    invoke-interface {v0}, LK/ch;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/g;

    iget-wide v0, v0, LG/g;->c:J

    iget-object v2, p0, LG/i;->a:LG/h;

    invoke-static {v2}, LG/h;->c(LG/h;)LI/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, LI/a;->a(J)V

    iget-object v2, p0, LG/i;->a:LG/h;

    invoke-static {v2}, LG/h;->e(LG/h;)LI/b;

    move-result-object v2

    iget-object v3, p0, LG/i;->a:LG/h;

    invoke-static {v3}, LG/h;->b(LG/h;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, LI/b;->a(Ljava/lang/Runnable;J)Z

    :goto_43
    return-void

    :cond_44
    instance-of v0, p1, LG/e;

    if-eqz v0, :cond_6a

    check-cast p1, LG/e;

    iget-boolean v0, p1, LG/e;->b:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->d(LG/h;)LF/T;

    move-result-object v0

    iget-object v1, p1, LG/e;->a:Ljava/lang/String;

    iget-object v2, p1, LG/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LF/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_5c
    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->d(LG/h;)LF/T;

    move-result-object v0

    iget-object v1, p1, LG/e;->a:Ljava/lang/String;

    iget-object v2, p1, LG/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LF/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_6a
    instance-of v0, p1, LG/f;

    if-eqz v0, :cond_11

    check-cast p1, LG/f;

    iget v0, p1, LG/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->d(LG/h;)LF/T;

    move-result-object v0

    iget-object v1, p1, LG/f;->a:Ljava/lang/String;

    iget-object v2, p1, LG/f;->a:Ljava/lang/String;

    iget v3, p1, LG/f;->b:I

    invoke-interface {v0, v1, v2, v3}, LF/T;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    :cond_85
    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->c(LG/h;)LI/a;

    move-result-object v0

    invoke-virtual {v0}, LI/a;->a()V

    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->f(LG/h;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reached end of log"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_43
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->a(LG/h;)LK/ch;

    move-result-object v0

    invoke-interface {v0}, LK/ch;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->b(LG/h;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-virtual {v0}, LG/h;->e()Z

    move-result v0

    if-nez v0, :cond_21

    monitor-exit v1

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    iget-object v0, p0, LG/i;->a:LG/h;

    invoke-static {v0}, LG/h;->a(LG/h;)LK/ch;

    move-result-object v0

    invoke-interface {v0}, LK/ch;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/g;

    iget-object v2, p0, LG/i;->a:LG/h;

    invoke-static {v2}, LG/h;->c(LG/h;)LI/a;

    move-result-object v2

    iget-wide v3, v0, LG/g;->c:J

    invoke-virtual {v2, v3, v4}, LI/a;->b(J)V

    invoke-direct {p0, v0}, LG/i;->a(LG/g;)V

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_1e

    goto :goto_c
.end method
