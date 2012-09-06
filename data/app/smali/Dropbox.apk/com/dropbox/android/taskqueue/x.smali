.class final Lcom/dropbox/android/taskqueue/x;
.super Lcom/dropbox/android/taskqueue/y;
.source "panda.py"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/y;-><init>(Lcom/dropbox/android/taskqueue/r;)V

    .line 147
    iput-boolean v1, p0, Lcom/dropbox/android/taskqueue/x;->a:Z

    .line 148
    iput-boolean v1, p0, Lcom/dropbox/android/taskqueue/x;->b:Z

    .line 149
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/x;->c:Ljava/lang/String;

    .line 150
    return-void
.end method
