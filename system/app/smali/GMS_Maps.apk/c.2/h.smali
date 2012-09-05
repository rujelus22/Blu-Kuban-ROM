.class Lc/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Le/F;

.field final synthetic b:LW/a;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lc/f;


# direct methods
.method constructor <init>(Lc/f;Le/F;LW/a;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lc/h;->d:Lc/f;

    iput-object p2, p0, Lc/h;->a:Le/F;

    iput-object p3, p0, Lc/h;->b:LW/a;

    iput-object p4, p0, Lc/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lc/h;->d:Lc/f;

    invoke-static {v0}, Lc/f;->b(Lc/f;)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lc/h;->a:Le/F;

    invoke-virtual {v0}, Le/F;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    iget-object v2, p0, Lc/h;->d:Lc/f;

    invoke-static {v2}, Lc/f;->f(Lc/f;)Li/A;

    move-result-object v2

    invoke-interface {v2, v1}, Li/A;->a(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lc/h;->d:Lc/f;

    invoke-static {v3}, Lc/f;->c(Lc/f;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {v2, v3}, Li/b;->b(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/OutputStream;
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_83
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_2e} :catch_38
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_60

    move-result-object v0

    :try_start_2f
    iget-object v2, p0, Lc/h;->b:LW/a;

    invoke-virtual {v2, v0}, LW/a;->a(Ljava/io/OutputStream;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_58
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_60

    invoke-static {v0}, Lc/f;->a(Ljava/io/Closeable;)V

    :goto_37
    return-void

    :catch_38
    move-exception v1

    :try_start_39
    monitor-enter p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_58

    :try_start_3a
    iget-object v1, p0, Lc/h;->d:Lc/f;

    invoke-static {v1}, Lc/f;->a(Lc/f;)Lc/v;

    move-result-object v1

    iget-object v2, p0, Lc/h;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc/v;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/h;->d:Lc/f;

    invoke-static {v1}, Lc/f;->e(Lc/f;)Lc/i;

    move-result-object v1

    iget-object v2, p0, Lc/h;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_55

    invoke-static {v0}, Lc/f;->a(Ljava/io/Closeable;)V

    goto :goto_37

    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5c
    invoke-static {v1}, Lc/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_60
    move-exception v2

    :try_start_61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    monitor-enter p0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_58

    :try_start_65
    iget-object v1, p0, Lc/h;->d:Lc/f;

    invoke-static {v1}, Lc/f;->a(Lc/f;)Lc/v;

    move-result-object v1

    iget-object v2, p0, Lc/h;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc/v;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/h;->d:Lc/f;

    invoke-static {v1}, Lc/f;->e(Lc/f;)Lc/i;

    move-result-object v1

    iget-object v2, p0, Lc/h;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_80

    invoke-static {v0}, Lc/f;->a(Ljava/io/Closeable;)V

    goto :goto_37

    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_58

    :catchall_83
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5c
.end method
