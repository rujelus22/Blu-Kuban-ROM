.class public Lc/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lc/a;

.field private final b:Ljava/io/File;

.field private final c:Ljavax/crypto/SecretKey;

.field private final d:Li/A;

.field private final e:Lc/v;

.field private final f:Lc/i;

.field private final g:Lc/A;

.field private final h:Le/A;


# direct methods
.method public constructor <init>(IILc/a;Le/A;Lc/A;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Memory capacity is expected to be larger than disk capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p4, p0, Lc/f;->h:Le/A;

    iput-object p6, p0, Lc/f;->b:Ljava/io/File;

    iput-object p7, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    iput-object p3, p0, Lc/f;->a:Lc/a;

    new-instance v0, Lc/v;

    invoke-direct {v0, p1}, Lc/v;-><init>(I)V

    iput-object v0, p0, Lc/f;->e:Lc/v;

    if-eqz p7, :cond_2a

    new-instance v0, Lc/i;

    invoke-direct {v0, p2, p3, p6}, Lc/i;-><init>(ILc/a;Ljava/io/File;)V

    iput-object v0, p0, Lc/f;->f:Lc/i;

    :goto_25
    iput-object p5, p0, Lc/f;->g:Lc/A;

    iput-object p8, p0, Lc/f;->d:Li/A;

    return-void

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lc/f;->f:Lc/i;

    goto :goto_25
.end method

.method static synthetic a(Lc/f;)Lc/v;
    .registers 2

    iget-object v0, p0, Lc/f;->e:Lc/v;

    return-object v0
.end method

.method static synthetic a(Ljava/io/Closeable;)V
    .registers 1

    invoke-static {p0}, Lc/f;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic b(Lc/f;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lc/f;->b:Ljava/io/File;

    return-object v0
.end method

.method private static b(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic c(Lc/f;)Ljavax/crypto/SecretKey;
    .registers 2

    iget-object v0, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method static synthetic d(Lc/f;)Le/A;
    .registers 2

    iget-object v0, p0, Lc/f;->h:Le/A;

    return-object v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lc/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_14

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method static synthetic e(Lc/f;)Lc/i;
    .registers 2

    iget-object v0, p0, Lc/f;->f:Lc/i;

    return-object v0
.end method

.method static synthetic f(Lc/f;)Li/A;
    .registers 2

    iget-object v0, p0, Lc/f;->d:Li/A;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 9

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v0, p1}, Lc/v;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/F;

    iget-object v1, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v1, p1}, Lc/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/F;

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_27

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_20

    invoke-virtual {v1, p2, p3}, Le/F;->b(J)V

    :cond_20
    invoke-virtual {v0, p2, p3}, Le/F;->a(J)Ljava/lang/Object;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    move-object v1, v2

    goto :goto_16

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    if-eqz v1, :cond_59

    const-string v0, ""

    invoke-virtual {v1}, Le/F;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Le/F;

    invoke-virtual {v1}, Le/F;->b()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Le/F;-><init>(Ljava/lang/Object;J)V

    monitor-enter p0

    :try_start_42
    iget-object v1, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v1, p1, v0}, Lc/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    move-object v0, v2

    goto :goto_24

    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    iget-object v0, p0, Lc/f;->a:Lc/a;

    new-instance v3, Lc/g;

    invoke-direct {v3, p0, p1, v1}, Lc/g;-><init>(Lc/f;Ljava/lang/Object;Le/F;)V

    invoke-virtual {v0, v3}, Lc/a;->a(Ljava/lang/Runnable;)V

    move-object v0, v2

    goto :goto_24

    :cond_59
    move-object v0, v2

    goto :goto_24
.end method

.method public declared-synchronized a()V
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lc/f;->c:Ljavax/crypto/SecretKey;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_70

    if-nez v0, :cond_8

    :cond_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lc/f;->b:Ljava/io/File;

    const-string v3, "lru.cache"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_70

    const/4 v0, 0x0

    :try_start_12
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    invoke-static {v3, v2}, Li/b;->b(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_80
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_68
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_73

    move-result-object v0

    :try_start_1d
    iget-object v2, p0, Lc/f;->g:Lc/A;

    iget-object v3, p0, Lc/f;->f:Lc/i;

    invoke-interface {v2, v3, v0}, Lc/A;->a(Lc/v;Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_a0
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_68
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_73

    :try_start_24
    invoke-static {v0}, Lc/f;->b(Ljava/io/Closeable;)V

    :goto_27
    iget-object v0, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v0}, Lc/v;->size()I

    move-result v0

    iget-object v2, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v2}, Lc/i;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v3}, Lc/i;->size()I

    move-result v3

    iget-object v4, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v4}, Lc/v;->a()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v0, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v0}, Lc/i;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_70

    move-result-object v1

    if-ge v0, v3, :cond_88

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :catch_68
    move-exception v2

    :try_start_69
    invoke-direct {p0}, Lc/f;->d()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_a0

    :try_start_6c
    invoke-static {v0}, Lc/f;->b(Ljava/io/Closeable;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_27

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_73
    move-exception v2

    :try_start_74
    iget-object v2, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v2}, Lc/i;->clear()V

    invoke-direct {p0}, Lc/f;->d()V
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_a0

    :try_start_7c
    invoke-static {v0}, Lc/f;->b(Ljava/io/Closeable;)V

    goto :goto_27

    :catchall_80
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_84
    invoke-static {v1}, Lc/f;->b(Ljava/io/Closeable;)V

    throw v0

    :cond_88
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_8c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lc/f;->a(Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_9f
    .catchall {:try_start_7c .. :try_end_9f} :catchall_70

    goto :goto_90

    :catchall_a0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_84
.end method

.method public declared-synchronized a(JJ)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/v;->a(JJ)V

    iget-object v0, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/i;->a(JJ)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;LW/a;J)V
    .registers 9

    iget-object v0, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_15

    new-instance v0, Le/F;

    iget-object v1, p0, Lc/f;->h:Le/A;

    invoke-virtual {v1, p2}, Le/A;->b(LW/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Le/F;-><init>(Ljava/lang/Object;J)V

    iget-object v1, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v1, p1, v0}, Lc/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v0, p1}, Lc/i;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v1, Le/F;

    iget-object v0, p0, Lc/f;->h:Le/A;

    invoke-virtual {v0, p2}, Le/A;->b(LW/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0, p3, p4}, Le/F;-><init>(Ljava/lang/Object;J)V

    new-instance v2, Le/F;

    if-nez p2, :cond_43

    const-string v0, ""

    :goto_2e
    invoke-direct {v2, v0, p3, p4}, Le/F;-><init>(Ljava/lang/Object;J)V

    monitor-enter p0

    :try_start_32
    iget-object v0, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v0, p1, v1}, Lc/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v0, p1, v2}, Lc/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_5b

    monitor-exit p0

    goto :goto_14

    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".cache"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lc/f;->a:Lc/a;

    new-instance v1, Lc/h;

    invoke-direct {v1, p0, v2, p2, p1}, Lc/h;-><init>(Lc/f;Le/F;LW/a;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc/a;->a(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_40

    goto :goto_14
.end method

.method public declared-synchronized a(Ljava/lang/Object;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lc/f;->f:Lc/i;

    invoke-virtual {v0, p1}, Lc/i;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lc/f;->e:Lc/v;

    invoke-virtual {v0, p1}, Lc/v;->containsKey(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    move-result v0

    goto :goto_b

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lc/f;->b:Ljava/io/File;

    const-string v1, "lru.cache"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    iget-object v1, p0, Lc/f;->d:Li/A;

    invoke-interface {v1, v2}, Li/A;->a(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lc/f;->c:Ljavax/crypto/SecretKey;

    invoke-static {v1, v3}, Li/b;->b(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/OutputStream;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_40
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_21} :catch_52
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_38

    move-result-object v1

    :try_start_22
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_48
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_23} :catch_4f

    :try_start_23
    iget-object v0, p0, Lc/f;->g:Lc/A;

    iget-object v3, p0, Lc/f;->f:Lc/i;

    invoke-interface {v0, v3, v1}, Lc/A;->a(Lc/v;Ljava/io/OutputStream;)V

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2f

    invoke-static {v1}, Lc/f;->b(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_48
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_32} :catch_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_4f

    :catch_32
    move-exception v0

    move-object v0, v1

    :goto_34
    invoke-static {v0}, Lc/f;->b(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_38
    move-exception v1

    :goto_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4a

    invoke-static {v0}, Lc/f;->b(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_40
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_44
    invoke-static {v1}, Lc/f;->b(Ljava/io/Closeable;)V

    throw v0

    :catchall_48
    move-exception v0

    goto :goto_44

    :catchall_4a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_44

    :catch_4f
    move-exception v0

    move-object v0, v1

    goto :goto_39

    :catch_52
    move-exception v1

    goto :goto_34
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lc/f;->d()V

    iget-object v0, p0, Lc/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
