.class public Lx/s;
.super Ljava/lang/Object;

# interfaces
.implements Lx/b;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private b:Lx/A;

.field private final c:Ljava/lang/String;

.field private final d:Laf/a;

.field private final e:Ljava/util/Map;

.field private final f:Lam/e;

.field private final g:I

.field private final h:J

.field private i:Lx/t;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx/s;->a:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Laf/a;Ljava/lang/String;Lam/e;IJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/s;->d:Laf/a;

    iput-object p2, p0, Lx/s;->c:Ljava/lang/String;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lx/s;->e:Ljava/util/Map;

    iput-object p3, p0, Lx/s;->f:Lam/e;

    iput p4, p0, Lx/s;->g:I

    iput-wide p5, p0, Lx/s;->h:J

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/u;

    iget-object v5, v0, Lx/u;->a:Ljava/lang/String;

    invoke-static {v5}, Ln/b;->a(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, v0, Lx/u;->a:Ljava/lang/String;

    :try_start_2a
    iget v8, v0, Lx/u;->c:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v8, v0, Lx/u;->d:J

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, v0, Lx/u;->b:Lam/b;

    invoke-virtual {v0, v3}, Lam/b;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3c} :catch_4b

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {v5, v6, v7, v0}, Lx/A;->a(JLjava/lang/String;[B)Lx/E;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catch_4b
    move-exception v0

    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51
    return-object v1
.end method

.method static synthetic a(Lx/s;)Z
    .registers 2

    invoke-direct {p0}, Lx/s;->f()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    :try_start_a
    iget-object v0, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v0, p1}, Lx/A;->a(Ljava/util/Collection;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_1c

    :cond_f
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v3, "DiskProtoBufCache"

    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private declared-synchronized f()Z
    .registers 7

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lx/s;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4e

    :try_start_5
    iget-object v0, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lx/s;->i:Lx/t;

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_51

    move v0, v1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_51

    :try_start_1f
    invoke-direct {p0, v0}, Lx/s;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lx/s;->b(Ljava/util/List;)V

    iget-object v2, p0, Lx/s;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_4e

    :try_start_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/u;

    iget-object v4, p0, Lx/s;->e:Ljava/util/Map;

    iget-object v5, v0, Lx/u;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_2d

    iget-object v4, p0, Lx/s;->e:Ljava/util/Map;

    iget-object v0, v0, Lx/u;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4e

    :cond_54
    :try_start_54
    iget-object v0, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    iput-object v0, p0, Lx/s;->i:Lx/t;

    monitor-exit v2

    move v0, v1

    goto :goto_12

    :cond_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_4b

    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lx/s;->b:Lx/A;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v0}, Lx/A;->a()I

    move-result v0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)Lx/v;
    .registers 10

    const/4 v7, 0x0

    iget-object v0, p0, Lx/s;->b:Lx/A;

    if-nez v0, :cond_7

    move-object v0, v7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lx/u;

    if-eqz v6, :cond_27

    new-instance v0, Lx/a;

    iget-object v1, p0, Lx/s;->d:Laf/a;

    iget v2, v6, Lx/u;->c:I

    iget-wide v3, v6, Lx/u;->d:J

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lx/a;-><init>(Laf/a;IJLx/b;)V

    new-instance v1, Lx/v;

    iget-object v2, v6, Lx/u;->b:Lam/b;

    invoke-direct {v1, v2, v0}, Lx/v;-><init>(Lam/b;Lx/a;)V

    move-object v0, v1

    goto :goto_6

    :cond_27
    invoke-static {p1}, Ln/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v2, v0, v1, p1}, Lx/A;->a(JLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_35

    move-object v0, v7

    goto :goto_6

    :cond_35
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_3f
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    new-instance v6, Lam/b;

    iget-object v1, p0, Lx/s;->f:Lam/e;

    invoke-direct {v6, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lam/b;->a(Ljava/io/InputStream;I)I

    new-instance v0, Lx/a;

    iget-object v1, p0, Lx/s;->d:Laf/a;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lx/a;-><init>(Laf/a;IJLx/b;)V

    new-instance v1, Lx/v;

    invoke-direct {v1, v6, v0}, Lx/v;-><init>(Lam/b;Lx/a;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_62} :catch_64

    move-object v0, v1

    goto :goto_6

    :catch_64
    move-exception v0

    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Lam/b;)V
    .registers 11

    iget-object v0, p0, Lx/s;->b:Lx/A;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v6, p0, Lx/s;->e:Ljava/util/Map;

    monitor-enter v6

    :try_start_8
    iget-object v0, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2a

    iget-object v7, p0, Lx/s;->e:Ljava/util/Map;

    new-instance v0, Lx/u;

    iget-object v1, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v1}, Lx/A;->a()I

    move-result v3

    iget-object v1, p0, Lx/s;->d:Laf/a;

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lx/u;-><init>(Ljava/lang/String;Lam/b;IJ)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    iget-object v0, p0, Lx/s;->i:Lx/t;

    if-nez v0, :cond_39

    new-instance v0, Lx/t;

    iget-object v1, p0, Lx/s;->c:Ljava/lang/String;

    iget v2, p0, Lx/s;->g:I

    invoke-direct {v0, v1, v2, p0}, Lx/t;-><init>(Ljava/lang/String;ILx/s;)V

    iput-object v0, p0, Lx/s;->i:Lx/t;

    :cond_39
    monitor-exit v6

    goto :goto_4

    :catchall_3b
    move-exception v0

    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public a(Ljava/io/File;)Z
    .registers 9

    new-instance v0, Lx/z;

    invoke-direct {v0, p1}, Lx/z;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_9
    iget-object v3, p0, Lx/s;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lx/A;->a(Ljava/lang/String;Lx/ab;)Lx/A;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_19

    move-result-object v0

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    iput-object v0, p0, Lx/s;->b:Lx/A;

    const/4 v0, 0x1

    :goto_18
    return v0

    :catch_19
    move-exception v3

    :try_start_1a
    iget-object v3, p0, Lx/s;->c:Ljava/lang/String;

    const/16 v4, 0xffa

    const/4 v5, -0x1

    sget-object v6, Lx/s;->a:Ljava/util/Locale;

    invoke-static {v3, v4, v5, v6, v0}, Lx/A;->a(Ljava/lang/String;IILjava/util/Locale;Lx/ab;)Lx/A;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_26

    move-result-object v0

    goto :goto_f

    :catch_26
    move-exception v0

    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_18
.end method

.method public declared-synchronized a(Ljava/util/Locale;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lx/s;->b:Lx/A;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_30

    if-nez v2, :cond_9

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget-object v2, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v2}, Lx/A;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_30

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    goto :goto_7

    :cond_17
    :try_start_17
    iget-object v2, p0, Lx/s;->b:Lx/A;

    iget-object v3, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v3}, Lx/A;->a()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lx/A;->a(ILjava/util/Locale;)V

    iget-object v2, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_30
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_29

    move v0, v1

    goto :goto_7

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_7

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lx/s;->h:J

    return-wide v0
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lx/s;->b:Lx/A;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lx/s;->f()Z

    iget-object v0, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v0}, Lx/A;->f()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_5

    :catch_10
    move-exception v0

    :try_start_11
    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lx/s;->b:Lx/A;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_27

    if-nez v1, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lx/s;->b:Lx/A;

    iget-object v2, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v2}, Lx/A;->a()I

    move-result v2

    iget-object v3, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v3}, Lx/A;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx/A;->a(ILjava/util/Locale;)V

    iget-object v1, p0, Lx/s;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    goto :goto_6

    :catch_20
    move-exception v1

    :try_start_21
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_6

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()J
    .registers 3

    iget-object v0, p0, Lx/s;->b:Lx/A;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lx/s;->b:Lx/A;

    invoke-virtual {v0}, Lx/A;->d()J

    move-result-wide v0

    goto :goto_6
.end method
