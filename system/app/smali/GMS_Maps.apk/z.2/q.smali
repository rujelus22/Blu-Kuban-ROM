.class Lz/q;
.super Lat/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lz/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lz/q;->b:Ljava/lang/Long;

    iput-object p3, p0, Lz/q;->d:Ljava/lang/String;

    iput-object p4, p0, Lz/q;->c:Ljava/lang/Long;

    iput-object p5, p0, Lz/q;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lz/o;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lz/q;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/z;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v4, v4}, Lam/b;->h(II)V

    iget-object v1, p0, Lz/q;->b:Ljava/lang/Long;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lz/q;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Lam/b;->b(IJ)V

    :cond_19
    new-instance v1, Lam/b;

    sget-object v2, LbD/z;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v4, v0}, Lam/b;->a(ILam/b;)V

    new-instance v0, Lam/b;

    sget-object v2, LbD/z;->d:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Lam/b;->h(II)V

    iget-object v2, p0, Lz/q;->c:Ljava/lang/Long;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lz/q;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lam/b;->b(IJ)V

    :cond_3b
    invoke-virtual {v1, v4, v0}, Lam/b;->a(ILam/b;)V

    invoke-static {v1}, Lae/d;->a(Lam/b;)V

    invoke-virtual {v1}, Lam/b;->d()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 12

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v0, LbD/z;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_63

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v6}, Lam/b;->d(I)I

    move-result v4

    if-ne v4, v6, :cond_3d

    invoke-virtual {v3, v7}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v3, v8}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lz/q;->a:Landroid/content/Context;

    iget-object v5, p0, Lz/q;->d:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Ln/b;->a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z

    invoke-virtual {v3, v8}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    new-instance v4, Lz/l;

    invoke-direct {v4, v3}, Lz/l;-><init>(Lam/b;)V

    invoke-static {v4}, Lz/n;->a(Lz/l;)Lz/l;

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3d
    invoke-virtual {v3, v6}, Lam/b;->d(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3a

    invoke-virtual {v3, v7}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3, v9}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lz/q;->a:Landroid/content/Context;

    iget-object v5, p0, Lz/q;->e:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Ln/b;->a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z

    invoke-virtual {v3, v9}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/dp;->a(Lam/b;)Lcom/google/android/maps/driveabout/vector/dp;

    move-result-object v3

    invoke-static {v3}, Lz/n;->a(Lcom/google/android/maps/driveabout/vector/dp;)Lcom/google/android/maps/driveabout/vector/dp;

    goto :goto_3a

    :cond_63
    invoke-static {v6}, Lz/n;->b(Z)Z

    const-class v1, Lz/n;

    monitor-enter v1

    :try_start_69
    const-class v0, Lz/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return v6

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
