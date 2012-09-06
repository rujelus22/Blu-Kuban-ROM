.class public Lcom/dropbox/android/widget/quickactions/ButtonCancelDownload;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field protected final f:Lcom/dropbox/android/filemanager/LocalEntry;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonCancelDownload;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 29
    const v0, 0x7f030028

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->i()Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/dropbox/android/taskqueue/DownloadTask;

    iget-object v2, p0, Lcom/dropbox/android/widget/quickactions/ButtonCancelDownload;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v1, p1, v2}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 24
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DownloadTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/p;->b(Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 34
    const v0, 0x7f090161

    return v0
.end method
