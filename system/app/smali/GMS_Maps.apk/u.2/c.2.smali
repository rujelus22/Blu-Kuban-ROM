.class public Lu/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lu/c;

.field private static b:Lat/h;

.field private static c:Lat/g;

.field private static final d:Ljava/util/ArrayList;


# instance fields
.field private final e:Ljava/util/Locale;

.field private final f:[Lu/e;

.field private final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lu/c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;[Lu/e;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/c;->e:Ljava/util/Locale;

    iput-object p2, p0, Lu/c;->f:[Lu/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/c;->g:Ljava/util/HashMap;

    array-length v1, p2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_24

    aget-object v2, p2, v0

    iget-object v3, p0, Lu/c;->g:Ljava/util/HashMap;

    invoke-static {v2}, Lu/e;->a(Lu/e;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DA_DirOpt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lu/c;
    .registers 1

    sget-object v0, Lu/c;->a:Lu/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lu/c;->a:Lu/c;

    iget-object v1, v1, Lu/c;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lu/c;->a(Landroid/content/Context;Z)V

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Lat/h;)V
    .registers 5

    sput-object p1, Lu/c;->b:Lat/h;

    new-instance v0, Lu/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lu/e;

    invoke-direct {v0, v1, v2}, Lu/c;-><init>(Ljava/util/Locale;[Lu/e;)V

    sput-object v0, Lu/c;->a:Lu/c;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lu/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)V
    .registers 6

    const-class v1, Lu/c;

    monitor-enter v1

    if-eqz p1, :cond_18

    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lu/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LbD/aR;->v:Lam/e;

    invoke-static {p0, v2, v3}, Ln/b;->a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_2d

    move-result-object v2

    if-eqz v2, :cond_18

    :try_start_15
    invoke-static {v0, v2}, Lu/c;->b(Ljava/util/Locale;Lam/b;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_2d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_30

    :cond_18
    :goto_18
    :try_start_18
    sget-object v0, Lu/c;->c:Lat/g;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_2d

    if-eqz v0, :cond_1e

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    :try_start_1e
    new-instance v0, Lu/d;

    invoke-direct {v0, p0}, Lu/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/c;->c:Lat/g;

    sget-object v0, Lu/c;->b:Lat/h;

    sget-object v2, Lu/c;->c:Lat/g;

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2d

    goto :goto_1c

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_30
    move-exception v0

    goto :goto_18
.end method

.method static synthetic a(Ljava/util/Locale;Lam/b;)V
    .registers 2

    invoke-static {p0, p1}, Lu/c;->b(Ljava/util/Locale;Lam/b;)V

    return-void
.end method

.method public static declared-synchronized a(Lu/f;)V
    .registers 3

    const-class v1, Lu/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lu/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lu/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a([Lu/b;I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v3, p0

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_1a

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lu/b;->b()I

    move-result v5

    if-ne v5, p1, :cond_17

    invoke-virtual {v4}, Lu/b;->c()I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    move v0, v1

    goto :goto_14
.end method

.method private static declared-synchronized b(Ljava/util/Locale;Lam/b;)V
    .registers 7

    const-class v1, Lu/c;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v2

    new-array v3, v2, [Lu/e;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lu/e;->a(Lam/b;)Lu/e;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    sget-object v0, Lu/c;->a:Lu/c;

    if-eqz v0, :cond_29

    sget-object v0, Lu/c;->a:Lu/c;

    iget-object v0, v0, Lu/c;->f:[Lu/e;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    :cond_29
    new-instance v0, Lu/c;

    invoke-direct {v0, p0, v3}, Lu/c;-><init>(Ljava/util/Locale;[Lu/e;)V

    sput-object v0, Lu/c;->a:Lu/c;

    sget-object v0, Lu/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-interface {v0}, Lu/f;->a()V
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_46

    goto :goto_36

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_49
    const/4 v0, 0x0

    :try_start_4a
    sput-object v0, Lu/c;->c:Lat/g;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_46

    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized b(Lu/f;)V
    .registers 3

    const-class v1, Lu/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lu/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(I)[Lu/b;
    .registers 6

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_1c

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    const/4 v0, 0x2

    new-array v0, v0, [Lu/b;

    new-instance v1, Lu/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v4}, Lu/b;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lu/b;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v4}, Lu/b;-><init>(II)V

    aput-object v2, v0, v1

    goto :goto_5

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static c([Lu/b;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_2a

    if-lez v0, :cond_10

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lu/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lu/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .registers 4

    iget-object v0, p0, Lu/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/e;

    if-eqz v0, :cond_16

    invoke-static {v0}, Lu/e;->b(Lu/e;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a([Lu/b;)I
    .registers 7

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_1c

    aget-object v3, p1, v1

    iget-object v4, p0, Lu/c;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lu/b;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1c
    return v0
.end method

.method public a(I)Lu/e;
    .registers 4

    iget-object v0, p0, Lu/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;[Lu/b;)V
    .registers 5

    invoke-virtual {p0, p2}, Lu/c;->a([Lu/b;)I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lu/c;->a(Landroid/content/Context;Z)V

    :cond_b
    return-void
.end method

.method public b([Lu/b;)I
    .registers 6

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_16

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lu/b;->b()I

    move-result v3

    invoke-direct {p0, v3}, Lu/c;->c(I)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    return v0
.end method
