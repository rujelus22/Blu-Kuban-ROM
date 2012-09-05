.class public Lcom/google/googlenav/bN;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:LaJ/B;

.field private f:J

.field private g:Z

.field private h:Ljava/util/List;

.field private i:[Lcom/google/googlenav/bN;

.field private j:[Lcom/google/googlenav/bR;

.field private k:Lcom/google/googlenav/bQ;

.field private l:Lcom/google/googlenav/bU;

.field private m:I


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 3

    sget-object v0, LbD/gH;->c:Lam/e;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/bN;-><init>(Lam/b;Lam/e;)V

    return-void
.end method

.method public constructor <init>(Lam/b;Lam/e;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/googlenav/bN;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/googlenav/bN;->f:J

    iput-boolean v4, p0, Lcom/google/googlenav/bN;->g:Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    new-array v1, v4, [Lcom/google/googlenav/bR;

    iput-object v1, p0, Lcom/google/googlenav/bN;->j:[Lcom/google/googlenav/bR;

    iput-object v0, p0, Lcom/google/googlenav/bN;->l:Lcom/google/googlenav/bU;

    sget-object v1, LbD/gH;->b:Lam/e;

    if-ne p2, v1, :cond_37

    invoke-virtual {p1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bN;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bN;->b(Lam/b;)V

    :goto_28
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/bN;->b:J

    return-void

    :cond_37
    sget-object v1, LbD/gH;->c:Lam/e;

    if-ne p2, v1, :cond_4c

    invoke-virtual {p1, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-nez v1, :cond_47

    :goto_41
    iput-object v0, p0, Lcom/google/googlenav/bN;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/bN;->c(Lam/b;)V

    goto :goto_28

    :cond_47
    invoke-virtual {v1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ProtoBufType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(JJ)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/google/googlenav/bN;->b(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/bN;)Lcom/google/googlenav/bU;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->l:Lcom/google/googlenav/bU;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/bN;Lcom/google/googlenav/bU;)Lcom/google/googlenav/bU;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bN;->l:Lcom/google/googlenav/bU;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/bN;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bN;->g:Z

    return p1
.end method

.method private static b(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, -0x1

    goto :goto_5
.end method

.method static synthetic b(Lcom/google/googlenav/bN;)Lcom/google/googlenav/bQ;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->k:Lcom/google/googlenav/bQ;

    return-object v0
.end method

.method private c(Lam/b;)V
    .registers 11

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x7

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bN;->b(Lam/b;)V

    invoke-virtual {p1, v6}, Lam/b;->l(I)I

    move-result v2

    move v0, v1

    :goto_16
    if-ge v0, v2, :cond_29

    iget-object v3, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/bS;

    invoke-virtual {p1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/google/googlenav/bS;-><init>(Lam/b;Lcom/google/googlenav/bN;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_29
    invoke-virtual {p1, v7}, Lam/b;->l(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/bN;

    iput-object v0, p0, Lcom/google/googlenav/bN;->i:[Lcom/google/googlenav/bN;

    move v0, v1

    :goto_32
    iget-object v2, p0, Lcom/google/googlenav/bN;->i:[Lcom/google/googlenav/bN;

    array-length v2, v2

    if-ge v0, v2, :cond_47

    iget-object v2, p0, Lcom/google/googlenav/bN;->i:[Lcom/google/googlenav/bN;

    new-instance v3, Lcom/google/googlenav/bN;

    invoke-virtual {p1, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bN;-><init>(Lam/b;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_47
    invoke-virtual {p1, v8}, Lam/b;->l(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/bR;

    iput-object v0, p0, Lcom/google/googlenav/bN;->j:[Lcom/google/googlenav/bR;

    move v0, v1

    :goto_50
    iget-object v2, p0, Lcom/google/googlenav/bN;->j:[Lcom/google/googlenav/bR;

    array-length v2, v2

    if-ge v0, v2, :cond_65

    iget-object v2, p0, Lcom/google/googlenav/bN;->j:[Lcom/google/googlenav/bR;

    new-instance v3, Lcom/google/googlenav/bR;

    invoke-virtual {p1, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bR;-><init>(Lam/b;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_65
    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/bN;->f:J

    return-void
.end method

.method private d(Lam/b;)V
    .registers 14

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v0, 0x7

    invoke-static {p1, v0, v7}, Lam/g;->c(Lam/b;II)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    invoke-virtual {p1, v11}, Lam/b;->l(I)I

    move-result v9

    move v8, v7

    :goto_f
    if-ge v8, v9, :cond_5f

    new-instance v4, Lcom/google/googlenav/bS;

    invoke-virtual {p1, v11, v8}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-direct {v4, v0, p0}, Lcom/google/googlenav/bS;-><init>(Lam/b;Lcom/google/googlenav/bN;)V

    invoke-virtual {v4}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    move v6, v7

    :goto_21
    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_57

    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/googlenav/bS;

    invoke-virtual {v2}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v10, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    new-instance v0, Lcom/google/googlenav/bS;

    invoke-static {v2}, Lcom/google/googlenav/bS;->b(Lcom/google/googlenav/bS;)Lam/b;

    move-result-object v1

    invoke-static {v2}, Lcom/google/googlenav/bS;->c(Lcom/google/googlenav/bS;)Lam/b;

    move-result-object v2

    invoke-static {v4}, Lcom/google/googlenav/bS;->d(Lcom/google/googlenav/bS;)[Lcom/google/googlenav/bV;

    move-result-object v3

    invoke-static {v4}, Lcom/google/googlenav/bS;->e(Lcom/google/googlenav/bS;)Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bS;-><init>(Lam/b;Lam/b;[Lcom/google/googlenav/bV;ZLcom/google/googlenav/bN;)V

    invoke-interface {v10, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_57
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_f

    :cond_5b
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_21

    :cond_5f
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/google/googlenav/bS;
    .registers 13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_5
    return-object v1

    :cond_6
    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bS;->b(Z)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_e

    if-eqz v1, :cond_2a

    cmp-long v7, v4, v2

    if-gez v7, :cond_2f

    :cond_2a
    move-wide v1, v4

    :goto_2b
    move-wide v9, v1

    move-wide v2, v9

    move-object v1, v0

    goto :goto_e

    :cond_2f
    move-object v0, v1

    move-wide v9, v2

    move-wide v1, v9

    goto :goto_2b
.end method

.method a(Lam/b;)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/google/googlenav/bN;->c(Lam/b;)V

    :goto_b
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/bN;->b:J

    return-void

    :cond_1a
    invoke-direct {p0, p1}, Lcom/google/googlenav/bN;->d(Lam/b;)V

    goto :goto_b
.end method

.method public a(Lcom/google/googlenav/bS;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Lcom/google/googlenav/bS;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    return-object v0
.end method

.method protected b(Lam/b;)V
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :cond_4
    if-nez p1, :cond_1e

    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/googlenav/bN;->d:Ljava/lang/String;

    if-nez p1, :cond_24

    move-object v0, v1

    :goto_c
    if-nez v0, :cond_2a

    :goto_e
    iput-object v1, p0, Lcom/google/googlenav/bN;->e:LaJ/B;

    invoke-virtual {p1, v2}, Lam/b;->l(I)I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lam/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bN;->m:I

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_24
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    goto :goto_c

    :cond_2a
    invoke-static {v0}, LaJ/B;->a(Lam/b;)LaJ/B;

    move-result-object v1

    goto :goto_e
.end method

.method public b(Lcom/google/googlenav/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bN;->k:Lcom/google/googlenav/bQ;

    return-void
.end method

.method public c(I)Lcom/google/googlenav/bR;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bN;->j:[Lcom/google/googlenav/bR;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/bN;->j()I

    move-result v0

    if-lez v0, :cond_4a

    move v0, v1

    :goto_9
    move v3, v2

    :goto_a
    invoke-virtual {p0}, Lcom/google/googlenav/bN;->i()I

    move-result v4

    if-ge v3, v4, :cond_1b

    invoke-virtual {p0, v3}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/bS;->a()Z

    move-result v4

    if-eqz v4, :cond_4c

    move v2, v1

    :cond_1b
    if-eqz v2, :cond_4f

    const-string v2, "d"

    move-object v3, v2

    :goto_20
    if-eqz v0, :cond_53

    const-string v2, "a"

    :goto_24
    invoke-virtual {p0}, Lcom/google/googlenav/bN;->i()I

    move-result v4

    if-ge v4, v1, :cond_56

    if-nez v0, :cond_56

    const-string v0, "e"

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    move v0, v2

    goto :goto_9

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4f
    const-string v2, ""

    move-object v3, v2

    goto :goto_20

    :cond_53
    const-string v2, ""

    goto :goto_24

    :cond_56
    const-string v0, ""

    goto :goto_2e
.end method

.method public d(I)Lcom/google/googlenav/bN;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bN;->i:[Lcom/google/googlenav/bN;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/googlenav/bN;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e()V
    .registers 8

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/google/googlenav/bN;->g:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_40

    if-eqz v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-wide v0, p0, Lcom/google/googlenav/bN;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bN;->g:Z

    new-instance v0, Lap/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/bO;

    invoke-direct {v2, p0}, Lcom/google/googlenav/bO;-><init>(Lcom/google/googlenav/bN;)V

    invoke-direct {v0, v1, v2}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/bN;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/googlenav/bN;->f:J

    sub-long v1, v5, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    invoke-virtual {v0}, Lap/d;->g()V
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_40

    goto :goto_7

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->e:LaJ/B;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->j:[Lcom/google/googlenav/bR;

    array-length v0, v0

    return v0
.end method

.method public k()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/googlenav/bN;->c:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_8
    invoke-virtual {p0}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_2c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_26
    iput v1, p0, Lcom/google/googlenav/bN;->c:I

    :goto_28
    return v2

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2c
    iput v2, p0, Lcom/google/googlenav/bN;->c:I

    :cond_2e
    iget v0, p0, Lcom/google/googlenav/bN;->c:I

    if-nez v0, :cond_33

    move v1, v2

    :cond_33
    move v2, v1

    goto :goto_28
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bN;->i:[Lcom/google/googlenav/bN;

    array-length v0, v0

    return v0
.end method
