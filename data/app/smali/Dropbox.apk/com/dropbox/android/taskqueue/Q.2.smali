.class final Lcom/dropbox/android/taskqueue/Q;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/taskqueue/R;

.field private final b:Lcom/dropbox/android/taskqueue/DbTask;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/R;Lcom/dropbox/android/taskqueue/DbTask;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/Q;->a:Lcom/dropbox/android/taskqueue/R;

    .line 894
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/Q;->b:Lcom/dropbox/android/taskqueue/DbTask;

    .line 895
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 899
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    .line 901
    :try_start_2
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/Q;->b:Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->c()Lcom/dropbox/android/taskqueue/m;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_10

    move-result-object v0

    .line 903
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/Q;->a:Lcom/dropbox/android/taskqueue/R;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/Q;->b:Lcom/dropbox/android/taskqueue/DbTask;

    invoke-interface {v1, p0, v2, v0}, Lcom/dropbox/android/taskqueue/R;->a(Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V

    .line 905
    return-void

    .line 903
    :catchall_10
    move-exception v0

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/Q;->a:Lcom/dropbox/android/taskqueue/R;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/Q;->b:Lcom/dropbox/android/taskqueue/DbTask;

    invoke-interface {v2, p0, v3, v1}, Lcom/dropbox/android/taskqueue/R;->a(Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V

    throw v0
.end method
