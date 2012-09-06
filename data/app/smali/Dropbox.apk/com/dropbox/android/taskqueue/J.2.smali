.class final Lcom/dropbox/android/taskqueue/J;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/util/aH;


# instance fields
.field final synthetic a:Ldbxyzptlk/i/i;

.field final synthetic b:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/G;Ldbxyzptlk/i/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/J;->b:Lcom/dropbox/android/taskqueue/G;

    iput-object p2, p0, Lcom/dropbox/android/taskqueue/J;->a:Ldbxyzptlk/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/DbTask;)Z
    .registers 4
    .parameter

    .prologue
    .line 355
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->e()Ldbxyzptlk/i/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/J;->a:Ldbxyzptlk/i/i;

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 352
    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/J;->a(Lcom/dropbox/android/taskqueue/DbTask;)Z

    move-result v0

    return v0
.end method
