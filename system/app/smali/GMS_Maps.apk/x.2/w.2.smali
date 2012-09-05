.class public Lx/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private final b:I

.field private final c:Lx/A;

.field private final d:Laf/a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lx/w;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Laf/a;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx/w;->b:I

    iput-object p3, p0, Lx/w;->d:Laf/a;

    iget-object v0, p0, Lx/w;->d:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v2

    new-instance v0, Lx/z;

    invoke-direct {v0, p2}, Lx/z;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_13
    const-string v4, "r"

    invoke-static {v4, v0}, Lx/A;->a(Ljava/lang/String;Lx/ab;)Lx/A;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_29

    move-result-object v0

    :goto_19
    if-eqz v0, :cond_26

    iget-object v1, p0, Lx/w;->d:Laf/a;

    invoke-interface {v1}, Laf/a;->d()J

    move-result-wide v4

    sub-long v1, v4, v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lx/w;->e:Z

    :cond_26
    iput-object v0, p0, Lx/w;->c:Lx/A;

    return-void

    :catch_29
    move-exception v4

    :try_start_2a
    const-string v4, "r"

    iget v5, p0, Lx/w;->b:I

    const/4 v6, 0x0

    sget-object v7, Lx/w;->a:Ljava/util/Locale;

    invoke-static {v4, v5, v6, v7, v0}, Lx/A;->a(Ljava/lang/String;IILjava/util/Locale;Lx/ab;)Lx/A;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_19

    :catch_36
    move-exception v0

    const-string v4, "DiskResourceCache"

    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_19
.end method

.method public static a(Ljava/io/File;)Lx/w;
    .registers 4

    new-instance v0, Lx/w;

    const/16 v1, 0x200

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lx/w;-><init>(ILjava/io/File;Laf/a;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lx/ad;
    .registers 10

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lx/w;->e:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_53

    if-nez v1, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v1, p0, Lx/w;->c:Lx/A;

    invoke-static {p1}, Ln/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lx/A;->a(J)[B

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v2, v1

    if-le v2, v5, :cond_9

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_9

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lx/A;->c([BI)J

    move-result-wide v2

    new-instance v4, Lam/b;

    sget-object v5, LbD/es;->b:Lam/e;

    invoke-direct {v4, v5}, Lam/b;-><init>(Lam/e;)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_53

    :try_start_2b
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/16 v6, 0x9

    array-length v7, v1

    add-int/lit8 v7, v7, -0x9

    invoke-direct {v5, v1, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v4, v5}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_53
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_56

    const/4 v1, 0x2

    :try_start_39
    invoke-virtual {v4, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lx/ad;

    invoke-direct {v0}, Lx/ad;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/ad;->a(Z)V

    invoke-virtual {v0, v4}, Lx/ad;->a(Lam/b;)Z

    invoke-virtual {v0, v2, v3}, Lx/ad;->a(J)V
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_53

    goto :goto_9

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_56
    move-exception v1

    goto :goto_9
.end method

.method public a()V
    .registers 5

    iget-boolean v0, p0, Lx/w;->e:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lx/w;->c:Lx/A;

    invoke-virtual {v0}, Lx/A;->f()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_e

    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lx/w;->e:Z

    goto :goto_4

    :catch_e
    move-exception v0

    const-string v1, "DiskResourceCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing resource cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public declared-synchronized a(Lam/b;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lx/w;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_65

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x2

    :try_start_8
    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_65

    move-result-object v1

    :try_start_c
    iget-object v0, p0, Lx/w;->d:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lam/b;->f()[B

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, 0x9

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Lx/A;->a([BIJ)V

    const/4 v2, 0x0

    const/16 v3, 0x9

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1}, Ln/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lx/A;->a(J[B)Lx/E;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lx/w;->c:Lx/A;

    invoke-virtual {v2, v0}, Lx/A;->a(Ljava/util/Collection;)V
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_65
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_5

    :catch_41
    move-exception v0

    :try_start_42
    const-string v2, "DiskResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_65

    goto :goto_5

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lx/w;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lx/w;->c:Lx/A;

    invoke-virtual {v0}, Lx/A;->c()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lx/w;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lx/w;->c:Lx/A;

    const/4 v1, 0x0

    sget-object v2, Lx/w;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lx/A;->a(ILjava/util/Locale;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_5

    :catch_10
    move-exception v0

    :try_start_11
    const-string v1, "DiskResourceCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_5

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
