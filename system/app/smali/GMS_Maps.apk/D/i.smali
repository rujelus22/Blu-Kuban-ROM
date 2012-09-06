.class LD/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LD/h;


# direct methods
.method constructor <init>(LD/h;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, LD/i;->a:LD/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LD/g;)V
    .registers 6
    .parameter

    .prologue
    .line 107
    instance-of v0, p1, LD/d;

    if-eqz v0, :cond_44

    .line 108
    check-cast p1, LD/d;

    .line 114
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->d(LD/h;)LC/T;

    move-result-object v0

    iget-object v1, p1, LD/d;->a:LC/R;

    invoke-interface {v0, v1}, LC/T;->a(LC/R;)V

    .line 130
    :cond_11
    :goto_11
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->a(LD/h;)Lcom/google/common/collect/cW;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cW;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 131
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->a(LD/h;)Lcom/google/common/collect/cW;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cW;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/g;

    iget-wide v0, v0, LD/g;->c:J

    .line 133
    iget-object v2, p0, LD/i;->a:LD/h;

    invoke-static {v2}, LD/h;->c(LD/h;)LF/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, LF/a;->a(J)V

    .line 134
    iget-object v2, p0, LD/i;->a:LD/h;

    invoke-static {v2}, LD/h;->e(LD/h;)LF/b;

    move-result-object v2

    iget-object v3, p0, LD/i;->a:LD/h;

    invoke-static {v3}, LD/h;->b(LD/h;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, LF/b;->a(Ljava/lang/Runnable;J)Z

    .line 140
    :goto_43
    return-void

    .line 115
    :cond_44
    instance-of v0, p1, LD/e;

    if-eqz v0, :cond_6a

    .line 116
    check-cast p1, LD/e;

    .line 117
    iget-boolean v0, p1, LD/e;->b:Z

    if-eqz v0, :cond_5c

    .line 118
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->d(LD/h;)LC/T;

    move-result-object v0

    iget-object v1, p1, LD/e;->a:Ljava/lang/String;

    iget-object v2, p1, LD/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LC/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 120
    :cond_5c
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->d(LD/h;)LC/T;

    move-result-object v0

    iget-object v1, p1, LD/e;->a:Ljava/lang/String;

    iget-object v2, p1, LD/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LC/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 122
    :cond_6a
    instance-of v0, p1, LD/f;

    if-eqz v0, :cond_11

    .line 123
    check-cast p1, LD/f;

    .line 125
    iget v0, p1, LD/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 126
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->d(LD/h;)LC/T;

    move-result-object v0

    iget-object v1, p1, LD/f;->a:Ljava/lang/String;

    iget-object v2, p1, LD/f;->a:Ljava/lang/String;

    iget v3, p1, LD/f;->b:I

    invoke-interface {v0, v1, v2, v3}, LC/T;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    .line 137
    :cond_85
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->c(LD/h;)LF/a;

    move-result-object v0

    invoke-virtual {v0}, LF/a;->a()V

    .line 138
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->f(LD/h;)Landroid/content/Context;

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

    .prologue
    .line 92
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->a(LD/h;)Lcom/google/common/collect/cW;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cW;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 104
    :goto_c
    return-void

    .line 95
    :cond_d
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->b(LD/h;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_14
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-virtual {v0}, LD/h;->e()Z

    move-result v0

    if-nez v0, :cond_21

    .line 97
    monitor-exit v1

    goto :goto_c

    .line 103
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v0

    .line 99
    :cond_21
    :try_start_21
    iget-object v0, p0, LD/i;->a:LD/h;

    invoke-static {v0}, LD/h;->a(LD/h;)Lcom/google/common/collect/cW;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cW;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/g;

    .line 101
    iget-object v2, p0, LD/i;->a:LD/h;

    invoke-static {v2}, LD/h;->c(LD/h;)LF/a;

    move-result-object v2

    iget-wide v3, v0, LD/g;->c:J

    invoke-virtual {v2, v3, v4}, LF/a;->b(J)V

    .line 102
    invoke-direct {p0, v0}, LD/i;->a(LD/g;)V

    .line 103
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_1e

    goto :goto_c
.end method
