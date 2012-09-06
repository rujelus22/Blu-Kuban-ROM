.class public Lcom/dropbox/android/taskqueue/ExportTask;
.super Lcom/dropbox/android/taskqueue/DownloadTask;
.source "panda.py"


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/io/File;

.field protected final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/io/File;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 18
    const-class v0, Lcom/dropbox/android/taskqueue/ExportTask;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/ExportTask;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/ExportTask;->c:Ljava/io/File;

    .line 26
    iput-boolean p4, p0, Lcom/dropbox/android/taskqueue/ExportTask;->d:Z

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    .registers 7
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/ExportTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v1

    const v2, 0x7f0900a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/android/util/aU;->a(I[Ljava/lang/Object;)V

    .line 47
    invoke-super {p0, p1}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/dropbox/android/taskqueue/m;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/ExportTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v1

    .line 33
    :try_start_13
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/ExportTask;->c:Ljava/io/File;

    iget-boolean v3, p0, Lcom/dropbox/android/taskqueue/ExportTask;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/filemanager/v;->a(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 34
    const-string v0, "export.success"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/ExportTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-static {v0, v2}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 35
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v0

    const v2, 0x7f0900a2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/android/util/aU;->a(I[Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3d} :catch_42

    .line 40
    :goto_3d
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->g()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    return-object v0

    .line 36
    :catch_42
    move-exception v0

    .line 37
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/ExportTask;->b:Ljava/lang/String;

    const-string v3, "exportCachedFile failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v0

    const v2, 0x7f0900a1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/android/util/aU;->a(I[Ljava/lang/Object;)V

    goto :goto_3d
.end method
