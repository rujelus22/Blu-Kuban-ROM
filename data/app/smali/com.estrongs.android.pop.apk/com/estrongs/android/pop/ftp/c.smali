.class Lcom/estrongs/android/pop/ftp/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    :goto_6
    sget-boolean v0, Lcom/estrongs/android/pop/ftp/a;->d:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_51

    if-eqz v0, :cond_29

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_94

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    iput-boolean v3, v0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    sput-boolean v3, Lcom/estrongs/android/pop/ftp/a;->d:Z

    const-string v0, "EEE"

    const-string v1, "server stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    sget-boolean v1, Lcom/estrongs/android/pop/ftp/a;->i:Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_51

    if-eqz v1, :cond_3d

    :try_start_37
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_6

    :catch_3b
    move-exception v0

    goto :goto_6

    :cond_3d
    :try_start_3d
    sget-boolean v1, Lcom/estrongs/android/pop/ftp/a;->d:Z

    if-nez v1, :cond_a

    new-instance v1, Lcom/estrongs/android/pop/ftp/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-direct {v1, v0, v2}, Lcom/estrongs/android/pop/ftp/h;-><init>(Ljava/net/Socket;Lcom/estrongs/android/pop/ftp/a;)V

    sget-object v0, Lcom/estrongs/android/pop/ftp/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ftp/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ftp/h;->start()V
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_50} :catch_51

    goto :goto_6

    :catch_51
    move-exception v0

    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_74

    :try_start_55
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_66} :catch_98

    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    iput-boolean v3, v0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    sput-boolean v3, Lcom/estrongs/android/pop/ftp/a;->d:Z

    const-string v0, "EEE"

    const-string v1, "server stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :catchall_74
    move-exception v0

    :try_start_75
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/a;->e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_86} :catch_96

    :cond_86
    :goto_86
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/c;->a:Lcom/estrongs/android/pop/ftp/a;

    iput-boolean v3, v1, Lcom/estrongs/android/pop/ftp/a;->e:Z

    sput-boolean v3, Lcom/estrongs/android/pop/ftp/a;->d:Z

    const-string v1, "EEE"

    const-string v2, "server stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_94
    move-exception v0

    goto :goto_1b

    :catch_96
    move-exception v1

    goto :goto_86

    :catch_98
    move-exception v0

    goto :goto_66
.end method
