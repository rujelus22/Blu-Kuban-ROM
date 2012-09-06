.class Lcom/estrongs/android/pop/app/cm;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cm;)Lcom/estrongs/android/pop/app/ck;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/ck;->a:Z

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ck;->a(Lcom/estrongs/android/pop/app/ck;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ck;->b(Lcom/estrongs/android/pop/app/ck;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/cn;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cn;-><init>(Lcom/estrongs/android/pop/app/cm;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/io/archive/h;->c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/ck;->a:Z

    if-eqz v1, :cond_37

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ck;->a(Lcom/estrongs/android/pop/app/ck;Z)V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_41

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ck;->dismiss()V

    :goto_36
    return-void

    :cond_37
    if-nez v0, :cond_77

    :try_start_39
    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/ck;->a:Z

    if-nez v1, :cond_71

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WRONG PASSWORD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/ck;->a(Lcom/estrongs/android/pop/app/ck;Z)V

    :cond_63
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ck;->d(Lcom/estrongs/android/pop/app/ck;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/co;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/co;-><init>(Lcom/estrongs/android/pop/app/cm;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_71
    .catchall {:try_start_42 .. :try_end_71} :catchall_90

    :cond_71
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ck;->dismiss()V

    goto :goto_36

    :cond_77
    :try_start_77
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ck;->d(Lcom/estrongs/android/pop/app/ck;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ck;->d(Lcom/estrongs/android/pop/app/ck;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8f} :catch_41

    goto :goto_2b

    :catchall_90
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ck;->dismiss()V

    throw v0
.end method
