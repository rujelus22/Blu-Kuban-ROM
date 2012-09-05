.class public Li/C;
.super Ljava/lang/Object;


# static fields
.field static final a:LW/a;


# instance fields
.field final b:Li/c;

.field final c:Li/A;

.field volatile d:LW/a;

.field volatile e:J

.field private final f:Ll/a;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->L:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    sput-object v0, Li/C;->a:LW/a;

    return-void
.end method

.method public constructor <init>(Li/c;Li/A;Ll/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Li/C;->a:LW/a;

    iput-object v0, p0, Li/C;->d:LW/a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Li/C;->e:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/C;->g:Ljava/lang/Object;

    iput-object p1, p0, Li/C;->b:Li/c;

    iput-object p2, p0, Li/C;->c:Li/A;

    iput-object p3, p0, Li/C;->f:Ll/a;

    return-void
.end method

.method private a(J)J
    .registers 8

    iget-object v0, p0, Li/C;->b:Li/c;

    invoke-interface {v0}, Li/c;->b()J

    move-result-wide v0

    iget-object v2, p0, Li/C;->b:Li/c;

    invoke-interface {v2}, Li/c;->a()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v4, p1, v0

    if-lez v4, :cond_13

    move-wide p1, v0

    :cond_13
    sub-long v0, p1, v2

    return-wide v0
.end method

.method private a(Li/A;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Li/A;->g()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_params"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private a(IZ)Z
    .registers 5

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, LW/a;->a(I)Z

    move-result p2

    :cond_e
    return p2
.end method

.method private a(LW/a;J)Z
    .registers 9

    const/4 v0, 0x0

    sget-object v1, Li/C;->a:LW/a;

    if-ne p1, v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, LW/a;->d(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long/2addr v1, p2

    iget-object v3, p0, Li/C;->b:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static b(LW/a;)I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LW/a;->c(I)I

    move-result v0

    return v0
.end method

.method private n()V
    .registers 9

    iget-object v0, p0, Li/C;->c:Li/A;

    invoke-direct {p0, v0}, Li/C;->a(Li/A;)Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Li/C;->d:LW/a;

    sget-object v3, Li/C;->a:LW/a;

    if-ne v1, v3, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_64

    :cond_16
    :goto_16
    invoke-direct {p0, v0}, Li/C;->a(Ljava/io/Closeable;)V

    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_23
    iget-object v1, p0, Li/C;->c:Li/A;

    invoke-interface {v1, v2}, Li/A;->a(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_32} :catch_64

    const/4 v0, 0x2

    :try_start_33
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Li/C;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_62
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_39} :catch_54

    :try_start_39
    iget-wide v3, p0, Li/C;->e:J

    iget-object v0, p0, Li/C;->b:Li/c;

    invoke-interface {v0}, Li/c;->c()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Li/C;->d:LW/a;

    invoke-virtual {v0}, LW/a;->e()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_16

    :catchall_51
    move-exception v0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_62
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_54} :catch_54

    :catch_54
    move-exception v0

    move-object v0, v1

    :goto_56
    invoke-direct {p0, v0}, Li/C;->a(Ljava/io/Closeable;)V

    goto :goto_19

    :catchall_5a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5e
    invoke-direct {p0, v1}, Li/C;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_62
    move-exception v0

    goto :goto_5e

    :catch_64
    move-exception v1

    goto :goto_56
.end method

.method private o()LW/a;
    .registers 5

    iget-object v1, p0, Li/C;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Li/C;->d:LW/a;

    sget-object v2, Li/C;->a:LW/a;

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Li/C;->d:LW/a;

    iget-wide v2, p0, Li/C;->e:J

    invoke-direct {p0, v0, v2, v3}, Li/C;->a(LW/a;J)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Li/C;->p()V

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1a

    iget-object v0, p0, Li/C;->d:LW/a;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private declared-synchronized p()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Li/C;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_29

    :try_start_4
    iget-object v0, p0, Li/C;->d:LW/a;

    invoke-static {v0}, Li/C;->b(LW/a;)I

    move-result v0

    sget-object v2, Li/C;->a:LW/a;

    invoke-static {v2}, Li/C;->b(LW/a;)I

    move-result v2

    sget-object v3, Li/C;->a:LW/a;

    iput-object v3, p0, Li/C;->d:LW/a;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Li/C;->e:J

    if-eq v0, v2, :cond_23

    iget-object v0, p0, Li/C;->f:Ll/a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Li/C;->f:Ll/a;

    invoke-interface {v0, p0}, Ll/a;->a(Ljava/lang/Object;)V

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Li/C;->c:Li/A;

    invoke-direct {p0, v0}, Li/C;->a(Li/A;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    :try_start_c
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Li/C;->a(Ljava/io/DataInputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-direct {p0}, Li/C;->p()V

    goto :goto_19
.end method

.method public a(LW/a;)V
    .registers 10

    iget-object v1, p0, Li/C;->g:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_2b

    :try_start_5
    iget-object v0, p0, Li/C;->d:LW/a;

    invoke-static {v0}, Li/C;->b(LW/a;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1}, Li/C;->b(LW/a;)I

    move-result v0

    int-to-long v4, v0

    iput-object p1, p0, Li/C;->d:LW/a;

    iget-object v0, p0, Li/C;->b:Li/c;

    invoke-interface {v0}, Li/c;->a()J

    move-result-wide v6

    iput-wide v6, p0, Li/C;->e:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Li/C;->n()V

    iget-object v0, p0, Li/C;->f:Ll/a;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Li/C;->f:Ll/a;

    invoke-interface {v0, p0}, Ll/a;->a(Ljava/lang/Object;)V

    :cond_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method a(Ljava/io/DataInputStream;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-direct {p0}, Li/C;->p()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_52

    invoke-direct {p0, p1}, Li/C;->a(Ljava/io/Closeable;)V

    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Li/C;->a(J)J

    move-result-wide v0

    new-instance v2, LW/a;

    sget-object v3, Lk/a;->L:LW/d;

    invoke-direct {v2, v3}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v2, p1}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    invoke-virtual {v2}, LW/a;->c()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-direct {p0, v2, v0, v1}, Li/C;->a(LW/a;J)Z

    move-result v3

    if-nez v3, :cond_5a

    iget-object v3, p0, Li/C;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_52

    :try_start_2f
    iput-object v2, p0, Li/C;->d:LW/a;

    iput-wide v0, p0, Li/C;->e:J

    iget-object v0, p0, Li/C;->d:LW/a;

    invoke-static {v0}, Li/C;->b(LW/a;)I

    move-result v0

    sget-object v1, Li/C;->a:LW/a;

    invoke-static {v1}, Li/C;->b(LW/a;)I

    move-result v1

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Li/C;->f:Ll/a;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Li/C;->f:Ll/a;

    invoke-interface {v0, p0}, Ll/a;->a(Ljava/lang/Object;)V

    :cond_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_4f

    :goto_4b
    invoke-direct {p0, p1}, Li/C;->a(Ljava/io/Closeable;)V

    goto :goto_d

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    :try_start_53
    invoke-direct {p0}, Li/C;->p()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5e

    invoke-direct {p0, p1}, Li/C;->a(Ljava/io/Closeable;)V

    goto :goto_d

    :cond_5a
    :try_start_5a
    invoke-direct {p0}, Li/C;->p()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_52

    goto :goto_4b

    :catchall_5e
    move-exception v0

    invoke-direct {p0, p1}, Li/C;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public b()Z
    .registers 3

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    sget-object v1, Li/C;->a:LW/a;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()I
    .registers 2

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    invoke-static {v0}, Li/C;->b(LW/a;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li/C;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li/C;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public h()I
    .registers 3

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    return v0
.end method

.method public i()Li/D;
    .registers 10

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v5

    new-instance v0, Li/D;

    const/16 v1, 0x16

    invoke-virtual {v5, v1}, LW/a;->c(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x22

    invoke-virtual {v5, v3}, LW/a;->c(I)I

    move-result v3

    int-to-long v3, v3

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, LW/a;->c(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Li/D;-><init>(JJJ)V

    return-object v0
.end method

.method public j()Li/D;
    .registers 10

    const-wide/16 v7, 0x3e8

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v5

    new-instance v0, Li/D;

    const/16 v1, 0x15

    invoke-virtual {v5, v1}, LW/a;->c(I)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v7

    const/16 v3, 0x1f

    invoke-virtual {v5, v3}, LW/a;->c(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v7

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, LW/a;->c(I)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Li/D;-><init>(JJJ)V

    return-object v0
.end method

.method public k()Li/D;
    .registers 8

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v5

    new-instance v0, Li/D;

    const/16 v1, 0x17

    invoke-virtual {v5, v1}, LW/a;->c(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const/16 v3, 0x24

    invoke-virtual {v5, v3}, LW/a;->c(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, LW/a;->c(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-direct/range {v0 .. v6}, Li/D;-><init>(JJJ)V

    return-object v0
.end method

.method public l()J
    .registers 3

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public m()J
    .registers 3

    invoke-direct {p0}, Li/C;->o()LW/a;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method
