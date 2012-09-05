.class final Lbx/b;
.super Ljava/lang/Object;

# interfaces
.implements Lbw/n;


# instance fields
.field final synthetic a:Lbx/a;


# direct methods
.method constructor <init>(Lbx/a;)V
    .registers 2

    iput-object p1, p0, Lbx/b;->a:Lbx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbw/m;Lbw/o;)V
    .registers 9

    invoke-static {}, Lbx/a;->a()Lbx/a;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2}, Lbw/o;->g()I

    move-result v0

    invoke-virtual {p2}, Lbw/o;->a_()I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_45

    invoke-virtual {p2}, Lbw/o;->b_()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lbx/a;->a(Lbx/a;J)J

    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbx/a;->a(Lbx/a;Z)Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_74
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_4d

    :goto_28
    :try_start_28
    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbx/a;->b(Lbx/a;Z)Z

    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    invoke-static {v0}, Lbx/a;->a(Lbx/a;)V

    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lbx/b;->a:Lbx/a;

    invoke-static {v3}, Lbx/a;->b(Lbx/a;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Lbx/a;->a(Ljava/lang/Object;)V

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_71

    return-void

    :cond_45
    :try_start_45
    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lbx/a;->a(Lbx/a;J)J
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_74
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_28

    :catch_4d
    move-exception v0

    :try_start_4e
    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lbx/a;->a(Lbx/a;J)J
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_74

    :try_start_55
    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbx/a;->b(Lbx/a;Z)Z

    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    invoke-static {v0}, Lbx/a;->a(Lbx/a;)V

    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lbx/b;->a:Lbx/a;

    invoke-static {v3}, Lbx/a;->b(Lbx/a;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Lbx/a;->a(Ljava/lang/Object;)V

    goto :goto_43

    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_55 .. :try_end_73} :catchall_71

    throw v0

    :catchall_74
    move-exception v0

    :try_start_75
    iget-object v2, p0, Lbx/b;->a:Lbx/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lbx/a;->b(Lbx/a;Z)Z

    iget-object v2, p0, Lbx/b;->a:Lbx/a;

    invoke-static {v2}, Lbx/a;->a(Lbx/a;)V

    iget-object v2, p0, Lbx/b;->a:Lbx/a;

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lbx/b;->a:Lbx/a;

    invoke-static {v4}, Lbx/a;->b(Lbx/a;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Lbx/a;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_71
.end method

.method public a(Lbw/m;Ljava/lang/Exception;)V
    .registers 6

    invoke-static {}, Lbx/a;->a()Lbx/a;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lbx/b;->a:Lbx/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbx/a;->b(Lbx/a;Z)Z

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method
