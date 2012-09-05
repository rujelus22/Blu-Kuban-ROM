.class Lc/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Le/F;

.field final synthetic c:Lc/f;


# direct methods
.method constructor <init>(Lc/f;Ljava/lang/Object;Le/F;)V
    .registers 4

    iput-object p1, p0, Lc/g;->c:Lc/f;

    iput-object p2, p0, Lc/g;->a:Ljava/lang/Object;

    iput-object p3, p0, Lc/g;->b:Le/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/g;->c:Lc/f;

    invoke-static {v0}, Lc/f;->a(Lc/f;)Lc/v;

    move-result-object v0

    iget-object v1, p0, Lc/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/v;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit p0

    :goto_10
    return-void

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_69

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lc/g;->c:Lc/f;

    invoke-static {v0}, Lc/f;->b(Lc/f;)Ljava/io/File;

    move-result-object v1

    iget-object v0, p0, Lc/g;->b:Le/F;

    invoke-virtual {v0}, Le/F;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_26
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lc/g;->c:Lc/f;

    invoke-static {v3}, Lc/f;->c(Lc/f;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {v1, v3}, Li/b;->b(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_34} :catch_c9
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_34} :catch_9b

    move-result-object v1

    :try_start_35
    iget-object v0, p0, Lc/g;->c:Lc/f;

    invoke-static {v0}, Lc/f;->d(Lc/f;)Le/A;

    move-result-object v0

    invoke-virtual {v0}, Le/A;->a()LW/a;

    move-result-object v0

    invoke-virtual {v0, v1}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    move-result-object v0

    new-instance v3, Le/F;

    iget-object v4, p0, Lc/g;->c:Lc/f;

    invoke-static {v4}, Lc/f;->d(Lc/f;)Le/A;

    move-result-object v4

    invoke-virtual {v4, v0}, Le/A;->b(LW/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lc/g;->b:Le/F;

    invoke-virtual {v4}, Le/F;->b()J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Le/F;-><init>(Ljava/lang/Object;J)V

    monitor-enter p0
    :try_end_59
    .catchall {:try_start_35 .. :try_end_59} :catchall_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_59} :catch_6f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_59} :catch_c7

    :try_start_59
    iget-object v0, p0, Lc/g;->c:Lc/f;

    invoke-static {v0}, Lc/f;->a(Lc/f;)Lc/v;

    move-result-object v0

    iget-object v4, p0, Lc/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Lc/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_6c

    invoke-static {v1}, Lc/f;->a(Ljava/io/Closeable;)V

    goto :goto_10

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_6f} :catch_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_c7

    :catch_6f
    move-exception v0

    move-object v0, v1

    :goto_71
    :try_start_71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    monitor-enter p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_93

    :try_start_75
    iget-object v1, p0, Lc/g;->c:Lc/f;

    invoke-static {v1}, Lc/f;->a(Lc/f;)Lc/v;

    move-result-object v1

    iget-object v2, p0, Lc/g;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc/v;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/g;->c:Lc/f;

    invoke-static {v1}, Lc/f;->e(Lc/f;)Lc/i;

    move-result-object v1

    iget-object v2, p0, Lc/g;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_90

    invoke-static {v0}, Lc/f;->a(Ljava/io/Closeable;)V

    goto :goto_10

    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_97
    invoke-static {v1}, Lc/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_9b
    move-exception v1

    move-object v1, v0

    :goto_9d
    :try_start_9d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    monitor-enter p0
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_c0

    :try_start_a1
    iget-object v0, p0, Lc/g;->c:Lc/f;

    invoke-static {v0}, Lc/f;->a(Lc/f;)Lc/v;

    move-result-object v0

    iget-object v2, p0, Lc/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lc/v;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/g;->c:Lc/f;

    invoke-static {v0}, Lc/f;->e(Lc/f;)Lc/i;

    move-result-object v0

    iget-object v2, p0, Lc/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lc/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_a1 .. :try_end_b8} :catchall_bd

    invoke-static {v1}, Lc/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_10

    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception v0

    goto :goto_97

    :catchall_c2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_97

    :catch_c7
    move-exception v0

    goto :goto_9d

    :catch_c9
    move-exception v1

    goto :goto_71
.end method
