.class final Lcom/dropbox/android/taskqueue/O;
.super Ljava/util/TimerTask;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 873
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/O;->a:Lcom/dropbox/android/taskqueue/G;

    .line 874
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/O;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->b()V

    .line 879
    return-void
.end method
