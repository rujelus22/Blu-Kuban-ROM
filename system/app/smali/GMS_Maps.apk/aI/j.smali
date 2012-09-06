.class public LaI/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaI/i;

.field private b:Z

.field private c:LY/d;


# direct methods
.method protected constructor <init>(LaI/i;)V
    .registers 3
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, LaI/j;->a:LaI/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, LaI/j;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaI/j;->b:Z

    if-nez v0, :cond_b

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, LaI/j;->b:Z

    .line 198
    invoke-virtual {p0}, LaI/j;->run()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 200
    :cond_b
    monitor-exit p0

    return-void

    .line 194
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .registers 4

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaI/j;->a:LaI/i;

    invoke-static {v0}, LaI/i;->a(LaI/i;)LaI/k;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 206
    iget-object v0, p0, LaI/j;->a:LaI/i;

    invoke-static {v0}, LaI/i;->b(LaI/i;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, LaI/j;->a:LaI/i;

    invoke-static {v1}, LaI/i;->a(LaI/i;)LaI/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 208
    iget-object v1, p0, LaI/j;->a:LaI/i;

    invoke-static {v1}, LaI/i;->a(LaI/i;)LaI/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 209
    iget-object v0, p0, LaI/j;->a:LaI/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaI/i;->a(LaI/i;LaI/k;)LaI/k;

    .line 212
    new-instance v0, LY/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaI/j;->c:LY/d;

    .line 213
    iget-object v0, p0, LaI/j;->c:LY/d;

    iget-object v1, p0, LaI/j;->a:LaI/i;

    invoke-static {v1}, LaI/i;->c(LaI/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 214
    iget-object v0, p0, LaI/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->g()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4c

    .line 219
    :goto_46
    monitor-exit p0

    return-void

    .line 217
    :cond_48
    const/4 v0, 0x0

    :try_start_49
    iput-boolean v0, p0, LaI/j;->b:Z
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4c

    goto :goto_46

    .line 205
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
