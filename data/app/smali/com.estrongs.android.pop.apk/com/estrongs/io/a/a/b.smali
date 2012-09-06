.class public Lcom/estrongs/io/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/io/a/d;


# instance fields
.field b:I

.field c:Landroid/os/Bundle;

.field protected d:Lcom/estrongs/io/archive/d;

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/lang/Object;

.field i:I


# direct methods
.method public constructor <init>(Lcom/estrongs/io/archive/d;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/estrongs/io/a/a/b;->b:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/a/a/b;->c:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/estrongs/io/a/a/b;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/io/a/a/b;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/io/a/a/b;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/a/a/b;->h:Ljava/lang/Object;

    iput v1, p0, Lcom/estrongs/io/a/a/b;->i:I

    iput-object p1, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->f:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    iput-wide p1, v0, Lcom/estrongs/io/archive/d;->f:J

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z

    goto :goto_8
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->f:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    iput-object p1, v0, Lcom/estrongs/io/archive/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    iget v1, p0, Lcom/estrongs/io/a/a/b;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/io/a/a/b;->i:I

    iput v1, v0, Lcom/estrongs/io/archive/d;->g:I

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z

    goto :goto_8
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 7

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->f:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    iput-object p1, v0, Lcom/estrongs/io/archive/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    iput-wide p2, v0, Lcom/estrongs/io/archive/d;->c:J

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    iput p4, v0, Lcom/estrongs/io/archive/d;->d:I

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z

    goto :goto_8
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->f:Z

    return v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/b;->e:Z

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/b;->e:Z

    iget-object v1, p0, Lcom/estrongs/io/a/a/b;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/b;->f:Z

    return-void
.end method
