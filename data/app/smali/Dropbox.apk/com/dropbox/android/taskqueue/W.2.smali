.class final Lcom/dropbox/android/taskqueue/W;
.super Lcom/dropbox/android/util/ak;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/UploadTask;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/UploadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/W;->a:Lcom/dropbox/android/taskqueue/UploadTask;

    invoke-direct {p0}, Lcom/dropbox/android/util/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/W;->a:Lcom/dropbox/android/taskqueue/UploadTask;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dropbox/android/taskqueue/UploadTask;->a(JJ)V

    .line 150
    return-void
.end method
