.class final Lcom/dropbox/android/taskqueue/u;
.super Lcom/dropbox/android/taskqueue/y;
.source "panda.py"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/y;-><init>(Lcom/dropbox/android/taskqueue/r;)V

    .line 140
    iput-boolean v1, p0, Lcom/dropbox/android/taskqueue/u;->a:Z

    .line 141
    iput-boolean v1, p0, Lcom/dropbox/android/taskqueue/u;->b:Z

    .line 142
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/u;->c:Ljava/lang/String;

    .line 143
    return-void
.end method
