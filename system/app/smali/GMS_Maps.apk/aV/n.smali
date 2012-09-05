.class public LaV/n;
.super Ljava/lang/Object;


# static fields
.field private static a:LaV/n;


# instance fields
.field private volatile b:LaV/r;

.field private c:LaJ/u;

.field private d:LaE/h;

.field private e:LaM/f;

.field private f:LaM/f;

.field private g:Ljava/util/List;

.field private h:LaV/p;

.field private i:Lcom/google/googlenav/android/ac;

.field private j:Ljava/lang/Object;

.field private k:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaV/n;->j:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaV/n;->g:Ljava/util/List;

    new-instance v0, LaV/r;

    const-string v1, ""

    invoke-direct {v0, v1}, LaV/r;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LaV/n;->b:LaV/r;

    return-void
.end method

.method public static a()LaV/n;
    .registers 1

    sget-object v0, LaV/n;->a:LaV/n;

    return-object v0
.end method

.method public static a(LaJ/u;LaE/h;LaM/f;LaM/f;Lcom/google/googlenav/android/ac;)V
    .registers 6

    sget-object v0, LaV/n;->a:LaV/n;

    if-nez v0, :cond_b

    new-instance v0, LaV/n;

    invoke-direct {v0}, LaV/n;-><init>()V

    sput-object v0, LaV/n;->a:LaV/n;

    :cond_b
    if-eqz p0, :cond_11

    sget-object v0, LaV/n;->a:LaV/n;

    iput-object p0, v0, LaV/n;->c:LaJ/u;

    :cond_11
    if-eqz p1, :cond_17

    sget-object v0, LaV/n;->a:LaV/n;

    iput-object p1, v0, LaV/n;->d:LaE/h;

    :cond_17
    if-eqz p2, :cond_1d

    sget-object v0, LaV/n;->a:LaV/n;

    iput-object p2, v0, LaV/n;->e:LaM/f;

    :cond_1d
    if-eqz p3, :cond_23

    sget-object v0, LaV/n;->a:LaV/n;

    iput-object p3, v0, LaV/n;->f:LaM/f;

    :cond_23
    if-eqz p4, :cond_29

    sget-object v0, LaV/n;->a:LaV/n;

    iput-object p4, v0, LaV/n;->i:Lcom/google/googlenav/android/ac;

    :cond_29
    return-void
.end method

.method private a(LaV/r;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, LaV/r;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaV/n;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v2}, LaV/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LaV/n;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v0, p1}, LaV/r;->a(LaV/r;)V

    :cond_1b
    monitor-exit v1

    goto :goto_2

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    new-instance v0, LaV/m;

    invoke-direct {v0}, LaV/m;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, LaV/n;->k:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    invoke-virtual {v0, v1}, LaV/m;->a(I)LaV/m;

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, LaV/n;->k:I

    invoke-virtual {p0, v0}, LaV/n;->a(LaV/m;)V

    invoke-direct {p0, p2}, LaV/n;->a(Ljava/util/List;)V

    iget-object v1, p0, LaV/n;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_21
    iget-object v0, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v0, p1}, LaV/r;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_53

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    :try_start_37
    invoke-interface {v0, p1}, LaV/o;->a(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2b

    :catch_3b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SuggestManager, Provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    invoke-direct {p0}, LaV/n;->k()V

    new-instance v0, LaV/m;

    invoke-direct {v0}, LaV/m;-><init>()V

    invoke-direct {p0, v0}, LaV/n;->b(LaV/m;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    invoke-interface {v0}, LaV/o;->f()V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private b(LaV/m;)V
    .registers 4

    iget-object v1, p0, LaV/n;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v0}, LaV/r;->e()Lam/b;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    invoke-virtual {p1, v0}, LaV/m;->a(Lam/b;)LaV/m;

    move-result-object v0

    invoke-virtual {p0, v0}, LaV/n;->a(LaV/m;)V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-nez p0, :cond_17

    const-string v0, ""

    move-object v1, v0

    :goto_5
    if-nez p1, :cond_1d

    const-string v0, ""

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_22
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private d(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, LaV/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    invoke-interface {v0}, LaV/o;->c()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-interface {v0}, LaV/o;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, "o"

    goto :goto_1c
.end method

.method private declared-synchronized k()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, LaV/n;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    :try_start_4
    iget-object v0, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v0}, LaV/r;->c()LaV/r;

    move-result-object v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    :try_start_b
    iget-object v1, p0, LaV/n;->h:LaV/p;

    if-eqz v1, :cond_18

    iget-object v1, p0, LaV/n;->h:LaV/p;

    invoke-virtual {p0}, LaV/n;->h()Z

    move-result v2

    invoke-interface {v1, v0, v2}, LaV/p;->a(LaV/r;Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)I
    .registers 8

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    :cond_9
    :goto_9
    return v1

    :cond_a
    move v0, v1

    :goto_b
    iget-object v3, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v3}, LaV/r;->d()I

    move-result v3

    if-ge v0, v3, :cond_42

    iget-object v3, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v3, v0}, LaV/r;->a(I)LaV/q;

    move-result-object v3

    invoke-virtual {v3}, LaV/q;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eqz p2, :cond_3d

    invoke-virtual {v3}, LaV/q;->a()I

    move-result v3

    move v2, v1

    :goto_2a
    if-ge v2, v0, :cond_9

    iget-object v4, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v4, v2}, LaV/r;->a(I)LaV/q;

    move-result-object v4

    invoke-virtual {v4}, LaV/q;->a()I

    move-result v4

    if-ne v4, v3, :cond_3a

    add-int/lit8 v1, v1, 0x1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3d
    move v1, v0

    goto :goto_9

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_42
    move v1, v2

    goto :goto_9
.end method

.method public a(III)V
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LbD/gi;->e:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Lam/b;->h(II)V

    new-instance v1, LaV/m;

    invoke-direct {v1}, LaV/m;-><init>()V

    iget-object v2, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v2}, LaV/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LaV/m;->a(Ljava/lang/String;)LaV/m;

    move-result-object v1

    invoke-virtual {v1, v0}, LaV/m;->b(Lam/b;)LaV/m;

    move-result-object v0

    invoke-virtual {p0, v0}, LaV/n;->a(LaV/m;)V

    return-void
.end method

.method public a(LaJ/u;)V
    .registers 2

    iput-object p1, p0, LaV/n;->c:LaJ/u;

    return-void
.end method

.method public a(LaV/m;)V
    .registers 2

    return-void
.end method

.method public a(LaV/o;)V
    .registers 3

    invoke-virtual {p0}, LaV/n;->b()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LaV/n;->a(LaV/o;I)V

    return-void
.end method

.method public a(LaV/o;I)V
    .registers 4

    invoke-interface {p1, p2}, LaV/o;->a(I)V

    iget-object v0, p0, LaV/n;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(LaV/p;)V
    .registers 2

    iput-object p1, p0, LaV/n;->h:LaV/p;

    return-void
.end method

.method public a(LaV/r;Z)V
    .registers 4

    invoke-direct {p0, p1}, LaV/n;->a(LaV/r;)V

    if-eqz p2, :cond_16

    invoke-direct {p0}, LaV/n;->k()V

    invoke-virtual {p1}, LaV/r;->d()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, LaV/m;

    invoke-direct {v0}, LaV/m;-><init>()V

    invoke-direct {p0, v0}, LaV/n;->b(LaV/m;)V

    :cond_16
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, LaV/n;->g:Ljava/util/List;

    invoke-direct {p0, p1, v0}, LaV/n;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaV/n;->a(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_cf

    invoke-virtual {p0}, LaV/n;->i()LaV/r;

    move-result-object v1

    invoke-virtual {v1, v0}, LaV/r;->a(I)LaV/q;

    move-result-object v1

    const/16 v2, 0x49

    const-string v3, "s"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, LaV/n;->i()LaV/r;

    move-result-object v5

    invoke-virtual {v5}, LaV/r;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, LaV/q;->a()I

    move-result v5

    invoke-direct {p0, v5}, LaV/n;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, LaV/q;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "p"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, LaV/n;->a(Ljava/lang/String;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_cf
    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .registers 11

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    :goto_d
    array-length v4, p2

    if-ge v0, v4, :cond_25

    aget v4, p2, v0

    invoke-virtual {p0, v4}, LaV/n;->c(I)LaV/o;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v4, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    iget-object v4, p0, LaV/n;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2e
    iget-object v6, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v6}, LaV/r;->d()I

    move-result v6

    if-ge v1, v6, :cond_52

    iget-object v6, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v6, v1}, LaV/r;->a(I)LaV/q;

    move-result-object v6

    invoke-virtual {v6}, LaV/q;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_50
    const/4 v0, 0x1

    goto :goto_4d

    :cond_52
    if-eqz v0, :cond_72

    iget-object v0, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v0}, LaV/r;->a()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/q;

    iget-object v3, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v3, v0}, LaV/r;->b(LaV/q;)V

    goto :goto_5d

    :catchall_6f
    move-exception v0

    monitor-exit v4
    :try_end_71
    .catchall {:try_start_28 .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    :try_start_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6f

    invoke-direct {p0, p1, v2}, LaV/n;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(I)Z
    .registers 4

    iget-object v0, p0, LaV/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    invoke-interface {v0}, LaV/o;->c()I

    move-result v0

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b()I
    .registers 5

    const/16 v0, -0x64

    iget-object v1, p0, LaV/n;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    invoke-interface {v0}, LaV/o;->g()I

    move-result v3

    if-le v3, v1, :cond_24

    invoke-interface {v0}, LaV/o;->g()I

    move-result v0

    :goto_1f
    move v1, v0

    goto :goto_9

    :cond_21
    add-int/lit8 v0, v1, 0x64

    return v0

    :cond_24
    move v0, v1

    goto :goto_1f
.end method

.method public b(I)V
    .registers 4

    iget-object v1, p0, LaV/n;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaV/n;->b:LaV/r;

    invoke-virtual {v0, p1}, LaV/r;->b(I)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c(I)LaV/o;
    .registers 5

    iget-object v0, p0, LaV/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    invoke-interface {v0}, LaV/o;->c()I

    move-result v2

    if-ne v2, p1, :cond_6

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaV/n;->a(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, LaV/n;->a(I)Z

    move-result v0

    return v0
.end method

.method public e()LaM/f;
    .registers 2

    iget-object v0, p0, LaV/n;->e:LaM/f;

    return-object v0
.end method

.method public f()Lam/b;
    .registers 2

    iget-object v0, p0, LaV/n;->c:LaJ/u;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LaV/n;->c:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->n()Lam/b;

    move-result-object v0

    goto :goto_5
.end method

.method public g()LaJ/B;
    .registers 2

    iget-object v0, p0, LaV/n;->d:LaE/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LaV/n;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->r()LaJ/B;

    move-result-object v0

    goto :goto_5
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, LaV/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/o;

    invoke-interface {v0}, LaV/o;->e()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public i()LaV/r;
    .registers 2

    iget-object v0, p0, LaV/n;->b:LaV/r;

    return-object v0
.end method

.method public j()V
    .registers 1

    return-void
.end method
