.class public abstract Lcom/dropbox/android/taskqueue/DbTask;
.super Lcom/dropbox/android/taskqueue/k;
.source "panda.py"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/k;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/DbTask;->a:J

    .line 21
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/DbTask;->j()Lcom/dropbox/android/taskqueue/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DbTask;->a(Lcom/dropbox/android/taskqueue/l;)V

    .line 22
    return-void
.end method

.method private j()Lcom/dropbox/android/taskqueue/l;
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/dropbox/android/taskqueue/f;

    invoke-direct {v0, p0}, Lcom/dropbox/android/taskqueue/f;-><init>(Lcom/dropbox/android/taskqueue/DbTask;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dropbox/android/taskqueue/DbTask;)I
    .registers 5
    .parameter

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/DbTask;->a:J

    long-to-int v0, v0

    iget-wide v1, p1, Lcom/dropbox/android/taskqueue/DbTask;->a:J

    long-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    if-eq p2, v0, :cond_1e

    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 97
    sget-object v0, Lcom/dropbox/android/util/aw;->h:Lcom/dropbox/android/util/aw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 99
    :cond_1e
    return-void
.end method

.method public final b(J)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/dropbox/android/taskqueue/DbTask;->a:J

    .line 83
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/DbTask;->a(Lcom/dropbox/android/taskqueue/DbTask;)I

    move-result v0

    return v0
.end method

.method public abstract e()Ldbxyzptlk/i/i;
.end method

.method protected abstract f()J
.end method

.method public abstract h()Landroid/content/ContentValues;
.end method

.method public abstract i()Landroid/net/Uri;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public final m()J
    .registers 3

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/DbTask;->a:J

    return-wide v0
.end method

.method public final n()I
    .registers 2

    .prologue
    .line 90
    const/16 v0, 0x14

    return v0
.end method
