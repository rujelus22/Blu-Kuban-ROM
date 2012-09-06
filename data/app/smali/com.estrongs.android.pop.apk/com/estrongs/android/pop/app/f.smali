.class Lcom/estrongs/android/pop/app/f;
.super Landroid/os/HandlerThread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/f;)Lcom/estrongs/android/pop/app/ArchiveProgressActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "charset_name"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->e(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "reload"

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "true"

    :goto_1c
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->f(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/estrongs/io/archive/c;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Lcom/estrongs/io/archive/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->g(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->g(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_81

    :cond_4d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/a/b;)V

    :goto_5c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z
    :try_end_64
    .catchall {:try_start_0 .. :try_end_64} :catchall_1a6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_97

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    :try_start_7e
    const-string v0, "false"

    goto :goto_1c

    :cond_81
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->g(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/io/archive/h;->a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    :try_end_96
    .catchall {:try_start_7e .. :try_end_96} :catchall_1a6
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_96} :catch_97

    goto :goto_5c

    :catch_97
    move-exception v0

    :try_start_98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_a9
    const-string v1, "WRONG PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    new-instance v1, Lcom/estrongs/android/pop/app/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/g;-><init>(Lcom/estrongs/android/pop/app/f;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->i(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V
    :try_end_c8
    .catchall {:try_start_98 .. :try_end_c8} :catchall_1a6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    goto :goto_7d

    :cond_e2
    :try_start_e2
    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f9
    :goto_f9
    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const v6, 0x7f090150

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z
    :try_end_12f
    .catchall {:try_start_e2 .. :try_end_12f} :catchall_1a6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    goto/16 :goto_7d

    :cond_14a
    :try_start_14a
    const-string v1, "NOT_SUPPORTED_ENC_ALG_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_162

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const v3, 0x7f0901aa

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f9

    :cond_162
    const-string v1, "not a WinZip AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_174

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f9

    :cond_174
    const-string v1, "FILENAME_CONFILCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18d

    const-string v1, "FILENAME_CONFILCT"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const v3, 0x7f0901a4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f9

    :cond_18d
    const-string v1, "path_create_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f9

    const-string v1, "path_create_error"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a3
    .catchall {:try_start_14a .. :try_end_1a3} :catchall_1a6

    move-result-object v0

    goto/16 :goto_f9

    :catchall_1a6
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    if-eqz v1, :cond_1c0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->g()V

    :cond_1c0
    throw v0

    :cond_1c1
    move-object v0, v1

    goto/16 :goto_a9
.end method
