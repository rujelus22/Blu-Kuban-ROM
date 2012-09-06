.class final Lcom/dropbox/android/taskqueue/M;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/R;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/M;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/M;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-static {v0, p1, p2, p3}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/G;Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V

    .line 524
    return-void
.end method
