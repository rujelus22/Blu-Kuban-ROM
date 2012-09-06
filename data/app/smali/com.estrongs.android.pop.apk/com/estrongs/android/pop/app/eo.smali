.class Lcom/estrongs/android/pop/app/eo;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/eo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/eo;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/app/eo;->d:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const v4, 0x7f0901a9

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eo;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/estrongs/android/pop/app/eo;->d:Z

    invoke-static {v1, v2, v3}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Lcom/estrongs/io/archive/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->m(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->m(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->h()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->o(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/app/ZipViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_53
    :goto_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->o(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->o(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34

    :cond_81
    const-string v1, "NOT_SUPPORTED_ENC_ALG_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    const v3, 0x7f0901aa

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ZipViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_99
    const-string v1, "not a WinZip AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/ZipViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_a8
    const-string v1, "Bad zip file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    const v1, 0x7f0902b4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_53
.end method
