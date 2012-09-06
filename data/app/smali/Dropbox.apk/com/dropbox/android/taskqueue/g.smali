.class final Lcom/dropbox/android/taskqueue/g;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/l;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/DownloadTask;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/DownloadTask;)V
    .registers 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 78
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/g;->a:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/g;->b:J

    .line 81
    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/g;->c:J

    .line 82
    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/g;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 86
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    .line 87
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->f()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 88
    const-string v1, "start"

    invoke-static {v1, p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "size"

    iget-wide v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "mime"

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 90
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;JJ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 107
    cmp-long v0, p3, v7

    if-lez v0, :cond_4f

    iget-wide v5, p0, Lcom/dropbox/android/taskqueue/g;->d:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_4f

    move v0, v1

    .line 120
    :goto_13
    iget-wide v5, p0, Lcom/dropbox/android/taskqueue/g;->b:J

    sub-long v5, p3, v5

    const-wide/32 v7, 0x80000

    cmp-long v5, v5, v7

    if-ltz v5, :cond_51

    iget-wide v5, p0, Lcom/dropbox/android/taskqueue/g;->d:J

    const-wide/16 v7, 0x78

    cmp-long v5, v5, v7

    if-gez v5, :cond_51

    iget-wide v5, p0, Lcom/dropbox/android/taskqueue/g;->c:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_51

    .line 123
    :goto_30
    if-nez v0, :cond_34

    if-eqz v1, :cond_4e

    .line 124
    :cond_34
    const-string v0, "progress"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1, p3, p4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 125
    iput-wide p3, p0, Lcom/dropbox/android/taskqueue/g;->b:J

    .line 126
    iput-wide v3, p0, Lcom/dropbox/android/taskqueue/g;->c:J

    .line 127
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/g;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/g;->d:J

    .line 129
    :cond_4e
    return-void

    :cond_4f
    move v0, v2

    .line 107
    goto :goto_13

    :cond_51
    move v1, v2

    .line 120
    goto :goto_30
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const-string v0, "error"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 134
    return-void
.end method

.method public final b(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 143
    const-string v0, "cancel"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 144
    return-void
.end method

.method public final c(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 138
    const-string v0, "success"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 139
    return-void
.end method
