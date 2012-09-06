.class final Lcom/dropbox/android/taskqueue/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/l;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/DbTask;

.field private b:J


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/DbTask;)V
    .registers 4
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/f;->a:Lcom/dropbox/android/taskqueue/DbTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/f;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 31
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->f()J

    move-result-wide v1

    .line 32
    const-wide/32 v3, 0x800000

    cmp-long v0, v1, v3

    if-lez v0, :cond_35

    const/4 v0, 0x1

    .line 33
    :goto_f
    const-string v3, "start"

    invoke-static {v3, p1}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v4, "mime"

    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v3, v4, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "is.large"

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 36
    return-void

    .line 32
    :cond_35
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;JJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 46
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/f;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    const/4 v0, 0x1

    .line 47
    :goto_9
    if-eqz v0, :cond_1f

    .line 48
    const-string v0, "progress"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1, p3, p4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 49
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/f;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/f;->b:J

    .line 51
    :cond_1f
    return-void

    .line 46
    :cond_20
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;Landroid/net/Uri;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Ldbxyzptlk/h/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "error"

    invoke-static {v1, p1}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "stack_trace"

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 59
    return-void
.end method

.method public final b(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 68
    const-string v0, "cancel"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 69
    return-void
.end method

.method public final c(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    const-string v0, "success"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 64
    return-void
.end method
