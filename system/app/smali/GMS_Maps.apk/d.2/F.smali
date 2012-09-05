.class Ld/F;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private d:Z

.field private e:J

.field private f:I

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private final l:Ld/aj;

.field private m:LW/a;

.field private n:LW/a;

.field private o:LW/a;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Lm/c;

.field private y:Ld/G;

.field private final z:LW/a;


# direct methods
.method public constructor <init>(Ld/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;LW/a;Lm/c;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Ld/F;->d:Z

    iput-wide v1, p0, Ld/F;->e:J

    const/4 v0, 0x1

    iput v0, p0, Ld/F;->f:I

    iput-boolean v4, p0, Ld/F;->g:Z

    iput-wide v1, p0, Ld/F;->h:J

    iput-wide v1, p0, Ld/F;->i:J

    iput-wide v1, p0, Ld/F;->j:J

    iput-wide v1, p0, Ld/F;->k:J

    iput v3, p0, Ld/F;->p:I

    iput v3, p0, Ld/F;->q:I

    iput v3, p0, Ld/F;->r:I

    iput v3, p0, Ld/F;->s:I

    iput-wide v1, p0, Ld/F;->t:J

    iput-wide v1, p0, Ld/F;->u:J

    iput-wide v1, p0, Ld/F;->v:J

    iput-wide v1, p0, Ld/F;->w:J

    new-instance v0, Ld/G;

    invoke-direct {v0}, Ld/G;-><init>()V

    iput-object v0, p0, Ld/F;->y:Ld/G;

    iput-object p1, p0, Ld/F;->l:Ld/aj;

    invoke-static {p6}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/F;->x:Lm/c;

    invoke-static {p2}, Ld/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/F;->a:Ljava/lang/String;

    iput-object p3, p0, Ld/F;->b:Ljava/lang/String;

    iput-object p4, p0, Ld/F;->c:Ljava/lang/Integer;

    if-eqz p5, :cond_48

    sget-object v0, Lk/a;->l:LW/d;

    invoke-direct {p0, p5, v0}, Ld/F;->a(LW/a;LW/d;)V

    :cond_48
    iput-object p5, p0, Ld/F;->z:LW/a;

    invoke-direct {p0}, Ld/F;->c()V

    invoke-direct {p0}, Ld/F;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/F;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ld/F;->i:J

    return-void
.end method

.method private a(J)J
    .registers 9

    iget-wide v0, p0, Ld/F;->k:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Ld/F;->j:J

    iget-wide v4, p0, Ld/F;->i:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized a(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/F;->y:Ld/G;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ld/G;->a(J)V

    iget-object v0, p0, Ld/F;->y:Ld/G;

    invoke-virtual {v0}, Ld/G;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ld/F;->b()V

    invoke-direct {p0}, Ld/F;->d()V

    iget-object v0, p0, Ld/F;->m:LW/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ld/F;->a(LW/a;Z)V

    invoke-direct {p0}, Ld/F;->c()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(JJ)V
    .registers 9

    iget-wide v0, p0, Ld/F;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iput-wide p1, p0, Ld/F;->k:J

    iput-wide p3, p0, Ld/F;->j:J

    :cond_c
    return-void
.end method

.method private a(LW/a;LW/d;)V
    .registers 6

    invoke-virtual {p1}, LW/a;->b()LW/d;

    move-result-object v0

    if-eq v0, p2, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wront protocol buffer type. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LW/a;->b()LW/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method

.method private declared-synchronized a(LW/a;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ld/F;->e()J

    move-result-wide v0

    iput-wide v0, p0, Ld/F;->e:J

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->aa:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Ld/F;->e:J

    invoke-virtual {v0, v1, v2, v3}, LW/a;->b(IJ)V

    const/4 v1, 0x4

    iget-wide v2, p0, Ld/F;->h:J

    invoke-virtual {v0, v1, v2, v3}, LW/a;->b(IJ)V

    if-eqz p2, :cond_33

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :goto_21
    iget-object v1, p0, Ld/F;->l:Ld/aj;

    if-eqz v1, :cond_31

    iget-object v1, p0, Ld/F;->l:Ld/aj;

    invoke-virtual {v1, p1, v0}, Ld/aj;->b(LW/a;LW/a;)Z

    if-eqz p2, :cond_31

    iget-object v0, p0, Ld/F;->l:Ld/aj;

    invoke-virtual {v0}, Ld/aj;->d()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_40

    :cond_31
    monitor-exit p0

    return-void

    :cond_33
    const/4 v1, 0x3

    :try_start_34
    iget v2, p0, Ld/F;->f:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    iget v1, p0, Ld/F;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ld/F;->f:I
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_40

    goto :goto_21

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(JJ)I
    .registers 9

    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    :cond_8
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private c(JJ)I
    .registers 9

    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    :cond_8
    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/F;->y:Ld/G;

    invoke-virtual {v0}, Ld/G;->b()V

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->ap:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iput-object v0, p0, Ld/F;->m:LW/a;

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->P:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x2

    sget-object v2, Ld/U;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    iget-object v1, p0, Ld/F;->z:LW/a;

    if-eqz v1, :cond_39

    const/16 v1, 0xa

    iget-object v2, p0, Ld/F;->z:LW/a;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILW/a;)V

    :cond_39
    iget-object v1, p0, Ld/F;->y:Ld/G;

    invoke-virtual {v0}, LW/a;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ld/G;->a(J)V

    iget-object v1, p0, Ld/F;->m:LW/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, LW/a;->b(ILW/a;)V

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->R:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    iget-object v2, p0, Ld/F;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    iget-object v1, p0, Ld/F;->b:Ljava/lang/String;

    invoke-static {v1}, Ld/ax;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->o:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x1

    iget-object v3, p0, Ld/F;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LW/a;->b(ILjava/lang/String;)V

    iget-object v2, p0, Ld/F;->m:LW/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, LW/a;->b(ILW/a;)V

    :cond_71
    iget-object v1, p0, Ld/F;->y:Ld/G;

    invoke-virtual {v0}, LW/a;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ld/G;->a(J)V

    iget-object v1, p0, Ld/F;->m:LW/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, LW/a;->a(ILW/a;)V
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    monitor-exit p0

    return-void

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, LW/a;

    sget-object v1, Lk/a;->c:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iput-object v0, p0, Ld/F;->n:LW/a;

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->i:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iput-object v0, p0, Ld/F;->o:LW/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/F;->t:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/F;->u:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/F;->v:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/F;->w:J

    iget-object v0, p0, Ld/F;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Ld/F;->d:Z

    if-nez v0, :cond_46

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/F;->d:Z

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->N:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    iget-object v2, p0, Ld/F;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    iget-object v1, p0, Ld/F;->n:LW/a;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, LW/a;->b(ILW/a;)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ld/F;->h:J

    iget-wide v2, p0, Ld/F;->i:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ld/F;->e:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_16

    iget-wide v0, p0, Ld/F;->e:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_16
    monitor-exit p0

    return-wide v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Ld/F;->g:Z

    invoke-virtual {p0}, Ld/F;->b()V

    iget-object v0, p0, Ld/F;->m:LW/a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ld/F;->a(LW/a;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/F;->m:LW/a;

    const/4 v0, 0x0

    iput-object v0, p0, Ld/F;->n:LW/a;

    const/4 v0, 0x0

    iput-object v0, p0, Ld/F;->o:LW/a;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    goto :goto_5

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(FFFF)V
    .registers 8

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->A:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LW/a;->a(IF)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, LW/a;->a(IF)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, LW/a;->a(IF)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p4}, LW/a;->a(IF)V

    iget-object v1, p0, Ld/F;->o:LW/a;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, LW/a;->b(ILW/a;)V

    invoke-virtual {v0}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V

    return-void
.end method

.method public declared-synchronized a(FFFIJJ)V
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_86

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0, p5, p6, p7, p8}, Ld/F;->a(JJ)V

    new-instance v2, LW/a;

    sget-object v0, Lk/a;->am:LW/d;

    invoke-direct {v2, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, LW/a;->a(IF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p2}, LW/a;->a(IF)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, p3}, LW/a;->a(IF)V

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, LW/a;->b(IJ)V

    :cond_30
    iget-wide v0, p0, Ld/F;->u:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_89

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v0

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Ld/F;->b(JJ)I

    move-result v1

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LW/a;->d(I)J

    move-result-wide v3

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Ld/F;->c(JJ)I

    move-result v0

    :goto_56
    if-eqz v1, :cond_5c

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, LW/a;->g(II)V

    :cond_5c
    if-eqz v0, :cond_63

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v0}, LW/a;->g(II)V

    :cond_63
    iput-wide p5, p0, Ld/F;->u:J

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-eqz v0, :cond_72

    iget v0, p0, Ld/F;->q:I

    if-eq v0, p4, :cond_78

    :cond_72
    const/4 v0, 0x4

    invoke-virtual {v2, v0, p4}, LW/a;->g(II)V

    iput p4, p0, Ld/F;->q:I

    :cond_78
    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, LW/a;->a(ILW/a;)V

    invoke-virtual {v2}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_86

    goto :goto_5

    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_89
    :try_start_89
    iget-wide v0, p0, Ld/F;->u:J

    invoke-direct {p0, v0, v1, p5, p6}, Ld/F;->b(JJ)I

    move-result v1

    iget-wide v3, p0, Ld/F;->u:J

    invoke-direct {p0, v3, v4, p5, p6}, Ld/F;->c(JJ)I
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_86

    move-result v0

    goto :goto_56
.end method

.method public declared-synchronized a(Landroid/location/GpsStatus;J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_59

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    if-eqz p1, :cond_5

    :try_start_9
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->an:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x1

    iget-wide v3, p0, Ld/F;->i:J

    sub-long v3, p2, v3

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, LW/a;->g(II)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->g:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    const/4 v4, 0x4

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    invoke-virtual {v3, v4, v5}, LW/a;->a(IF)V

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    invoke-virtual {v3, v4, v5}, LW/a;->a(IF)V

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    invoke-virtual {v3, v4, v5}, LW/a;->g(II)V

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    invoke-virtual {v3, v4, v0}, LW/a;->a(IF)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, LW/a;->a(ILW/a;)V
    :try_end_58
    .catchall {:try_start_9 .. :try_end_58} :catchall_59

    goto :goto_21

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5c
    :try_start_5c
    iget-object v0, p0, Ld/F;->o:LW/a;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, LW/a;->a(ILW/a;)V

    invoke-virtual {v1}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_59

    goto :goto_5
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V
    .registers 15

    const/4 v1, -0x1

    const/4 v3, 0x3

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Ld/F;->g:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9d

    if-eqz v2, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    if-eqz p1, :cond_e2

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_e2

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v2

    :goto_2d
    if-nez p2, :cond_a0

    move v2, v1

    :goto_30
    new-instance v5, LW/a;

    sget-object v6, Lk/a;->ag:LW/d;

    invoke-direct {v5, v6}, LW/a;-><init>(LW/d;)V

    new-instance v6, LW/a;

    sget-object v7, Lk/a;->X:LW/d;

    invoke-direct {v6, v7}, LW/a;-><init>(LW/d;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v2}, LW/a;->g(II)V

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v1}, LW/a;->g(II)V

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v3}, LW/a;->g(II)V

    const/4 v1, 0x4

    invoke-virtual {v6, v1, v4}, LW/a;->g(II)V

    const/4 v1, 0x5

    invoke-virtual {v6, v1, p3}, LW/a;->g(II)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1, v6}, LW/a;->b(ILW/a;)V

    const/4 v1, 0x2

    iget-wide v2, p0, Ld/F;->i:J

    sub-long v2, p5, v2

    invoke-virtual {v5, v1, v2, v3}, LW/a;->b(IJ)V

    if-eqz p4, :cond_d0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->X:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    invoke-virtual {v3, v4, v6}, LW/a;->g(II)V

    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    invoke-virtual {v3, v4, v6}, LW/a;->g(II)V

    const/16 v4, 0x8

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v6

    invoke-virtual {v3, v4, v6}, LW/a;->g(II)V

    const/4 v4, 0x5

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-virtual {v3, v4, v1}, LW/a;->g(II)V

    const/4 v1, 0x3

    invoke-virtual {v5, v1, v3}, LW/a;->a(ILW/a;)V
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_9d

    goto :goto_64

    :catchall_9d
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_a0
    :try_start_a0
    instance-of v2, p2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_b4

    move-object v0, p2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    check-cast p2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    goto/16 :goto_30

    :cond_b4
    instance-of v2, p2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_df

    move-object v0, p2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    move-object v0, p2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    check-cast p2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    goto/16 :goto_30

    :cond_d0
    iget-object v1, p0, Ld/F;->o:LW/a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5}, LW/a;->a(ILW/a;)V

    invoke-virtual {v5}, LW/a;->d()I

    move-result v1

    invoke-direct {p0, v1}, Ld/F;->a(I)V
    :try_end_dd
    .catchall {:try_start_a0 .. :try_end_dd} :catchall_9d

    goto/16 :goto_7

    :cond_df
    move v2, v1

    goto/16 :goto_30

    :cond_e2
    move v3, v1

    move v4, v1

    goto/16 :goto_2d
.end method

.method public declared-synchronized a(Ljava/util/List;J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_50

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    if-eqz p1, :cond_5

    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v1, LW/a;

    sget-object v0, Lk/a;->G:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->V:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Ld/ax;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, LW/a;->b(ILjava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v4, v5}, LW/a;->b(IJ)V

    const/16 v4, 0x9

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4, v0}, LW/a;->g(II)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, LW/a;->a(ILW/a;)V
    :try_end_4f
    .catchall {:try_start_9 .. :try_end_4f} :catchall_50

    goto :goto_1a

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_53
    const/4 v0, 0x1

    :try_start_54
    iget-wide v2, p0, Ld/F;->i:J

    sub-long v2, p2, v2

    invoke-virtual {v1, v0, v2, v3}, LW/a;->b(IJ)V

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, LW/a;->a(ILW/a;)V

    invoke-virtual {v1}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_50

    goto :goto_5
.end method

.method public declared-synchronized a(LW/a;J)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x6

    :try_start_9
    iget-wide v1, p0, Ld/F;->i:J

    sub-long v1, p2, v1

    invoke-virtual {p1, v0, v1, v2}, LW/a;->b(IJ)V

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, LW/a;->a(ILW/a;)V

    invoke-virtual {p1}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_20

    const/4 v0, 0x1

    goto :goto_6

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/location/Location;J)Z
    .registers 11

    const/4 v0, 0x0

    const-wide v5, 0x416312d000000000L

    monitor-enter p0

    if-nez p1, :cond_b

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    new-instance v0, LW/a;

    sget-object v1, Lk/a;->K:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->w:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, LW/a;->g(II)V

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, LW/a;->g(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, LW/a;->b(ILW/a;)V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_40
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_50

    const/16 v1, 0xa

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_50
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v1, 0xd

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_60
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_6f

    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, LW/a;->a(IF)V

    :cond_6f
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    invoke-virtual {p0, v0, p2, p3}, Ld/F;->a(LW/a;J)Z
    :try_end_78
    .catchall {:try_start_b .. :try_end_78} :catchall_7a

    move-result v0

    goto :goto_9

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-lez v0, :cond_54

    :cond_4b
    iget-object v0, p0, Ld/F;->n:LW/a;

    const/16 v1, 0x9

    iget-object v2, p0, Ld/F;->o:LW/a;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILW/a;)V

    :cond_54
    iget-object v0, p0, Ld/F;->n:LW/a;

    invoke-virtual {v0}, LW/a;->d()I

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Ld/F;->m:LW/a;

    const/4 v1, 0x4

    iget-object v2, p0, Ld/F;->n:LW/a;

    invoke-virtual {v0, v1, v2}, LW/a;->a(ILW/a;)V
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    :cond_64
    monitor-exit p0

    return-void

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(FFFIJJ)V
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_86

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0, p5, p6, p7, p8}, Ld/F;->a(JJ)V

    new-instance v2, LW/a;

    sget-object v0, Lk/a;->Z:LW/d;

    invoke-direct {v2, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, LW/a;->a(IF)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, LW/a;->a(IF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p3}, LW/a;->a(IF)V

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, LW/a;->b(IJ)V

    :cond_30
    iget-wide v0, p0, Ld/F;->t:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_89

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v0

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Ld/F;->b(JJ)I

    move-result v1

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LW/a;->d(I)J

    move-result-wide v3

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Ld/F;->c(JJ)I

    move-result v0

    :goto_56
    if-eqz v1, :cond_5c

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, LW/a;->g(II)V

    :cond_5c
    if-eqz v0, :cond_63

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v0}, LW/a;->g(II)V

    :cond_63
    iput-wide p5, p0, Ld/F;->t:J

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-eqz v0, :cond_72

    iget v0, p0, Ld/F;->p:I

    if-eq v0, p4, :cond_78

    :cond_72
    const/4 v0, 0x4

    invoke-virtual {v2, v0, p4}, LW/a;->g(II)V

    iput p4, p0, Ld/F;->p:I

    :cond_78
    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, LW/a;->a(ILW/a;)V

    invoke-virtual {v2}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_86

    goto :goto_5

    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_89
    :try_start_89
    iget-wide v0, p0, Ld/F;->t:J

    invoke-direct {p0, v0, v1, p5, p6}, Ld/F;->b(JJ)I

    move-result v1

    iget-wide v3, p0, Ld/F;->t:J

    invoke-direct {p0, v3, v4, p5, p6}, Ld/F;->c(JJ)I
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_86

    move-result v0

    goto :goto_56
.end method

.method public declared-synchronized c(FFFIJJ)V
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_88

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0, p5, p6, p7, p8}, Ld/F;->a(JJ)V

    new-instance v2, LW/a;

    sget-object v0, Lk/a;->A:LW/d;

    invoke-direct {v2, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, LW/a;->a(IF)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, LW/a;->a(IF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p3}, LW/a;->a(IF)V

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, LW/a;->b(IJ)V

    :cond_30
    iget-wide v0, p0, Ld/F;->v:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_8b

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v0

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Ld/F;->b(JJ)I

    move-result v1

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LW/a;->d(I)J

    move-result-wide v3

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Ld/F;->c(JJ)I

    move-result v0

    :goto_56
    if-eqz v1, :cond_5d

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, LW/a;->g(II)V

    :cond_5d
    if-eqz v0, :cond_64

    const/16 v1, 0x9

    invoke-virtual {v2, v1, v0}, LW/a;->g(II)V

    :cond_64
    iput-wide p5, p0, Ld/F;->v:J

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Ld/F;->r:I

    if-eq v0, p4, :cond_79

    :cond_73
    const/4 v0, 0x4

    invoke-virtual {v2, v0, p4}, LW/a;->g(II)V

    iput p4, p0, Ld/F;->r:I

    :cond_79
    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, LW/a;->a(ILW/a;)V

    invoke-virtual {v2}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_86
    .catchall {:try_start_7 .. :try_end_86} :catchall_88

    goto/16 :goto_5

    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8b
    :try_start_8b
    iget-wide v0, p0, Ld/F;->v:J

    invoke-direct {p0, v0, v1, p5, p6}, Ld/F;->b(JJ)I

    move-result v1

    iget-wide v3, p0, Ld/F;->v:J

    invoke-direct {p0, v3, v4, p5, p6}, Ld/F;->c(JJ)I
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_88

    move-result v0

    goto :goto_56
.end method

.method public declared-synchronized d(FFFIJJ)V
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/F;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_86

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0, p5, p6, p7, p8}, Ld/F;->a(JJ)V

    new-instance v2, LW/a;

    sget-object v0, Lk/a;->W:LW/d;

    invoke-direct {v2, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, LW/a;->a(IF)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, LW/a;->a(IF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p3}, LW/a;->a(IF)V

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, LW/a;->b(IJ)V

    :cond_30
    iget-wide v0, p0, Ld/F;->w:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_89

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v0

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Ld/F;->b(JJ)I

    move-result v1

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LW/a;->d(I)J

    move-result-wide v3

    invoke-direct {p0, p5, p6}, Ld/F;->a(J)J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Ld/F;->c(JJ)I

    move-result v0

    :goto_56
    if-eqz v1, :cond_5c

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, LW/a;->g(II)V

    :cond_5c
    if-eqz v0, :cond_63

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v0}, LW/a;->g(II)V

    :cond_63
    iput-wide p5, p0, Ld/F;->w:J

    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    if-eqz v0, :cond_72

    iget v0, p0, Ld/F;->s:I

    if-eq v0, p4, :cond_78

    :cond_72
    const/4 v0, 0x4

    invoke-virtual {v2, v0, p4}, LW/a;->g(II)V

    iput p4, p0, Ld/F;->s:I

    :cond_78
    iget-object v0, p0, Ld/F;->o:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, LW/a;->a(ILW/a;)V

    invoke-virtual {v2}, LW/a;->d()I

    move-result v0

    invoke-direct {p0, v0}, Ld/F;->a(I)V
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_86

    goto :goto_5

    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_89
    :try_start_89
    iget-wide v0, p0, Ld/F;->w:J

    invoke-direct {p0, v0, v1, p5, p6}, Ld/F;->b(JJ)I

    move-result v1

    iget-wide v3, p0, Ld/F;->w:J

    invoke-direct {p0, v3, v4, p5, p6}, Ld/F;->c(JJ)I
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_86

    move-result v0

    goto :goto_56
.end method
