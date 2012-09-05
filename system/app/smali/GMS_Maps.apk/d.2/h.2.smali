.class public Ld/h;
.super Ljava/lang/Object;

# interfaces
.implements Ld/I;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Landroid/os/Handler;

.field private final h:Ld/r;

.field private final i:Lm/c;

.field private j:[B

.field private volatile k:Z

.field private volatile l:Z

.field private m:Ljava/util/concurrent/CountDownLatch;

.field private n:Ljava/lang/Runnable;

.field private o:Ld/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ld/h;->a:Ljava/util/Set;

    sget-object v0, Ld/h;->a:Ljava/util/Set;

    const-string v1, ".lck"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ld/h;->a:Ljava/util/Set;

    const-string v1, "sessionId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ld/h;->a:Ljava/util/Set;

    const-string v1, "uploadedSeq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ld/h;->a:Ljava/util/Set;

    const-string v1, "sessionSummary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLd/r;Landroid/os/Looper;Lm/c;)V
    .registers 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ld/h;->k:Z

    iput-boolean v1, p0, Ld/h;->l:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ld/h;->m:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ld/i;

    invoke-direct {v0, p0}, Ld/i;-><init>(Ld/h;)V

    iput-object v0, p0, Ld/h;->n:Ljava/lang/Runnable;

    if-eqz p7, :cond_1b

    if-eqz p8, :cond_68

    :cond_1b
    move v0, v2

    :goto_1c
    const-string v3, "looper could not be null when listener is not null."

    invoke-static {v0, v3}, Ld/ax;->a(ZLjava/lang/Object;)V

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_2b

    if-eqz p5, :cond_2c

    :cond_2b
    move v1, v2

    :cond_2c
    const-string v0, "Need non empty key or keyPath."

    invoke-static {v1, v0}, Ld/ax;->a(ZLjava/lang/Object;)V

    invoke-static {p9}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/h;->i:Lm/c;

    iput-object p1, p0, Ld/h;->b:Landroid/content/Context;

    iput-object p3, p0, Ld/h;->c:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/h;->d:Ljava/lang/String;

    :goto_58
    iput-object p4, p0, Ld/h;->e:Ljava/lang/String;

    iput-object p5, p0, Ld/h;->j:[B

    iput-boolean p6, p0, Ld/h;->f:Z

    iput-object p7, p0, Ld/h;->h:Ld/r;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ld/h;->g:Landroid/os/Handler;

    return-void

    :cond_68
    move v0, v1

    goto :goto_1c

    :cond_6a
    iput-object p2, p0, Ld/h;->d:Ljava/lang/String;

    goto :goto_58
.end method

.method static synthetic a(Ld/h;[Ljava/lang/String;)Ld/l;
    .registers 3

    invoke-direct {p0, p1}, Ld/h;->a([Ljava/lang/String;)Ld/l;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/String;)Ld/l;
    .registers 11

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ld/ax;->a()Ljava/util/ArrayList;

    move-result-object v5

    array-length v6, p1

    move v4, v3

    move-object v0, v2

    move-object v1, v2

    :goto_a
    if-ge v4, v6, :cond_3d

    aget-object v7, p1, v4

    const-string v8, "sessionId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-direct {p0, v7}, Ld/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/ax;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    move-object v1, v2

    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_24
    const-string v8, "uploadedSeq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-direct {p0, v7}, Ld/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_31
    const-string v8, "sessionSummary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3d
    if-nez v1, :cond_46

    invoke-static {}, Ld/ad;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ld/h;->c(Ljava/lang/String;)Z

    :cond_46
    new-instance v2, Ld/l;

    invoke-direct {v2, p0, v5, v1}, Ld/l;-><init>(Ld/h;Ljava/util/List;Ljava/lang/String;)V

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v0, v3

    :goto_59
    if-ge v0, v4, :cond_71

    aget-object v3, v1, v0

    invoke-static {v3}, Ld/ax;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    :try_start_63
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ld/l;->a(I)V
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6e} :catch_72

    :cond_6e
    :goto_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_71
    return-object v2

    :catch_72
    move-exception v3

    goto :goto_6e
.end method

.method static synthetic a(Ld/h;Ld/l;)V
    .registers 2

    invoke-direct {p0, p1}, Ld/h;->a(Ld/l;)V

    return-void
.end method

.method static synthetic a(Ld/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ld/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ld/l;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    new-instance v0, Ld/m;

    iget-object v1, p0, Ld/h;->h:Ld/r;

    invoke-direct {v0, p0, p1, v1, v4}, Ld/m;-><init>(Ld/h;Ld/l;Ld/r;Ld/i;)V

    iput-object v0, p0, Ld/h;->o:Ld/m;

    new-instance v0, Ld/ad;

    iget-object v1, p0, Ld/h;->b:Landroid/content/Context;

    sget-object v2, Ld/ag;->b:Ld/ag;

    iget-object v3, p0, Ld/h;->c:Ljava/lang/String;

    iget-object v6, p0, Ld/h;->o:Ld/m;

    invoke-virtual {p1}, Ld/l;->c()Ljava/lang/String;

    move-result-object v7

    move-object v5, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Ld/ad;-><init>(Landroid/content/Context;Ld/ag;Ljava/lang/String;Ljava/lang/String;[BLd/C;Ljava/lang/String;Lm/c;)V

    invoke-virtual {p1}, Ld/l;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v3, p0, Ld/h;->l:Z

    if-nez v3, :cond_3d

    invoke-direct {p0, v0, p1, v1}, Ld/h;->a(Ld/ad;Ld/l;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_3d
    invoke-virtual {p1}, Ld/l;->a()V

    :cond_40
    invoke-virtual {v0}, Ld/ad;->d()V

    :goto_43
    :try_start_43
    iget-object v0, p0, Ld/h;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-boolean v0, p0, Ld/h;->f:Z

    if-nez v0, :cond_5e

    move v0, v9

    :goto_4d
    iget-boolean v1, p0, Ld/h;->f:Z

    if-eqz v1, :cond_58

    invoke-direct {p0, p1}, Ld/h;->c(Ld/l;)Z

    move-result v0

    if-nez v0, :cond_60

    move v0, v9

    :cond_58
    :goto_58
    if-eqz v0, :cond_5d

    invoke-direct {p0, p1}, Ld/h;->b(Ld/l;)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_5d} :catch_62

    :cond_5d
    return-void

    :cond_5e
    move v0, v10

    goto :goto_4d

    :cond_60
    move v0, v10

    goto :goto_58

    :catch_62
    move-exception v0

    goto :goto_43
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Ld/h;->h:Ld/r;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ld/h;->g:Landroid/os/Handler;

    new-instance v1, Ld/k;

    invoke-direct {v1, p0, p1}, Ld/k;-><init>(Ld/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private a(Ld/ad;Ld/l;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ld/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ld/b;

    new-instance v4, Ld/a;

    iget-object v5, p0, Ld/h;->j:[B

    invoke-direct {v4, v5}, Ld/a;-><init>([B)V

    invoke-direct {v3, v2, v4}, Ld/b;-><init>(Ljava/lang/String;Ld/a;)V

    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {v3}, Ld/b;->a()[B

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-boolean v4, p0, Ld/h;->l:Z

    if-eqz v4, :cond_43

    invoke-virtual {p1}, Ld/ad;->c()V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2e} :catch_5b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_84
    .catch Ld/c; {:try_start_21 .. :try_end_2e} :catch_a3

    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ld/b;->b()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_b8

    :goto_31
    move v2, v0

    :goto_32
    if-nez v2, :cond_35

    move v0, v1

    :cond_35
    invoke-virtual {p2, p3, v0}, Ld/l;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Ld/h;->o:Ld/m;

    invoke-virtual {p2}, Ld/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ld/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_42
    return v0

    :cond_43
    :try_start_43
    new-instance v4, LW/a;

    sget-object v5, Lk/a;->ap:LW/d;

    invoke-direct {v4, v5}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v4, v2}, LW/a;->a([B)LW/a;

    invoke-virtual {v4}, LW/a;->c()Z

    move-result v2

    if-nez v2, :cond_63

    new-instance v2, Ljava/io/IOException;

    const-string v4, "isValid returned after parsing GLocRequest"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_5b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5b} :catch_84
    .catch Ld/c; {:try_start_43 .. :try_end_5b} :catch_a3

    :catch_5b
    move-exception v2

    :try_start_5c
    const-string v2, "File not found."
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_ab

    :try_start_5e
    invoke-virtual {v3}, Ld/b;->b()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_b2

    :goto_61
    move v2, v1

    goto :goto_32

    :cond_63
    const/4 v2, 0x6

    :try_start_64
    invoke-virtual {v4, v2}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-static {v2}, Ld/ax;->a(LW/a;)LW/a;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, LW/a;->f(II)V

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, LW/a;->c(I)I

    move-result v5

    invoke-virtual {p2, p3, v5}, Ld/l;->a(Ljava/lang/String;I)V

    invoke-virtual {p2, v5}, Ld/l;->b(I)Z

    move-result v6

    if-eqz v6, :cond_8c

    const/4 v2, 0x1

    invoke-static {p2, v5, v2}, Ld/l;->a(Ld/l;IZ)V
    :try_end_83
    .catchall {:try_start_64 .. :try_end_83} :catchall_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_83} :catch_5b
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_83} :catch_84
    .catch Ld/c; {:try_start_64 .. :try_end_83} :catch_a3

    goto :goto_21

    :catch_84
    move-exception v2

    :try_start_85
    const-string v2, "Error reading file."
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_ab

    :try_start_87
    invoke-virtual {v3}, Ld/b;->b()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_b4

    :goto_8a
    move v2, v1

    goto :goto_32

    :cond_8c
    :try_start_8c
    invoke-virtual {p1, v4, v2}, Ld/ad;->b(LW/a;LW/a;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Ld/h;->o:Ld/m;

    invoke-virtual {p2}, Ld/l;->c()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Fatal: can not submit task."

    invoke-virtual {v2, v4, v5, v6}, Ld/m;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_9d} :catch_5b
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_9d} :catch_84
    .catch Ld/c; {:try_start_8c .. :try_end_9d} :catch_a3

    :try_start_9d
    invoke-virtual {v3}, Ld/b;->b()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_42

    :catch_a1
    move-exception v1

    goto :goto_42

    :catch_a3
    move-exception v2

    :try_start_a4
    const-string v2, "Invalid file format."
    :try_end_a6
    .catchall {:try_start_a4 .. :try_end_a6} :catchall_ab

    :try_start_a6
    invoke-virtual {v3}, Ld/b;->b()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_b6

    :goto_a9
    move v2, v1

    goto :goto_32

    :catchall_ab
    move-exception v0

    :try_start_ac
    invoke-virtual {v3}, Ld/b;->b()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    :goto_af
    throw v0

    :catch_b0
    move-exception v1

    goto :goto_af

    :catch_b2
    move-exception v2

    goto :goto_61

    :catch_b4
    move-exception v2

    goto :goto_8a

    :catch_b6
    move-exception v2

    goto :goto_a9

    :catch_b8
    move-exception v2

    goto/16 :goto_31
.end method

.method static synthetic a(Ld/h;Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1}, Ld/h;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ld/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Ld/h;->k:Z

    return p1
.end method

.method private a(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1b

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-direct {p0, v4}, Ld/h;->a(Ljava/io/File;)Z

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_14

    :cond_1b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method private a([Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_1d

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    sget-object v4, Ld/h;->a:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1d
    array-length v1, p1

    sget-object v2, Ld/h;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method static synthetic a(Ld/h;)[B
    .registers 2

    iget-object v0, p0, Ld/h;->j:[B

    return-object v0
.end method

.method static synthetic a(Ld/h;[B)[B
    .registers 2

    iput-object p1, p0, Ld/h;->j:[B

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_45
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_53

    move-result v3

    if-eqz v3, :cond_19

    :cond_13
    if-eqz v0, :cond_18

    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_39

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    :try_start_19
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_45
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_53

    :try_start_1e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_27
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3b

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_51
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_32

    goto :goto_27

    :catch_32
    move-exception v2

    :goto_33
    if-eqz v1, :cond_18

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_18

    :catch_39
    move-exception v1

    goto :goto_18

    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_51
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_32

    move-result-object v0

    if-eqz v1, :cond_18

    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_39

    goto :goto_18

    :catchall_45
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_49
    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    throw v0

    :catch_4f
    move-exception v1

    goto :goto_4e

    :catchall_51
    move-exception v0

    goto :goto_49

    :catch_53
    move-exception v1

    move-object v1, v0

    goto :goto_33
.end method

.method static synthetic b(Ld/h;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ld/h;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Ld/h;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_9
.end method

.method private b(Ld/l;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Ld/l;->e()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_21

    if-eqz v0, :cond_17

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_47

    const/4 v1, 0x0

    :try_start_28
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ld/h;->d:Ljava/lang/String;

    const-string v5, "uploadedSeq"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_48
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_4f

    :try_start_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_60

    if-eqz v0, :cond_47

    :try_start_44
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_57

    :cond_47
    :goto_47
    return-void

    :catchall_48
    move-exception v0

    :goto_49
    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_59

    :cond_4e
    :goto_4e
    throw v0

    :catch_4f
    move-exception v0

    move-object v0, v1

    :goto_51
    if-eqz v0, :cond_47

    :try_start_53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_47

    :catch_57
    move-exception v0

    goto :goto_47

    :catch_59
    move-exception v1

    goto :goto_4e

    :catchall_5b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_49

    :catch_60
    move-exception v1

    goto :goto_51
.end method

.method static synthetic b(Ld/h;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Ld/h;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Ld/h;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ld/h;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-direct {p0, v2}, Ld/h;->a([Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v1}, Ld/h;->a(Ljava/io/File;)Z
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_18} :catch_1a

    move-result v0

    goto :goto_e

    :catch_1a
    move-exception v1

    goto :goto_e
.end method

.method private c(Ld/l;)Z
    .registers 7

    invoke-virtual {p1}, Ld/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Ld/l;->a(Ld/l;Ljava/lang/String;)Ld/aw;

    move-result-object v2

    const-string v3, "Summary should not be null after all complete."

    invoke-static {v2, v3}, Ld/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v2, Ld/aw;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget v3, v2, Ld/aw;->b:I

    if-nez v3, :cond_8

    iget v2, v2, Ld/aw;->d:I

    if-nez v2, :cond_8

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ld/h;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_31
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_34} :catch_3d

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_38
    invoke-direct {p0}, Ld/h;->c()Z

    move-result v0

    return v0

    :catch_3d
    move-exception v0

    goto :goto_8
.end method

.method private c(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Ld/h;->d:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_b
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_27

    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_35

    const/4 v0, 0x1

    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_2f

    :cond_1e
    :goto_1e
    return v0

    :catchall_1f
    move-exception v0

    move-object v1, v2

    :goto_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    :cond_26
    :goto_26
    throw v0

    :catch_27
    move-exception v1

    move-object v1, v2

    :goto_29
    if-eqz v1, :cond_1e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1e

    :catch_2f
    move-exception v1

    goto :goto_1e

    :catch_31
    move-exception v1

    goto :goto_26

    :catchall_33
    move-exception v0

    goto :goto_21

    :catch_35
    move-exception v2

    goto :goto_29
.end method

.method static synthetic d(Ld/h;)Z
    .registers 2

    iget-boolean v0, p0, Ld/h;->f:Z

    return v0
.end method

.method static synthetic e(Ld/h;)Ld/r;
    .registers 2

    iget-object v0, p0, Ld/h;->h:Ld/r;

    return-object v0
.end method

.method static synthetic f(Ld/h;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Ld/h;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Ld/h;)Z
    .registers 2

    invoke-direct {p0}, Ld/h;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Ld/h;)Z
    .registers 2

    iget-boolean v0, p0, Ld/h;->k:Z

    return v0
.end method

.method static synthetic i(Ld/h;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Ld/h;->m:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Ld/h;->n:Ljava/lang/Runnable;

    const-string v2, "BatchScanResultUploader.Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/h;->l:Z

    return-void
.end method
