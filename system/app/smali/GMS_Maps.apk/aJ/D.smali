.class public LaJ/D;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/o;
.implements Laf/j;
.implements Lar/m;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/Hashtable;

.field b:LaJ/K;

.field volatile c:Z

.field private final d:Z

.field private final e:Ljava/util/Vector;

.field private f:LaJ/m;

.field private final g:Ljava/util/Vector;

.field private h:I

.field private i:I

.field private volatile j:Z

.field private k:LaJ/G;

.field private l:I

.field private final m:Ljava/util/Hashtable;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:J

.field private final q:Ljava/util/List;

.field private r:I

.field private s:J


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/D;->g:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/D;->k:LaJ/G;

    iput v2, p0, LaJ/D;->l:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaJ/D;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaJ/D;->o:Ljava/lang/Object;

    iput-boolean v4, p0, LaJ/D;->c:Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaJ/D;->q:Ljava/util/List;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaJ/D;->s:J

    const/16 v0, 0x1a

    iput v0, p0, LaJ/D;->r:I

    if-ne p1, v3, :cond_76

    iput-boolean v4, p0, LaJ/D;->d:Z

    const/16 v0, 0x61a8

    iput v0, p0, LaJ/D;->h:I

    invoke-direct {p0}, LaJ/D;->s()V

    :goto_42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/D;->m:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    iput-boolean v2, p0, LaJ/D;->j:Z

    new-instance v0, LaJ/E;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LaJ/E;-><init>(LaJ/D;Lap/c;IILjava/lang/String;)V

    invoke-virtual {v0}, LaJ/E;->g()V

    invoke-static {}, LaJ/D;->u()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/D;->p:J

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, LaJ/F;

    invoke-direct {v1, p0}, LaJ/F;-><init>(LaJ/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    return-void

    :cond_76
    iput-boolean v2, p0, LaJ/D;->d:Z

    iput p1, p0, LaJ/D;->h:I

    if-ne p2, v3, :cond_80

    invoke-direct {p0}, LaJ/D;->s()V

    goto :goto_42

    :cond_80
    iput p2, p0, LaJ/D;->i:I

    goto :goto_42
.end method

.method private a([J[LaJ/P;III)I
    .registers 12

    aget-wide v2, p1, p5

    invoke-direct {p0, p1, p2, p5, p4}, LaJ/D;->a([J[LaJ/P;II)V

    move v1, p3

    :goto_6
    if-ge p3, p4, :cond_17

    aget-wide v4, p1, p3

    cmp-long v0, v4, v2

    if-ltz v0, :cond_25

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, LaJ/D;->a([J[LaJ/P;II)V

    :goto_13
    add-int/lit8 p3, p3, 0x1

    move v1, v0

    goto :goto_6

    :cond_17
    aget-wide v2, p1, p4

    aget-wide v4, p1, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_23

    invoke-direct {p0, p1, p2, p4, v1}, LaJ/D;->a([J[LaJ/P;II)V

    :goto_22
    return v1

    :cond_23
    move v1, p4

    goto :goto_22

    :cond_25
    move v0, v1

    goto :goto_13
.end method

.method static a(LaJ/P;JJ)J
    .registers 7

    sub-long v0, p1, p3

    return-wide v0
.end method

.method private a(LaJ/P;I)Lah/f;
    .registers 4

    packed-switch p2, :pswitch_data_10

    invoke-direct {p0, p1}, LaJ/D;->c(LaJ/P;)Lah/f;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_a
    invoke-direct {p0, p1}, LaJ/D;->b(LaJ/P;)Lah/f;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private a(LaJ/P;LaJ/P;LaJ/I;)Lah/f;
    .registers 11

    const/16 v5, 0x100

    const/4 v0, 0x0

    const/16 v3, 0x80

    invoke-virtual {p1}, LaJ/P;->c()I

    move-result v1

    invoke-virtual {p2}, LaJ/P;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_27

    move v1, v0

    :goto_12
    invoke-virtual {p1}, LaJ/P;->d()I

    move-result v2

    invoke-virtual {p2}, LaJ/P;->d()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_29

    move v2, v0

    :goto_1f
    move-object v0, p3

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, LaJ/I;->a(IIIIII)Lah/f;

    move-result-object v0

    return-object v0

    :cond_27
    move v1, v3

    goto :goto_12

    :cond_29
    move v2, v3

    goto :goto_1f
.end method

.method private a(I)V
    .registers 9

    const/4 v0, 0x0

    iget-object v3, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v3

    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, LaJ/D;->j:Z

    invoke-virtual {p0}, LaJ/D;->i()[LaJ/P;

    move-result-object v4

    move v2, v0

    move v1, p1

    :goto_d
    array-length v0, v4

    if-ge v2, v0, :cond_42

    iget v0, p0, LaJ/D;->i:I

    if-le v1, v0, :cond_42

    aget-object v5, v4, v2

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->e()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-virtual {v0}, LaJ/I;->v()Z

    move-result v6

    if-nez v6, :cond_47

    :cond_2a
    iget-object v6, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, LaJ/I;->j()I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_3a

    move-result v0

    sub-int v0, v1, v0

    :goto_35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_d

    :catchall_3a
    move-exception v0

    const/4 v1, 0x0

    :try_start_3c
    iput-boolean v1, p0, LaJ/D;->j:Z

    throw v0

    :catchall_3f
    move-exception v0

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    const/4 v0, 0x0

    :try_start_43
    iput-boolean v0, p0, LaJ/D;->j:Z

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3f

    return-void

    :cond_47
    move v0, v1

    goto :goto_35
.end method

.method private a(IILjava/lang/String;)V
    .registers 5

    if-lez p1, :cond_a

    new-instance v0, LaJ/x;

    invoke-direct {v0, p0, p3, p1, p2}, LaJ/x;-><init>(LaJ/D;Ljava/lang/String;II)V

    iput-object v0, p0, LaJ/D;->b:LaJ/K;

    :goto_9
    return-void

    :cond_a
    new-instance v0, LaJ/L;

    invoke-direct {v0}, LaJ/L;-><init>()V

    iput-object v0, p0, LaJ/D;->b:LaJ/K;

    goto :goto_9
.end method

.method static synthetic a(LaJ/D;)V
    .registers 1

    invoke-direct {p0}, LaJ/D;->w()V

    return-void
.end method

.method static synthetic a(LaJ/D;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, LaJ/D;->a(IILjava/lang/String;)V

    return-void
.end method

.method private a(LaJ/I;)V
    .registers 4

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v0

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(LaJ/I;I)V
    .registers 5

    iget-object v0, p0, LaJ/D;->k:LaJ/G;

    if-nez v0, :cond_13

    new-instance v0, LaJ/G;

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v1

    invoke-virtual {v1}, LaJ/P;->b()B

    move-result v1

    invoke-direct {v0, p0, v1}, LaJ/G;-><init>(LaJ/D;B)V

    iput-object v0, p0, LaJ/D;->k:LaJ/G;

    :cond_13
    iget-object v0, p0, LaJ/D;->k:LaJ/G;

    invoke-virtual {v0, p1, p2}, LaJ/G;->a(LaJ/I;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LaJ/I;->a(Z)V

    return-void
.end method

.method private a([J[LaJ/P;)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, LaJ/D;->b([J[LaJ/P;II)V

    return-void
.end method

.method private a([J[LaJ/P;II)V
    .registers 9

    aget-object v0, p2, p4

    aget-object v1, p2, p3

    aput-object v1, p2, p4

    aput-object v0, p2, p3

    aget-wide v0, p1, p4

    aget-wide v2, p1, p3

    aput-wide v2, p1, p4

    aput-wide v0, p1, p3

    return-void
.end method

.method static synthetic b(LaJ/D;)I
    .registers 2

    iget v0, p0, LaJ/D;->r:I

    return v0
.end method

.method private b(LaJ/P;)Lah/f;
    .registers 3

    iget-object v0, p0, LaJ/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/f;

    return-object v0
.end method

.method private b([J[LaJ/P;II)V
    .registers 11

    if-le p4, p3, :cond_16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, LaJ/D;->a([J[LaJ/P;III)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, p2, p3, v1}, LaJ/D;->b([J[LaJ/P;II)V

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0, p4}, LaJ/D;->b([J[LaJ/P;II)V

    :cond_16
    return-void
.end method

.method static synthetic c(LaJ/D;)I
    .registers 3

    iget v0, p0, LaJ/D;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LaJ/D;->l:I

    return v0
.end method

.method private c(LaJ/P;)Lah/f;
    .registers 4

    iget-object v0, p0, LaJ/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/f;

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, LaJ/D;->d(LaJ/P;)Lah/f;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, LaJ/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method static synthetic d(LaJ/D;)I
    .registers 3

    iget v0, p0, LaJ/D;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LaJ/D;->l:I

    return v0
.end method

.method private d(LaJ/P;)Lah/f;
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, LaJ/D;->u()J

    move-result-wide v2

    iget-wide v4, p0, LaJ/D;->s:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p1}, LaJ/P;->h()LaJ/P;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, LaJ/P;->e()LaJ/Y;

    move-result-object v4

    invoke-virtual {p1}, LaJ/P;->e()LaJ/Y;

    move-result-object v5

    invoke-virtual {v4, v5}, LaJ/Y;->a(LaJ/Y;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v5, v6, v7}, LaJ/D;->a(LaJ/P;IZZ)LaJ/I;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    invoke-direct {p0, p1, v1, v5}, LaJ/D;->a(LaJ/P;LaJ/P;LaJ/I;)Lah/f;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_e

    :catch_30
    move-exception v1

    invoke-direct {p0}, LaJ/D;->t()V

    iput-wide v2, p0, LaJ/D;->s:J

    const-string v2, "Map Service image scaling"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private d(Z)V
    .registers 13

    if-eqz p1, :cond_5e

    const-wide/16 v0, 0x7d0

    move-wide v2, v0

    :goto_5
    iget-object v5, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v5

    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {p0, v0}, LaJ/D;->b(Z)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_68

    :try_start_c
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v6

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    :cond_1e
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/P;

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/I;

    invoke-virtual {v1}, LaJ/I;->g()J

    move-result-wide v9

    add-long/2addr v9, v2

    cmp-long v4, v9, v6

    if-gez v4, :cond_1e

    invoke-virtual {v1}, LaJ/I;->d()V

    iget-object v1, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_47
    if-ltz v4, :cond_1e

    iget-object v1, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/k;

    const/16 v9, 0x8

    invoke-static {v9, v0}, LaJ/P;->a(BLaJ/P;)LaJ/P;

    move-result-object v9

    invoke-virtual {v1, v9}, LaJ/k;->b(LaJ/P;)V
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_62

    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_47

    :cond_5e
    const-wide/16 v0, 0xfa0

    move-wide v2, v0

    goto :goto_5

    :catchall_62
    move-exception v0

    const/4 v1, 0x0

    :try_start_64
    invoke-virtual {p0, v1}, LaJ/D;->b(Z)V

    throw v0

    :catchall_68
    move-exception v0

    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_68

    throw v0

    :cond_6b
    const/4 v0, 0x0

    :try_start_6c
    invoke-virtual {p0, v0}, LaJ/D;->b(Z)V

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_68

    return-void
.end method

.method private e(LaJ/P;)J
    .registers 4

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(LaJ/D;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaJ/D;->q:Ljava/util/List;

    return-object v0
.end method

.method private s()V
    .registers 2

    iget v0, p0, LaJ/D;->h:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, LaJ/D;->i:I

    return-void
.end method

.method private t()V
    .registers 4

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, LaJ/D;->j:Z

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->a()V

    goto :goto_c

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    iput-boolean v0, p0, LaJ/D;->j:Z

    invoke-virtual {p0}, LaJ/D;->b()V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1c

    return-void
.end method

.method private static u()J
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method private v()V
    .registers 3

    iget-boolean v0, p0, LaJ/D;->c:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/D;->c:Z

    iget-object v1, p0, LaJ/D;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, LaJ/D;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    iget-object v1, p0, LaJ/D;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, LaJ/D;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private w()V
    .registers 3

    iget-boolean v0, p0, LaJ/D;->c:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/D;->c:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MapService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_15
    return-void
.end method


# virtual methods
.method a(LaJ/P;IZIJ)LaJ/I;
    .registers 14

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    iget-object v1, p0, LaJ/D;->b:LaJ/K;

    if-nez v1, :cond_10

    move p3, v4

    :cond_10
    const-wide/high16 v1, -0x8000

    cmp-long v1, p5, v1

    if-nez v1, :cond_be

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    :goto_22
    if-nez v0, :cond_93

    iget-boolean v0, p0, LaJ/D;->j:Z

    if-nez v0, :cond_8d

    iget-object v4, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v4

    const/4 v0, 0x1

    :try_start_2c
    invoke-virtual {p0, v0}, LaJ/D;->b(Z)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_79

    :try_start_2f
    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    if-eqz v0, :cond_67

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    invoke-interface {v0, p1}, LaJ/K;->a(LaJ/P;)LaJ/I;

    move-result-object v0

    :goto_39
    if-nez v0, :cond_7c

    invoke-direct {p0, p1, p4}, LaJ/D;->a(LaJ/P;I)Lah/f;

    move-result-object v3

    if-eqz p3, :cond_69

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->l()Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, LaJ/I;

    invoke-direct {v0, p1, v3}, LaJ/I;-><init>(LaJ/P;Lah/f;)V

    invoke-direct {p0, v0, p2}, LaJ/D;->a(LaJ/I;I)V

    invoke-direct {p0, v0}, LaJ/D;->a(LaJ/I;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/googlenav/bv;->a(B)Lcom/google/googlenav/bv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bv;->c()V
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_73

    :goto_5e
    const/4 v3, 0x0

    :try_start_5f
    invoke-virtual {p0, v3}, LaJ/D;->b(Z)V

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_79

    :goto_63
    invoke-virtual {v0, v1, v2}, LaJ/I;->a(J)V

    return-object v0

    :cond_67
    move-object v0, v3

    goto :goto_39

    :cond_69
    :try_start_69
    new-instance v0, LaJ/I;

    const/4 v5, 0x1

    invoke-direct {v0, p1, v3, v5}, LaJ/I;-><init>(LaJ/P;Lah/f;Z)V

    invoke-direct {p0, v0}, LaJ/D;->a(LaJ/I;)V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_5e

    :catchall_73
    move-exception v0

    const/4 v1, 0x0

    :try_start_75
    invoke-virtual {p0, v1}, LaJ/D;->b(Z)V

    throw v0

    :catchall_79
    move-exception v0

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_79

    throw v0

    :cond_7c
    if-nez p3, :cond_81

    const-wide/16 v5, 0x4e20

    sub-long/2addr v1, v5

    :cond_81
    :try_start_81
    invoke-direct {p0, v0}, LaJ/D;->a(LaJ/I;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/googlenav/bv;->a(B)Lcom/google/googlenav/bv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bv;->b()V
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_73

    goto :goto_5e

    :cond_8d
    new-instance v0, LaJ/I;

    invoke-direct {v0, p1, v3, v5}, LaJ/I;-><init>(LaJ/P;Lah/f;Z)V

    goto :goto_63

    :cond_93
    invoke-virtual {v0}, LaJ/I;->e()Z

    move-result v3

    if-nez v3, :cond_b6

    invoke-virtual {v0}, LaJ/I;->v()Z

    move-result v3

    if-nez v3, :cond_b6

    if-eqz p3, :cond_b6

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v3

    invoke-virtual {v3}, Lat/h;->l()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-direct {p0, v0, p2}, LaJ/D;->a(LaJ/I;I)V

    invoke-static {v4}, Lcom/google/googlenav/bv;->a(B)Lcom/google/googlenav/bv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bv;->c()V

    goto :goto_63

    :cond_b6
    invoke-static {v4}, Lcom/google/googlenav/bv;->a(B)Lcom/google/googlenav/bv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bv;->a()V

    goto :goto_63

    :cond_be
    move-wide v1, p5

    goto/16 :goto_22
.end method

.method public a(LaJ/P;IZZ)LaJ/I;
    .registers 12

    const-wide/high16 v5, -0x8000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, LaJ/D;->a(LaJ/P;IZZJ)LaJ/I;

    move-result-object v0

    return-object v0
.end method

.method a(LaJ/P;IZZJ)LaJ/I;
    .registers 14

    if-eqz p4, :cond_d

    const/4 v4, 0x2

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, LaJ/D;->a(LaJ/P;IZIJ)LaJ/I;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public a(LaJ/P;)LaJ/n;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, LaJ/D;->a(LaJ/P;IZZ)LaJ/I;

    move-result-object v0

    invoke-virtual {v0}, LaJ/I;->p()LaJ/n;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method public a(LaJ/P;ZJ)Ljava/util/Vector;
    .registers 8

    iget-object v0, p0, LaJ/D;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_41

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->b()Z

    move-result v2

    if-eqz v2, :cond_39

    const/16 v2, 0x8

    invoke-static {v2, p1}, LaJ/P;->a(BLaJ/P;)LaJ/P;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, LaJ/k;->a(LaJ/P;Z)LaJ/n;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, LaJ/n;->h()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, LaJ/D;->g:Ljava/util/Vector;

    invoke-virtual {v0, p3, p4}, LaJ/n;->b(J)Lah/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    :cond_3d
    invoke-virtual {v0, p3, p4}, LaJ/n;->a(J)V

    goto :goto_39

    :cond_41
    iget-object v0, p0, LaJ/D;->g:Ljava/util/Vector;

    return-object v0
.end method

.method a(II)V
    .registers 8

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    if-eqz v0, :cond_51

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    invoke-interface {v0, p1, p2}, LaJ/K;->a(II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v2, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_f
    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/P;

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/I;

    invoke-virtual {v1}, LaJ/I;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :try_start_3a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/P;

    iget-object v3, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_37

    :cond_51
    return-void
.end method

.method public a(LaJ/k;)V
    .registers 3

    if-eqz p1, :cond_12

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laf/l;->a(Laf/j;)V

    :cond_12
    return-void
.end method

.method public a(LaJ/m;)V
    .registers 2

    iput-object p1, p0, LaJ/D;->f:LaJ/m;

    return-void
.end method

.method a(Laq/e;)V
    .registers 3

    iget-object v0, p0, LaJ/D;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 5

    invoke-static {}, LaJ/f;->f()V

    invoke-direct {p0}, LaJ/D;->t()V

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_a
    invoke-direct {p0, v0}, LaJ/D;->d(Z)V

    iget-boolean v0, p0, LaJ/D;->d:Z

    if-eqz v0, :cond_1d

    const/16 v0, 0x61a8

    iput v0, p0, LaJ/D;->h:I

    invoke-direct {p0}, LaJ/D;->s()V

    :goto_18
    invoke-virtual {p0}, LaJ/D;->d()V

    monitor-exit v1

    return-void

    :cond_1d
    iget v0, p0, LaJ/D;->h:I

    add-int/lit16 v0, v0, -0x1f40

    const/16 v2, 0x61a8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LaJ/D;->h:I

    invoke-direct {p0}, LaJ/D;->s()V

    goto :goto_18

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method b()V
    .registers 4

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaJ/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/f;

    invoke-interface {v0}, Lah/f;->d()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, LaJ/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    return-void
.end method

.method public b(LaJ/k;)V
    .registers 3

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-static {p1}, Laf/l;->c(Laf/j;)V

    return-void
.end method

.method public b(Laq/e;)V
    .registers 3

    iget-object v0, p0, LaJ/D;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Z)V
    .registers 2

    iput-boolean p1, p0, LaJ/D;->j:Z

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->f()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method c(Z)V
    .registers 4

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    invoke-direct {p0}, LaJ/D;->v()V

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    invoke-interface {v0, p1}, LaJ/K;->a(Z)V

    :cond_f
    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_18
    if-ltz v1, :cond_2c

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->d()V

    invoke-static {v0}, Laf/l;->c(Laf/j;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_18

    :cond_2c
    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method d()V
    .registers 6

    invoke-virtual {p0}, LaJ/D;->e()I

    move-result v0

    iget v1, p0, LaJ/D;->h:I

    if-le v0, v1, :cond_3e

    iget-boolean v1, p0, LaJ/D;->d:Z

    if-eqz v1, :cond_3f

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x9c40

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x61a8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, LaJ/D;->h:I

    invoke-direct {p0}, LaJ/D;->s()V

    iget v1, p0, LaJ/D;->h:I

    if-ge v0, v1, :cond_3f

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    invoke-direct {p0, v0}, LaJ/D;->a(I)V

    goto :goto_3e
.end method

.method e()I
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->j()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_b

    :cond_1e
    monitor-exit v2

    return v1

    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public f()I
    .registers 7

    const/4 v0, 0x0

    iget-object v3, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v3

    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, LaJ/D;->b(Z)V

    invoke-virtual {p0}, LaJ/D;->h()I

    move-result v1

    const/16 v2, 0x30

    if-le v1, v2, :cond_3f

    invoke-virtual {p0}, LaJ/D;->i()[LaJ/P;

    move-result-object v4

    move v2, v0

    :goto_15
    array-length v0, v4

    if-ge v2, v0, :cond_3f

    const/16 v0, 0x18

    if-le v1, v0, :cond_3f

    aget-object v0, v4, v2

    iget-object v5, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->t()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual {v0}, LaJ/I;->k()V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_36

    add-int/lit8 v0, v1, -0x1

    :goto_31
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_15

    :catchall_36
    move-exception v0

    const/4 v1, 0x0

    :try_start_38
    invoke-virtual {p0, v1}, LaJ/D;->b(Z)V

    throw v0

    :catchall_3c
    move-exception v0

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    const/4 v0, 0x0

    :try_start_40
    invoke-virtual {p0, v0}, LaJ/D;->b(Z)V

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3c

    return v1

    :cond_45
    move v0, v1

    goto :goto_31
.end method

.method public g()Lar/k;
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, LaJ/D;->a:Ljava/util/Hashtable;

    monitor-enter v5

    :try_start_9
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v7

    move v1, v2

    :goto_14
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->x()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_14

    :cond_27
    new-instance v0, Lar/k;

    const-string v7, "images"

    invoke-direct {v0, v7, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lar/k;

    const-string v1, "data"

    invoke-virtual {p0}, LaJ/D;->e()I

    move-result v7

    invoke-direct {v0, v1, v7}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lar/k;

    const-string v1, "mapCache"

    invoke-direct {v0, v1, v3, v6}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LaJ/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v2

    :goto_50
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/f;

    invoke-interface {v0}, Lah/f;->g()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_50

    :cond_63
    new-instance v0, Lar/k;

    const-string v3, "tempScaledImages"

    invoke-direct {v0, v3, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_9 .. :try_end_6e} :catchall_93

    new-instance v0, Lar/k;

    const-string v1, "layerServices"

    invoke-direct {v0, v1, v2}, Lar/k;-><init>(Ljava/lang/String;I)V

    move v1, v2

    move-object v3, v0

    :goto_77
    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_96

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v3, v0}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v5
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    :cond_96
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lar/k;

    const-string v1, "MapService"

    invoke-direct {v0, v1, v2, v4}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method h()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1e
    return v1
.end method

.method i()[LaJ/P;
    .registers 10

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v2

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v4, v0, [LaJ/P;

    iget-object v0, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v5, v0, [J

    const/4 v0, 0x0

    iget-object v1, p0, LaJ/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    move v1, v0

    :goto_24
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/P;

    aput-object v0, v4, v1

    aget-object v0, v4, v1

    aget-object v7, v4, v1

    invoke-direct {p0, v7}, LaJ/D;->e(LaJ/P;)J

    move-result-wide v7

    invoke-static {v0, v2, v3, v7, v8}, LaJ/D;->a(LaJ/P;JJ)J

    move-result-wide v7

    aput-wide v7, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_44
    invoke-direct {p0, v5, v4}, LaJ/D;->a([J[LaJ/P;)V

    return-object v4
.end method

.method j()Z
    .registers 3

    iget-object v0, p0, LaJ/D;->k:LaJ/G;

    if-eqz v0, :cond_12

    iget-object v0, p0, LaJ/D;->k:LaJ/G;

    const/4 v1, 0x0

    iput-object v1, p0, LaJ/D;->k:LaJ/G;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_20

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->b()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, LaJ/k;->e()V

    :cond_1c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_20
    return-void
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, LaJ/D;->f:LaJ/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaJ/D;->f:LaJ/m;

    invoke-interface {v0}, LaJ/m;->c()V

    :cond_9
    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_23

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    :cond_23
    return-void
.end method

.method public m()Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, LaJ/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/k;

    invoke-virtual {v0}, LaJ/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public n()Z
    .registers 2

    iget v0, p0, LaJ/D;->l:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method o()V
    .registers 3

    invoke-static {}, LaJ/D;->u()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/D;->p:J

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    invoke-interface {v0}, LaJ/K;->g()V

    :cond_f
    iget-object v1, p0, LaJ/D;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iget-object v0, p0, LaJ/D;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method p()V
    .registers 1

    invoke-direct {p0}, LaJ/D;->v()V

    return-void
.end method

.method q()V
    .registers 1

    invoke-direct {p0}, LaJ/D;->w()V

    return-void
.end method

.method r()V
    .registers 2

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaJ/D;->b:LaJ/K;

    invoke-interface {v0}, LaJ/K;->h()V

    :cond_9
    return-void
.end method

.method public run()V
    .registers 15

    const-wide/16 v12, 0xc29

    const-wide/16 v10, 0x835

    invoke-static {}, LaJ/D;->u()J

    move-result-wide v0

    add-long v2, v0, v10

    invoke-static {}, LaJ/D;->u()J

    move-result-wide v0

    add-long/2addr v0, v12

    :cond_f
    :goto_f
    iget-boolean v4, p0, LaJ/D;->c:Z

    if-nez v4, :cond_7a

    :try_start_13
    iget-object v6, p0, LaJ/D;->o:Ljava/lang/Object;

    monitor-enter v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_16} :catch_75

    :try_start_16
    invoke-static {}, LaJ/D;->u()J

    move-result-wide v7

    cmp-long v4, v2, v0

    if-gez v4, :cond_70

    move-wide v4, v2

    :goto_1f
    sub-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_2b

    iget-object v7, p0, LaJ/D;->o:Ljava/lang/Object;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_72
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_2b} :catch_7d

    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_72

    :try_start_2c
    iget-boolean v4, p0, LaJ/D;->c:Z

    if-nez v4, :cond_f

    invoke-static {}, LaJ/D;->u()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3d

    invoke-virtual {p0}, LaJ/D;->d()V

    add-long v2, v4, v10

    :cond_3d
    cmp-long v6, v0, v4

    if-gez v6, :cond_47

    const/4 v6, 0x0

    invoke-direct {p0, v6}, LaJ/D;->d(Z)V

    add-long v0, v4, v12

    :cond_47
    iget-object v6, p0, LaJ/D;->b:LaJ/K;

    if-eqz v6, :cond_f

    iget-object v6, p0, LaJ/D;->b:LaJ/K;

    invoke-interface {v6}, LaJ/K;->i()Z

    move-result v6

    if-nez v6, :cond_f

    iget-wide v6, p0, LaJ/D;->p:J

    const-wide/16 v8, 0xfa0

    add-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_f

    iget-object v5, p0, LaJ/D;->n:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5f} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_5f} :catch_75

    :try_start_5f
    iget-object v4, p0, LaJ/D;->n:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_66
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_64} :catch_7b

    :goto_64
    :try_start_64
    monitor-exit v5

    goto :goto_f

    :catchall_66
    move-exception v4

    monitor-exit v5
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_66

    :try_start_68
    throw v4
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_69} :catch_75

    :catch_69
    move-exception v4

    const-string v5, "MapService BG"

    invoke-static {v5, v4}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_70
    move-wide v4, v0

    goto :goto_1f

    :catchall_72
    move-exception v4

    :try_start_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v4
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_74 .. :try_end_75} :catch_75

    :catch_75
    move-exception v4

    invoke-static {}, Laf/l;->b()V

    goto :goto_f

    :cond_7a
    return-void

    :catch_7b
    move-exception v4

    goto :goto_64

    :catch_7d
    move-exception v4

    goto :goto_2b
.end method
