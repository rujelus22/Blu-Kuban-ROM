.class final Lcom/dropbox/android/taskqueue/h;
.super Lcom/dropbox/android/util/ak;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/DownloadTask;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/DownloadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/h;->a:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-direct {p0}, Lcom/dropbox/android/util/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/h;->a:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(JJ)V

    .line 284
    return-void
.end method
