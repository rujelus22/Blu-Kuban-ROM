.class Lcom/estrongs/android/widget/FileBrowserDialog$3;
.super Lcom/estrongs/android/widget/MountPointFile;


# static fields
.field protected static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/widget/MountPointFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exists()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getParentFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/v;

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {v1, v2}, Lcom/estrongs/android/widget/v;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v2, v2, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v3}, Lcom/estrongs/android/widget/FileBrowserDialog;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v2}, Lcom/estrongs/android/widget/FileBrowserDialog;->g(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_72

    :goto_3b
    monitor-exit p0

    return-object v0

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v2, v2, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    const-string v3, "smb"

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/widget/v;->a(Lcom/estrongs/android/pop/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v2, v2, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    const-string v3, "ftp"

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/widget/v;->a(Lcom/estrongs/android/pop/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v2, v2, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    const-string v3, "kanbox"

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/widget/v;->a(Lcom/estrongs/android/pop/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog$3;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;
    :try_end_71
    .catchall {:try_start_3d .. :try_end_71} :catchall_72

    goto :goto_3b

    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method
