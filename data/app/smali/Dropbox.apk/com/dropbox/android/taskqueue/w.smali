.class final Lcom/dropbox/android/taskqueue/w;
.super Lcom/dropbox/android/taskqueue/y;
.source "panda.py"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/y;-><init>(Lcom/dropbox/android/taskqueue/r;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/w;->a:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/w;->b:Z

    .line 156
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/w;->c:Ljava/lang/String;

    .line 157
    return-void
.end method
