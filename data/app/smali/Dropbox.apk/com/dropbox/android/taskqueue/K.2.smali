.class final Lcom/dropbox/android/taskqueue/K;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/util/aH;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/G;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/K;->b:Lcom/dropbox/android/taskqueue/G;

    iput-wide p2, p0, Lcom/dropbox/android/taskqueue/K;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/DbTask;)Z
    .registers 6
    .parameter

    .prologue
    .line 368
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dropbox/android/taskqueue/K;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 365
    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/K;->a(Lcom/dropbox/android/taskqueue/DbTask;)Z

    move-result v0

    return v0
.end method
