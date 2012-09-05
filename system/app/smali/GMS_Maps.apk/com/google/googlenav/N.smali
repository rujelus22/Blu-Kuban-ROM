.class public Lcom/google/googlenav/N;
.super Lat/a;


# static fields
.field static a:Z

.field private static final b:Ljava/lang/Object;

.field private static c:I

.field private static d:J

.field private static e:Lcom/google/googlenav/P;

.field private static final f:Ljava/util/Hashtable;


# instance fields
.field private final g:Lam/b;

.field private final h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/N;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/N;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/googlenav/N;->f:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Lam/b;Z)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/N;->g:Lam/b;

    invoke-static {}, Laf/d;->b()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/google/googlenav/N;->e:Lcom/google/googlenav/P;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/google/googlenav/N;->e:Lcom/google/googlenav/P;

    invoke-interface {v2, p0}, Lcom/google/googlenav/P;->a(Lcom/google/googlenav/N;)V

    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/N;->i()J

    move-result-wide v4

    sget-object v6, Lcom/google/googlenav/N;->b:Ljava/lang/Object;

    monitor-enter v6

    if-eqz p2, :cond_30

    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lcom/google/googlenav/N;->h:Z

    :goto_22
    sget v0, Lcom/google/googlenav/N;->c:I

    if-nez v0, :cond_28

    sput-wide v4, Lcom/google/googlenav/N;->d:J

    :cond_28
    sget v0, Lcom/google/googlenav/N;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/googlenav/N;->c:I

    monitor-exit v6

    return-void

    :cond_30
    sget v2, Lcom/google/googlenav/N;->c:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_51

    move v3, v1

    :goto_37
    sget v2, Lcom/google/googlenav/N;->c:I

    if-lez v2, :cond_53

    sget-wide v7, Lcom/google/googlenav/N;->d:J

    sub-long v7, v4, v7

    const-wide/16 v9, 0x7530

    cmp-long v2, v7, v9

    if-ltz v2, :cond_53

    move v2, v1

    :goto_46
    if-nez v3, :cond_4a

    if-eqz v2, :cond_4b

    :cond_4a
    move v0, v1

    :cond_4b
    iput-boolean v0, p0, Lcom/google/googlenav/N;->h:Z

    goto :goto_22

    :catchall_4e
    move-exception v0

    monitor-exit v6
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    move v3, v0

    goto :goto_37

    :cond_53
    move v2, v0

    goto :goto_46
.end method

.method public static a(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lam/b;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/N;->c(Lam/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lam/b;)V
    .registers 1

    invoke-static {p0}, Lcom/google/googlenav/N;->d(Lam/b;)V

    return-void
.end method

.method static synthetic b(I)Z
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/N;->c(I)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0xa -> :sswitch_5
        0xe -> :sswitch_5
        0x1d -> :sswitch_5
    .end sparse-switch
.end method

.method private static c(Lam/b;)Z
    .registers 5

    invoke-static {p0}, Lcom/google/googlenav/N;->e(Lam/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/googlenav/N;->f(Lam/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/googlenav/N;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sget-object v3, Lcom/google/googlenav/N;->f:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-virtual {v0, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_20
.end method

.method private static d(Lam/b;)V
    .registers 3

    invoke-static {p0}, Lcom/google/googlenav/N;->e(Lam/b;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/N;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static e(Lam/b;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Lam/b;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x6

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4a

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/N;->i:Z

    if-nez v0, :cond_e

    sget-object v1, Lcom/google/googlenav/N;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget v0, Lcom/google/googlenav/N;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/googlenav/N;->c:I

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/N;->i:Z

    iget-object v0, p0, Lcom/google/googlenav/N;->g:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/dy;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected i()J
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/N;->h:Z

    return v0
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
