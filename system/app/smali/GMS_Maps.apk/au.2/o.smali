.class public Lau/o;
.super Ljava/lang/Object;


# static fields
.field private static f:Lau/o;


# instance fields
.field private final a:Lak/m;

.field private volatile b:Z

.field private c:Ljava/util/Hashtable;

.field private d:Lam/b;

.field private final e:Ljava/lang/String;

.field private volatile g:Lau/q;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iput-object v0, p0, Lau/o;->a:Lak/m;

    iput-boolean v1, p0, Lau/o;->b:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lau/o;->c:Ljava/util/Hashtable;

    iput-object p1, p0, Lau/o;->e:Ljava/lang/String;

    invoke-direct {p0}, Lau/o;->d()Z

    return-void
.end method

.method public static declared-synchronized a()Lau/o;
    .registers 2

    const-class v1, Lau/o;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lau/o;->f:Lau/o;

    if-nez v0, :cond_a

    invoke-static {}, Lau/o;->b()V

    :cond_a
    sget-object v0, Lau/o;->f:Lau/o;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lam/b;)V
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-virtual {p1, v0}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c

    invoke-direct {p0}, Lau/o;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lau/o;->a:Lak/m;

    invoke-interface {v2, v1, v0}, Lak/m;->b([BLjava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1b

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving directions options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lam/b;Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v6, 0x1

    iput-object p1, p0, Lau/o;->d:Lam/b;

    invoke-virtual {p1, v6}, Lam/b;->l(I)I

    move-result v2

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v2}, Ljava/util/Hashtable;-><init>(I)V

    move v0, v1

    :goto_e
    if-ge v0, v2, :cond_22

    invoke-virtual {p1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lam/b;->d(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    iput-object v3, p0, Lau/o;->c:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lau/o;->b:Z

    if-nez p2, :cond_41

    iget-object v0, p0, Lau/o;->g:Lau/q;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lau/o;->g:Lau/q;

    invoke-interface {v0}, Lau/q;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lau/o;->g:Lau/q;

    :cond_34
    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v6, p1}, Lam/b;->a(ILam/b;)V

    invoke-direct {p0, v0}, Lau/o;->a(Lam/b;)V

    :cond_41
    return-void
.end method

.method static synthetic a(Lau/o;Lam/b;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lau/o;->a(Lam/b;Z)V

    return-void
.end method

.method public static declared-synchronized b()V
    .registers 3

    const-class v1, Lau/o;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lau/o;->f:Lau/o;

    if-eqz v2, :cond_15

    sget-object v2, Lau/o;->f:Lau/o;

    iget-object v2, v2, Lau/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_15
    new-instance v2, Lau/o;

    invoke-direct {v2, v0}, Lau/o;-><init>(Ljava/lang/String;)V

    sput-object v2, Lau/o;->f:Lau/o;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/o;->b:Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lau/p;

    invoke-direct {v1, p0}, Lau/p;-><init>(Lau/o;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private d()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lau/o;->e()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lau/o;->a(Lam/b;Z)V

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private e()Lam/b;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lau/o;->a:Lak/m;

    invoke-direct {p0}, Lau/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Lam/b;

    sget-object v3, LbD/Z;->d:Lam/e;

    invoke-direct {v0, v3}, Lam/b;-><init>(Lam/e;)V

    if-eqz v2, :cond_17

    array-length v3, v2

    if-nez v3, :cond_19

    :cond_17
    move-object v0, v1

    :goto_18
    return-object v0

    :cond_19
    :try_start_19
    invoke-virtual {v0, v2}, Lam/b;->a([B)Lam/b;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_18

    :catch_1d
    move-exception v0

    move-object v0, v1

    goto :goto_18
.end method

.method private f()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionDefinitionBlock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lau/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([I)V
    .registers 5

    iget-boolean v0, p0, Lau/o;->b:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lau/o;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-direct {p0}, Lau/o;->c()V

    goto :goto_4

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public b([I)Ljava/util/Vector;
    .registers 11

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lau/o;->d:Lam/b;

    if-nez v0, :cond_e

    :cond_8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    new-instance v2, Ljava/util/Vector;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lau/o;->d:Lam/b;

    invoke-virtual {v0, v8}, Lam/b;->l(I)I

    move-result v4

    move v3, v1

    :goto_1b
    if-ge v3, v4, :cond_39

    iget-object v0, p0, Lau/o;->d:Lam/b;

    invoke-virtual {v0, v8, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-virtual {v5, v8}, Lam/b;->d(I)I

    move-result v6

    move v0, v1

    :goto_28
    array-length v7, p1

    if-ge v0, v7, :cond_32

    aget v7, p1, v0

    if-ne v6, v7, :cond_36

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1b

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_39
    move-object v0, v2

    goto :goto_d
.end method
