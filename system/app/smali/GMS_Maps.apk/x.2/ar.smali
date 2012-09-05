.class public Lx/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lx/x;


# static fields
.field private static final a:Lt/ae;

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lx/at;

.field private final f:Ljava/util/HashMap;

.field private g:Lx/A;

.field private final h:I

.field private i:Laf/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt/G;

    invoke-direct {v0}, Lt/G;-><init>()V

    sput-object v0, Lx/ar;->a:Lt/ae;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lx/ar;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILx/at;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    iput-object v0, p0, Lx/ar;->i:Laf/a;

    iput-object p1, p0, Lx/ar;->c:Ljava/lang/String;

    iput p2, p0, Lx/ar;->d:I

    iput-object p3, p0, Lx/ar;->e:Lx/at;

    invoke-static {}, Lx/ar;->f()I

    move-result v0

    iput v0, p0, Lx/ar;->h:I

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lx/ar;->h:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lx/ar;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lt/af;Lt/ae;[BI)V
    .registers 16

    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    instance-of v0, p2, Lt/I;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t insert a MutableVectorTile into SD cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_25

    :goto_24
    return-void

    :cond_25
    invoke-static {p1}, Ln/b;->a(Lt/af;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {p1}, Ln/b;->b(Lt/af;)Ljava/lang/String;

    move-result-object v3

    array-length v0, p3

    if-lez v0, :cond_f1

    instance-of v0, p2, Lt/k;

    if-eqz v0, :cond_ee

    move-object v0, p2

    check-cast v0, Lt/k;

    invoke-interface {v0}, Lt/k;->a()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v2, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long v2, v0, v4

    if-gez v2, :cond_eb

    move-wide v1, v4

    :goto_56
    move-object v0, p2

    check-cast v0, Lt/k;

    invoke-interface {v0}, Lt/k;->b()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v0, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_e9

    :goto_73
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x18

    :try_start_82
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v7, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_92} :catch_d7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :try_start_96
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9c} :catch_e3

    :goto_9c
    iget-object v7, p0, Lx/ar;->f:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_9f
    iget-object v0, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/as;

    if-eqz v0, :cond_e7

    iget v0, v0, Lx/as;->c:I

    add-int v4, p4, v0

    :goto_ad
    new-instance v0, Lx/as;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lx/as;-><init>(JLjava/lang/String;I[BLt/ae;)V

    iget-object v1, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lx/ar;->h:I

    if-ge v1, v2, :cond_c6

    iget-object v1, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    monitor-exit v7

    goto/16 :goto_24

    :catchall_c9
    move-exception v0

    monitor-exit v7
    :try_end_cb
    .catchall {:try_start_9f .. :try_end_cb} :catchall_c9

    throw v0

    :catchall_cc
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    :try_start_d0
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d6} :catch_e5

    :goto_d6
    throw v0

    :catch_d7
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :try_start_dc
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e2} :catch_e3

    goto :goto_9c

    :catch_e3
    move-exception v0

    goto :goto_9c

    :catch_e5
    move-exception v1

    goto :goto_d6

    :cond_e7
    move v4, p4

    goto :goto_ad

    :cond_e9
    move-wide v4, v6

    goto :goto_73

    :cond_eb
    move-wide v1, v0

    goto/16 :goto_56

    :cond_ee
    move-wide v4, v8

    move-wide v1, v8

    goto :goto_73

    :cond_f1
    move-object v5, p3

    goto :goto_9c
.end method

.method private a(ILjava/util/Locale;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lx/ar;->f:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_13

    :try_start_3
    iget-object v0, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0, p1, p2}, Lx/A;->a(ILjava/util/Locale;)V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_f
    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(Ljava/io/File;)Z
    .registers 11

    const/4 v0, 0x1

    iget-object v1, p0, Lx/ar;->g:Lx/A;

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    new-instance v1, Lx/z;

    invoke-direct {v1, p1}, Lx/z;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v2}, Laf/a;->d()J

    move-result-wide v2

    :try_start_11
    iget-object v4, p0, Lx/ar;->c:Ljava/lang/String;

    invoke-static {v4, v1}, Lx/A;->a(Ljava/lang/String;Lx/ab;)Lx/A;

    move-result-object v4

    iput-object v4, p0, Lx/ar;->g:Lx/A;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_22

    :goto_19
    iget-object v1, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v1}, Laf/a;->d()J

    move-result-wide v4

    sub-long v1, v4, v2

    goto :goto_5

    :catch_22
    move-exception v4

    :try_start_23
    iget-object v4, p0, Lx/ar;->c:Ljava/lang/String;

    iget v5, p0, Lx/ar;->d:I

    const/4 v6, -0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v7, v1}, Lx/A;->a(Ljava/lang/String;IILjava/util/Locale;Lx/ab;)Lx/A;

    move-result-object v1

    iput-object v1, p0, Lx/ar;->g:Lx/A;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_35} :catch_36

    goto :goto_19

    :catch_36
    move-exception v0

    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5
.end method

.method static f()I
    .registers 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lt/af;Lt/ae;)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t store unencrypted tiles into SD cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lt/af;Lt/ae;[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lx/ar;->a(Lt/af;Lt/ae;[BI)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Lx/A;->a()I

    move-result v0

    iget-object v1, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v1}, Lx/A;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lx/ar;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .registers 4

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0, p1}, Lx/A;->a(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :catch_13
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public declared-synchronized a(Ljava/io/File;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lx/ar;->b(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Locale;)Z
    .registers 4

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Lx/A;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lx/ar;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public a(Lt/ae;)Z
    .registers 3

    sget-object v0, Lx/ar;->a:Lt/ae;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lt/af;)[B
    .registers 7

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_16

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {p1}, Ln/b;->a(Lt/af;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ln/b;->b(Lt/af;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lx/A;->a(JLjava/lang/String;)[B

    move-result-object v0

    goto :goto_15
.end method

.method public a_(Lt/af;)V
    .registers 4

    sget-object v0, Lx/ar;->a:Lt/ae;

    sget-object v1, Lx/ar;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lx/ar;->a(Lt/af;Lt/ae;[B)V

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Lx/A;->a()I

    move-result v0

    return v0
.end method

.method public b(Lt/af;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lx/ar;->g:Lx/A;

    if-nez v2, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v2

    const/16 v3, 0x15

    if-le v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    invoke-static {p1}, Ln/b;->a(Lt/af;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ln/b;->b(Lt/af;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lx/A;->b(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    move v0, v1

    goto :goto_16

    :cond_31
    iget-object v2, p0, Lx/ar;->f:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_34
    iget-object v3, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3d

    move v0, v1

    :cond_3d
    monitor-exit v2

    goto :goto_16

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Lx/A;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lt/af;)Lt/ae;
    .registers 15

    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1b

    move-object v0, v8

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v1, p0, Lx/ar;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1e
    iget-object v0, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/as;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lx/as;->e:Lt/ae;

    monitor-exit v1

    goto :goto_1a

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    invoke-static {p1}, Ln/b;->a(Lt/af;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ln/b;->b(Lt/af;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lx/A;->a(JLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_4a

    move-object v0, v8

    goto :goto_1a

    :cond_4a
    :try_start_4a
    array-length v0, v2

    if-nez v0, :cond_50

    sget-object v0, Lx/ar;->a:Lt/ae;

    goto :goto_1a

    :cond_50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v11

    sub-long/2addr v4, v11

    iget-object v0, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v11

    add-long/2addr v4, v11

    cmp-long v0, v4, v6

    if-gez v0, :cond_7c

    move-wide v4, v6

    :cond_7c
    const/16 v0, 0x10

    if-le v3, v0, :cond_d7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_d5

    iget-object v9, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v9}, Laf/a;->b()J

    move-result-wide v9

    sub-long/2addr v0, v9

    iget-object v9, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v9}, Laf/a;->c()J

    move-result-wide v9

    add-long/2addr v0, v9

    cmp-long v9, v0, v6

    if-gez v9, :cond_d5

    :goto_9a
    iget-object v0, p0, Lx/ar;->e:Lx/at;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lx/at;->a(Lt/af;[BIJJ)Lt/ae;
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_a0} :catch_a3

    move-result-object v0

    goto/16 :goto_1a

    :catch_a3
    move-exception v0

    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unpack tile in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lx/ar;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_1a

    :cond_d5
    move-wide v6, v0

    goto :goto_9a

    :cond_d7
    move-wide v6, v9

    goto :goto_9a
.end method

.method public d()Ljava/util/Locale;
    .registers 3

    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Lx/A;->b()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0}, Lx/A;->f()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_17

    :goto_15
    monitor-exit p0

    return-void

    :catch_17
    move-exception v0

    :try_start_18
    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutDown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_d

    goto :goto_15
.end method

.method public k_()V
    .registers 13

    iget-object v0, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lx/ar;->f:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_10
    iget-object v2, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/as;

    iget-object v1, v0, Lx/as;->d:[B

    if-nez v1, :cond_40

    const/4 v1, 0x0

    :goto_2c
    int-to-long v9, v1

    add-long v1, v2, v9

    iget-wide v9, v0, Lx/as;->a:J

    iget-object v3, v0, Lx/as;->b:Ljava/lang/String;

    iget v11, v0, Lx/as;->c:I

    iget-object v0, v0, Lx/as;->d:[B

    invoke-static {v9, v10, v3, v11, v0}, Lx/A;->a(JLjava/lang/String;I[B)Lx/E;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v2, v1

    goto :goto_1b

    :cond_40
    iget-object v1, v0, Lx/as;->d:[B

    array-length v1, v1

    goto :goto_2c

    :cond_44
    iget-object v0, p0, Lx/ar;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_63

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_55

    :try_start_50
    iget-object v0, p0, Lx/ar;->g:Lx/A;

    invoke-virtual {v0, v6}, Lx/A;->a(Ljava/util/Collection;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_55} :catch_66

    :cond_55
    :goto_55
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lx/ar;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v0

    sub-long/2addr v0, v4

    :cond_62
    return-void

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    :catch_66
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method
