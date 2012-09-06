.class final Lcom/dropbox/android/taskqueue/T;
.super Ljava/util/TimerTask;
.source "panda.py"


# instance fields
.field final synthetic a:Ljava/util/Timer;

.field final synthetic b:Lcom/dropbox/android/taskqueue/S;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/S;Ljava/util/Timer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/T;->b:Lcom/dropbox/android/taskqueue/S;

    iput-object p2, p0, Lcom/dropbox/android/taskqueue/T;->a:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/T;->b:Lcom/dropbox/android/taskqueue/S;

    iget-object v0, v0, Lcom/dropbox/android/taskqueue/S;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->b()V

    .line 920
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/T;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 921
    return-void
.end method
