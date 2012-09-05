.class public La/t;
.super Ljava/lang/Object;


# static fields
.field private static final A:Le/d;


# instance fields
.field private B:Li/B;

.field final a:Li/E;

.field final b:Lc/m;

.field final c:La/G;

.field final d:Lc/p;

.field final e:Lb/e;

.field f:J

.field g:J

.field final h:Lcom/google/android/location/localizer/d;

.field i:Le/u;

.field j:Z

.field k:LW/a;

.field l:J

.field m:Le/L;

.field n:Z

.field o:J

.field p:J

.field q:Le/d;

.field r:J

.field s:Z

.field t:Z

.field u:J

.field v:Le/L;

.field w:Lcom/google/android/location/localizer/s;

.field x:J

.field y:J

.field final z:La/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Le/d;

    invoke-direct {v0}, Le/d;-><init>()V

    sput-object v0, La/t;->A:Le/d;

    return-void
.end method

.method public constructor <init>(Li/E;Lc/m;Lc/p;Lcom/google/android/location/localizer/s;La/o;La/G;)V
    .registers 15

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x1f3fffffc18L

    iput-wide v0, p0, La/t;->f:J

    iput-wide v6, p0, La/t;->g:J

    new-instance v0, Le/u;

    invoke-direct {v0, v5, v5, v5, v5}, Le/u;-><init>(Le/n;Le/K;Le/a;Le/e;)V

    iput-object v0, p0, La/t;->i:Le/u;

    iput-boolean v4, p0, La/t;->j:Z

    iput-wide v2, p0, La/t;->l:J

    iput-boolean v4, p0, La/t;->n:Z

    iput-wide v2, p0, La/t;->o:J

    iput-wide v2, p0, La/t;->p:J

    new-instance v0, Le/d;

    invoke-direct {v0}, Le/d;-><init>()V

    iput-object v0, p0, La/t;->q:Le/d;

    iput-wide v2, p0, La/t;->r:J

    iput-boolean v4, p0, La/t;->s:Z

    iput-boolean v4, p0, La/t;->t:Z

    iput-wide v2, p0, La/t;->u:J

    iput-wide v6, p0, La/t;->x:J

    iput-wide v6, p0, La/t;->y:J

    iput-object p1, p0, La/t;->a:Li/E;

    iput-object p2, p0, La/t;->b:Lc/m;

    iput-object p3, p0, La/t;->d:Lc/p;

    iput-object p4, p0, La/t;->w:Lcom/google/android/location/localizer/s;

    new-instance v0, Lcom/google/android/location/localizer/d;

    iget-object v1, p2, Lc/m;->d:Lc/t;

    iget-object v2, p2, Lc/m;->e:Lc/t;

    invoke-direct {v0, v1, v2, p4, p1}, Lcom/google/android/location/localizer/d;-><init>(Lc/t;Lc/t;Lcom/google/android/location/localizer/s;Li/E;)V

    iput-object v0, p0, La/t;->h:Lcom/google/android/location/localizer/d;

    iput-object p6, p0, La/t;->c:La/G;

    iput-object p5, p0, La/t;->z:La/o;

    new-instance v0, Lb/e;

    iget-object v1, p2, Lc/m;->e:Lc/t;

    invoke-direct {v0, v1, p1}, Lb/e;-><init>(Lc/t;Li/c;)V

    iput-object v0, p0, La/t;->e:Lb/e;

    return-void
.end method

.method private a(Le/d;Le/L;)LW/a;
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->c:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iget-object v1, p0, La/t;->a:Li/E;

    invoke-interface {v1}, Li/E;->c()J

    move-result-wide v1

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0, v1, v2}, Le/d;->a(LW/a;J)V

    :cond_14
    if-eqz p2, :cond_30

    invoke-virtual {p2, v1, v2}, Le/L;->a(J)LW/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, LW/a;->g(II)V

    invoke-virtual {v0, v4, v1}, LW/a;->b(ILW/a;)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->v:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v3, v3}, LW/a;->g(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, LW/a;->b(ILW/a;)V

    :cond_30
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->ap:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, LW/a;->a(ILW/a;)V

    iget-object v0, p0, La/t;->c:La/G;

    iget-object v2, p0, La/t;->a:Li/E;

    invoke-virtual {v0, v2, v1}, La/G;->a(Li/E;LW/a;)V

    return-object v1
.end method

.method static a(JLi/B;Li/B;)Le/x;
    .registers 14

    const-wide/32 v4, 0x15f90

    const/4 v1, 0x0

    const-wide v8, 0x416312d000000000L

    if-eqz p2, :cond_77

    invoke-interface {p2}, Li/B;->f()J

    move-result-wide v2

    sub-long v2, p0, v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_77

    move-object v0, p2

    :goto_16
    if-eqz p3, :cond_75

    invoke-interface {p3}, Li/B;->f()J

    move-result-wide v2

    sub-long v2, p0, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_75

    invoke-interface {p3}, Li/B;->a()F

    move-result v2

    if-eqz v0, :cond_38

    invoke-interface {v0}, Li/B;->a()F

    move-result v3

    float-to-double v4, v2

    float-to-double v2, v3

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_75

    :cond_38
    :goto_38
    if-nez p3, :cond_3c

    move-object v0, v1

    :goto_3b
    return-object v0

    :cond_3c
    invoke-interface {p3}, Li/B;->a()F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x408f400000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_63

    const/high16 v0, 0x457a

    :goto_4c
    new-instance v1, Le/x;

    invoke-interface {p3}, Li/B;->b()D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-interface {p3}, Li/B;->c()D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    const/high16 v4, 0x447a

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v0}, Le/x;-><init>(III)V

    move-object v0, v1

    goto :goto_3b

    :cond_63
    float-to-double v0, v0

    const-wide v2, 0x40c3880000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_71

    const v0, 0x47435000

    goto :goto_4c

    :cond_71
    const v0, 0x47c35000

    goto :goto_4c

    :cond_75
    move-object p3, v0

    goto :goto_38

    :cond_77
    move-object v0, v1

    goto :goto_16
.end method

.method private a(J)V
    .registers 7

    iput-wide p1, p0, La/t;->p:J

    iget-wide v0, p0, La/t;->o:J

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, La/t;->o:J

    iget-object v0, p0, La/t;->a:Li/E;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Li/E;->c(I)V

    return-void
.end method

.method private a(JLe/L;Le/e;ZZ)V
    .registers 33

    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, La/t;->v:Le/L;

    :cond_8
    if-eqz p5, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, La/t;->k:LW/a;

    :cond_f
    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->y:J

    sub-long v3, p1, v3

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-lez v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->b:Lc/m;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    invoke-interface {v4}, Li/E;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lc/m;->a(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->w:Lcom/google/android/location/localizer/s;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    invoke-interface {v4}, Li/E;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/localizer/s;->a(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->d:Lc/p;

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->d:Lc/p;

    invoke-virtual {v3}, Lc/p;->g()V

    :cond_47
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, La/t;->y:J

    :cond_4d
    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->o:J

    sub-long v20, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->v:Le/L;

    if-nez v3, :cond_370

    const-wide/16 v3, 0x0

    :goto_5b
    move-object/from16 v0, p0

    iget-object v5, v0, La/t;->q:Le/d;

    invoke-virtual {v5}, Le/d;->b()Le/b;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v5, v0, La/t;->g:J

    cmp-long v5, p1, v5

    if-ltz v5, :cond_37a

    const/4 v5, 0x1

    move/from16 v19, v5

    :goto_6e
    if-eqz v7, :cond_37f

    invoke-virtual {v7}, Le/b;->k()Z

    move-result v5

    if-eqz v5, :cond_37f

    invoke-virtual {v7}, Le/b;->h()J

    move-result-wide v5

    sub-long v5, p1, v5

    const-wide/32 v8, 0xafc8

    cmp-long v5, v5, v8

    if-gez v5, :cond_37f

    const/4 v5, 0x1

    :goto_84
    move-object/from16 v0, p0

    iget-object v6, v0, La/t;->v:Le/L;

    if-eqz v6, :cond_382

    const-wide/32 v8, 0xafc8

    cmp-long v6, v3, v8

    if-gez v6, :cond_382

    const/4 v6, 0x1

    move/from16 v18, v6

    :goto_94
    if-eqz v5, :cond_387

    move-object/from16 v0, p0

    iget-object v6, v0, La/t;->i:Le/u;

    invoke-virtual {v6}, Le/u;->b()Le/b;

    move-result-object v6

    if-eq v7, v6, :cond_387

    const/4 v6, 0x1

    move/from16 v17, v6

    :goto_a3
    if-eqz v18, :cond_38c

    move-object/from16 v0, p0

    iget-object v6, v0, La/t;->v:Le/L;

    move-object/from16 v0, p0

    iget-object v8, v0, La/t;->i:Le/u;

    invoke-virtual {v8}, Le/u;->a()Le/L;

    move-result-object v8

    if-eq v6, v8, :cond_38c

    const/4 v6, 0x1

    move/from16 v16, v6

    :goto_b6
    if-eqz v19, :cond_391

    move-object/from16 v0, p0

    iget-boolean v6, v0, La/t;->s:Z

    if-eqz v6, :cond_391

    const/4 v6, 0x1

    move v15, v6

    :goto_c0
    if-eqz v19, :cond_395

    move-object/from16 v0, p0

    iget-boolean v6, v0, La/t;->t:Z

    if-eqz v6, :cond_395

    if-eqz v16, :cond_d5

    const-wide/32 v8, 0xafc8

    sub-long v3, v8, v3

    const-wide/16 v8, 0xc8

    cmp-long v3, v3, v8

    if-gez v3, :cond_395

    :cond_d5
    const/4 v3, 0x1

    move v14, v3

    :goto_d7
    if-nez v15, :cond_f1

    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->r:J

    const-wide/16 v8, -0x1

    cmp-long v3, v3, v8

    if-eqz v3, :cond_399

    if-eqz v7, :cond_f1

    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->r:J

    invoke-virtual {v7}, Le/b;->h()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-lez v3, :cond_399

    :cond_f1
    const/4 v3, 0x1

    move v13, v3

    :goto_f3
    if-nez v14, :cond_119

    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->u:J

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_39d

    move-object/from16 v0, p0

    iget-boolean v3, v0, La/t;->t:Z

    if-eqz v3, :cond_39d

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->v:Le/L;

    if-eqz v3, :cond_119

    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->u:J

    move-object/from16 v0, p0

    iget-object v6, v0, La/t;->v:Le/L;

    iget-wide v6, v6, Le/L;->a:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_39d

    :cond_119
    const/4 v3, 0x1

    move v12, v3

    :goto_11b
    if-eqz v13, :cond_3a1

    if-nez v15, :cond_12b

    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->r:J

    sub-long v3, p1, v3

    const-wide/16 v6, 0x1388

    cmp-long v3, v3, v6

    if-gez v3, :cond_3a1

    :cond_12b
    const/4 v3, 0x1

    move v4, v3

    :goto_12d
    if-eqz v12, :cond_3a5

    if-nez v14, :cond_13d

    move-object/from16 v0, p0

    iget-wide v6, v0, La/t;->u:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x1388

    cmp-long v3, v6, v8

    if-gez v3, :cond_3a5

    :cond_13d
    const/4 v3, 0x1

    :goto_13e
    if-nez v4, :cond_142

    if-eqz v3, :cond_3a8

    :cond_142
    const/4 v3, 0x1

    :goto_143
    if-nez v17, :cond_147

    if-eqz v16, :cond_149

    :cond_147
    if-eqz v3, :cond_153

    :cond_149
    move-object/from16 v0, p0

    iget-boolean v3, v0, La/t;->t:Z

    if-nez v3, :cond_3ab

    if-eqz v5, :cond_3ab

    if-nez v4, :cond_3ab

    :cond_153
    const/4 v3, 0x1

    :goto_154
    if-nez p5, :cond_162

    if-nez p6, :cond_162

    if-nez v19, :cond_160

    move-object/from16 v0, p0

    iget-boolean v4, v0, La/t;->j:Z

    if-eqz v4, :cond_3ae

    :cond_160
    if-eqz v3, :cond_3ae

    :cond_162
    const/4 v3, 0x1

    move v11, v3

    :goto_164
    const/4 v3, 0x0

    if-eqz v11, :cond_3f5

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->B:Li/B;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    invoke-interface {v4}, Li/E;->o()Li/B;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3, v4}, La/t;->a(JLi/B;Li/B;)Le/x;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->h:Lcom/google/android/location/localizer/d;

    if-eqz v17, :cond_3b2

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->q:Le/d;

    invoke-virtual {v4}, Le/d;->a()Le/d;

    move-result-object v4

    :goto_187
    if-eqz v18, :cond_3b6

    move-object/from16 v0, p0

    iget-object v5, v0, La/t;->v:Le/L;

    :goto_18d
    move-object/from16 v0, p0

    iget-wide v8, v0, La/t;->f:J

    move-object/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/localizer/d;->a(Le/d;Le/L;Le/e;Le/x;J)Le/u;

    move-result-object v3

    move-object v10, v3

    :goto_198
    if-eqz v10, :cond_3b9

    iget-object v3, v10, Le/u;->a:Le/n;

    if-eqz v3, :cond_3b9

    const/4 v3, 0x1

    move v5, v3

    :goto_1a0
    if-eqz v10, :cond_3bd

    iget-object v3, v10, Le/u;->c:Le/a;

    iget-object v3, v3, Le/a;->d:Le/p;

    sget-object v4, Le/p;->c:Le/p;

    if-ne v3, v4, :cond_3bd

    const/4 v3, 0x1

    move v4, v3

    :goto_1ac
    if-eqz v10, :cond_3c1

    iget-object v3, v10, Le/u;->b:Le/K;

    iget-object v3, v3, Le/K;->d:Le/p;

    sget-object v6, Le/p;->c:Le/p;

    if-ne v3, v6, :cond_3c1

    const/4 v3, 0x1

    :goto_1b7
    move-object/from16 v0, p0

    iget-object v6, v0, La/t;->k:LW/a;

    if-nez v6, :cond_3c4

    if-nez v19, :cond_1c5

    move-object/from16 v0, p0

    iget-boolean v6, v0, La/t;->n:Z

    if-eqz v6, :cond_3c4

    :cond_1c5
    if-eqz v4, :cond_1c9

    if-nez v17, :cond_1d7

    :cond_1c9
    if-eqz v3, :cond_3c4

    if-eqz v16, :cond_3c4

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->v:Le/L;

    invoke-virtual {v3}, Le/L;->a()I

    move-result v3

    if-lez v3, :cond_3c4

    :cond_1d7
    const/4 v3, 0x1

    move v9, v3

    :goto_1d9
    if-nez v9, :cond_1dd

    if-eqz v5, :cond_3c8

    :cond_1dd
    const/4 v3, 0x1

    move v8, v3

    :goto_1df
    if-eqz v5, :cond_3cc

    if-eqz v9, :cond_1ef

    iget-object v3, v10, Le/u;->a:Le/n;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v1, v2}, La/t;->a(Le/n;J)Z

    move-result v3

    if-eqz v3, :cond_3cc

    :cond_1ef
    const/4 v3, 0x1

    :goto_1f0
    invoke-virtual/range {p0 .. p0}, La/t;->a()Z

    move-result v6

    if-nez v6, :cond_3cf

    if-eqz v19, :cond_3cf

    const/4 v4, 0x1

    :goto_1f9
    move-object/from16 v0, p0

    iget-object v5, v0, La/t;->k:LW/a;

    if-eqz v5, :cond_20f

    move-object/from16 v0, p0

    iget-wide v0, v0, La/t;->l:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, La/t;->o:J

    move-wide/from16 v24, v0

    cmp-long v5, v22, v24

    if-gez v5, :cond_211

    :cond_20f
    if-eqz v9, :cond_3d2

    :cond_211
    const/4 v5, 0x1

    :goto_212
    if-nez v13, :cond_218

    if-nez v12, :cond_218

    if-eqz v5, :cond_3d5

    :cond_218
    const/4 v5, 0x1

    :goto_219
    if-eqz v6, :cond_3d8

    if-nez v19, :cond_3d8

    const-wide/16 v22, 0x1388

    cmp-long v7, v20, v22

    if-gez v7, :cond_225

    if-nez v5, :cond_3d8

    :cond_225
    const/4 v5, 0x1

    move v7, v5

    :goto_227
    if-eqz v6, :cond_3dc

    if-eqz v19, :cond_3dc

    if-nez v7, :cond_3dc

    const/4 v5, 0x1

    :goto_22e
    move-object/from16 v0, p0

    iget-boolean v6, v0, La/t;->j:Z

    if-nez v6, :cond_236

    if-eqz v19, :cond_3df

    :cond_236
    if-nez v11, :cond_3df

    const/4 v6, 0x1

    :goto_239
    move-object/from16 v0, p0

    iput-boolean v6, v0, La/t;->j:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, La/t;->n:Z

    if-nez v6, :cond_245

    if-eqz v19, :cond_3e2

    :cond_245
    if-nez v8, :cond_3e2

    const/4 v6, 0x1

    :goto_248
    move-object/from16 v0, p0

    iput-boolean v6, v0, La/t;->n:Z

    if-eqz v4, :cond_252

    invoke-direct/range {p0 .. p0}, La/t;->c()J

    move-result-wide p1

    :cond_252
    if-eqz v5, :cond_25a

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, La/t;->o:J

    :cond_25a
    if-eqz v19, :cond_266

    move-object/from16 v0, p0

    iget-wide v4, v0, La/t;->f:J

    add-long v4, v4, p1

    move-object/from16 v0, p0

    iput-wide v4, v0, La/t;->g:J

    :cond_266
    if-eqz v15, :cond_275

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    invoke-interface {v4}, Li/E;->i()V

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, La/t;->r:J

    :cond_275
    if-eqz v14, :cond_284

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    invoke-interface {v4}, Li/E;->m()V

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, La/t;->u:J

    :cond_284
    if-eqz v9, :cond_2c0

    if-eqz v17, :cond_3e5

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->q:Le/d;

    move-object v5, v4

    :goto_28d
    if-eqz v16, :cond_3e9

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->v:Le/L;

    invoke-virtual {v4}, Le/L;->a()I

    move-result v4

    if-lez v4, :cond_3e9

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->v:Le/L;

    :goto_29d
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, La/t;->a(Le/d;Le/L;)LW/a;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, La/t;->k:LW/a;

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, La/t;->l:J

    move-object/from16 v0, p0

    iput-object v4, v0, La/t;->m:Le/L;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    move-object/from16 v0, p0

    iget-object v6, v0, La/t;->k:LW/a;

    invoke-static {v5}, Le/d;->a(Le/d;)LW/a;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Li/E;->a(LW/a;LW/a;)V

    :cond_2c0
    if-eqz v3, :cond_2ea

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->e:Lb/e;

    if-eqz v18, :cond_3ec

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->v:Le/L;

    :goto_2cc
    invoke-virtual {v4, v10, v3}, Lb/e;->a(Le/u;Le/L;)Lb/g;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v10, v0, La/t;->i:Le/u;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->b:Lc/m;

    iget-object v5, v10, Le/u;->a:Le/n;

    iput-object v5, v4, Lc/m;->b:Le/n;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    move-object/from16 v0, p0

    iget-object v5, v0, La/t;->i:Le/u;

    if-nez v3, :cond_3ef

    const/4 v3, 0x0

    :goto_2e7
    invoke-interface {v4, v5, v3}, Li/E;->a(Le/u;Le/G;)V

    :cond_2ea
    move-object/from16 v0, p0

    iget-wide v3, v0, La/t;->g:J

    invoke-virtual/range {p0 .. p0}, La/t;->a()Z

    move-result v5

    if-eqz v5, :cond_301

    if-nez v7, :cond_301

    move-object/from16 v0, p0

    iget-wide v5, v0, La/t;->o:J

    const-wide/16 v8, 0x1388

    add-long/2addr v5, v8

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_301
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v3, v5

    if-gez v5, :cond_312

    move-object/from16 v0, p0

    iget-object v5, v0, La/t;->a:Li/E;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3, v4}, Li/E;->a(IJ)V

    :cond_312
    move-object/from16 v0, p0

    iget-wide v5, v0, La/t;->x:J

    sub-long v5, p1, v5

    const-wide/32 v8, 0x5265c0

    cmp-long v8, v5, v8

    if-gtz v8, :cond_33e

    const-wide/32 v8, 0x2932e0

    cmp-long v5, v5, v8

    if-lez v5, :cond_36a

    sub-long v3, v3, p1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_36a

    if-nez v13, :cond_36a

    if-nez v12, :cond_36a

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->k:LW/a;

    if-nez v3, :cond_36a

    invoke-virtual/range {p0 .. p0}, La/t;->a()Z

    move-result v3

    if-eqz v3, :cond_36a

    :cond_33e
    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->b:Lc/m;

    move-object/from16 v0, p0

    iget-object v4, v0, La/t;->a:Li/E;

    invoke-virtual {v3, v4}, Lc/m;->b(Li/E;)V

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->w:Lcom/google/android/location/localizer/s;

    invoke-virtual {v3}, Lcom/google/android/location/localizer/s;->b()V

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->d:Lc/p;

    if-eqz v3, :cond_35d

    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->d:Lc/p;

    invoke-virtual {v3}, Lc/p;->c()V

    :cond_35d
    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->z:La/o;

    invoke-virtual {v3}, La/o;->b()V

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, La/t;->x:J

    :cond_36a
    if-eqz v7, :cond_36f

    invoke-direct/range {p0 .. p2}, La/t;->a(J)V

    :cond_36f
    return-void

    :cond_370
    move-object/from16 v0, p0

    iget-object v3, v0, La/t;->v:Le/L;

    iget-wide v3, v3, Le/L;->a:J

    sub-long v3, p1, v3

    goto/16 :goto_5b

    :cond_37a
    const/4 v5, 0x0

    move/from16 v19, v5

    goto/16 :goto_6e

    :cond_37f
    const/4 v5, 0x0

    goto/16 :goto_84

    :cond_382
    const/4 v6, 0x0

    move/from16 v18, v6

    goto/16 :goto_94

    :cond_387
    const/4 v6, 0x0

    move/from16 v17, v6

    goto/16 :goto_a3

    :cond_38c
    const/4 v6, 0x0

    move/from16 v16, v6

    goto/16 :goto_b6

    :cond_391
    const/4 v6, 0x0

    move v15, v6

    goto/16 :goto_c0

    :cond_395
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_d7

    :cond_399
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_f3

    :cond_39d
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_11b

    :cond_3a1
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_12d

    :cond_3a5
    const/4 v3, 0x0

    goto/16 :goto_13e

    :cond_3a8
    const/4 v3, 0x0

    goto/16 :goto_143

    :cond_3ab
    const/4 v3, 0x0

    goto/16 :goto_154

    :cond_3ae
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_164

    :cond_3b2
    sget-object v4, La/t;->A:Le/d;

    goto/16 :goto_187

    :cond_3b6
    const/4 v5, 0x0

    goto/16 :goto_18d

    :cond_3b9
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_1a0

    :cond_3bd
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_1ac

    :cond_3c1
    const/4 v3, 0x0

    goto/16 :goto_1b7

    :cond_3c4
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_1d9

    :cond_3c8
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_1df

    :cond_3cc
    const/4 v3, 0x0

    goto/16 :goto_1f0

    :cond_3cf
    const/4 v4, 0x0

    goto/16 :goto_1f9

    :cond_3d2
    const/4 v5, 0x0

    goto/16 :goto_212

    :cond_3d5
    const/4 v5, 0x0

    goto/16 :goto_219

    :cond_3d8
    const/4 v5, 0x0

    move v7, v5

    goto/16 :goto_227

    :cond_3dc
    const/4 v5, 0x0

    goto/16 :goto_22e

    :cond_3df
    const/4 v6, 0x0

    goto/16 :goto_239

    :cond_3e2
    const/4 v6, 0x0

    goto/16 :goto_248

    :cond_3e5
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_28d

    :cond_3e9
    const/4 v4, 0x0

    goto/16 :goto_29d

    :cond_3ec
    const/4 v3, 0x0

    goto/16 :goto_2cc

    :cond_3ef
    invoke-virtual {v3}, Lb/g;->a()Le/G;

    move-result-object v3

    goto/16 :goto_2e7

    :cond_3f5
    move-object v10, v3

    goto/16 :goto_198
.end method

.method private a(JZZ)V
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, La/t;->s:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, La/t;->t:Z

    if-eqz v0, :cond_2a

    :cond_b
    move v0, v1

    :goto_c
    iput-boolean p3, p0, La/t;->s:Z

    iput-boolean p4, p0, La/t;->t:Z

    iget-boolean v2, p0, La/t;->s:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, La/t;->t:Z

    if-eqz v2, :cond_2c

    :cond_18
    :goto_18
    if-eq v0, v1, :cond_22

    if-eqz v1, :cond_2e

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, La/t;->g:J

    :cond_22
    :goto_22
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    return-void

    :cond_2a
    move v0, v5

    goto :goto_c

    :cond_2c
    move v1, v5

    goto :goto_18

    :cond_2e
    const-wide/32 v0, 0x7fffffff

    add-long/2addr v0, p1

    iput-wide v0, p0, La/t;->g:J

    goto :goto_22
.end method

.method private a(Le/n;J)Z
    .registers 13

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, La/t;->a:Li/E;

    invoke-interface {v2}, Li/E;->o()Li/B;

    move-result-object v2

    if-nez v2, :cond_16

    iget-object v2, p1, Le/n;->c:Le/x;

    iget v2, v2, Le/x;->c:I

    const v3, 0x30d40

    if-ge v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    iget-wide v3, p1, Le/n;->e:J

    invoke-interface {v2}, Li/B;->f()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, La/t;->f:J

    const-wide/32 v7, 0xdbba0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_13

    iget-object v3, p1, Le/n;->c:Le/x;

    iget v3, v3, Le/x;->c:I

    int-to-float v3, v3

    invoke-interface {v2}, Li/B;->a()F

    move-result v2

    const/high16 v4, 0x447a

    mul-float/2addr v2, v4

    const v4, 0x47c35000

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_13

    move v0, v1

    goto :goto_13
.end method

.method private c()J
    .registers 5

    iget-object v0, p0, La/t;->a:Li/E;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Li/E;->b(I)V

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    iput-wide v2, p0, La/t;->p:J

    iput-wide v0, p0, La/t;->o:J

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, La/t;->q:Le/d;

    invoke-virtual {v0, p1}, Le/d;->a(I)V

    return-void
.end method

.method public a(IZ)V
    .registers 13

    const/4 v3, 0x0

    const/4 v5, 0x0

    int-to-long v0, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    iput-wide v0, p0, La/t;->f:J

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    iget-boolean v0, p0, La/t;->s:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, La/t;->t:Z

    if-eqz v0, :cond_2c

    :cond_16
    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_25

    if-eqz p2, :cond_2e

    const-wide/16 v6, 0x0

    :goto_1d
    iget-wide v8, p0, La/t;->g:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, La/t;->g:J

    :cond_25
    move-object v0, p0

    move-object v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    return-void

    :cond_2c
    move v0, v5

    goto :goto_17

    :cond_2e
    iget-wide v6, p0, La/t;->f:J

    add-long/2addr v6, v1

    goto :goto_1d
.end method

.method public a(LW/a;)V
    .registers 10

    const/4 v5, 0x1

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    iget-object v0, p0, La/t;->m:Le/L;

    invoke-static {p1, v0, v1, v2}, Le/e;->a(LW/a;Le/L;J)Le/e;

    move-result-object v4

    iget-object v0, p0, La/t;->b:Lc/m;

    iget-object v3, p0, La/t;->a:Li/E;

    invoke-interface {v3}, Li/E;->b()J

    move-result-wide v6

    invoke-virtual {v0, p1, v5, v6, v7}, Lc/m;->a(LW/a;ZJ)V

    iget-object v0, p0, La/t;->w:Lcom/google/android/location/localizer/s;

    iget-object v3, p0, La/t;->a:Li/E;

    invoke-interface {v3}, Li/E;->b()J

    move-result-wide v6

    invoke-virtual {v0, p1, v6, v7}, Lcom/google/android/location/localizer/s;->a(LW/a;J)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    return-void
.end method

.method public a(Le/L;)V
    .registers 9

    const/4 v5, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    goto :goto_3
.end method

.method public a(Le/b;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_15

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/t;->r:J

    :goto_8
    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    move-object v0, p0

    move-object v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    return-void

    :cond_15
    iget-object v0, p0, La/t;->q:Le/d;

    invoke-virtual {v0, p1}, Le/d;->a(Le/b;)V

    goto :goto_8
.end method

.method public a(Li/B;)V
    .registers 2

    iput-object p1, p0, La/t;->B:Li/B;

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_9
    iget-boolean v3, p0, La/t;->t:Z

    invoke-direct {p0, v1, v2, v0, v3}, La/t;->a(JZZ)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method a()Z
    .registers 5

    iget-wide v0, p0, La/t;->o:J

    iget-wide v2, p0, La/t;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()V
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    move-object v0, p0

    move-object v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    return-void
.end method

.method public b(LW/a;)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, La/t;->w:Lcom/google/android/location/localizer/s;

    iget-object v1, p0, La/t;->a:Li/E;

    invoke-interface {v1}, Li/E;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/location/localizer/s;->b(LW/a;J)V

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, La/t;->a(JLe/L;Le/e;ZZ)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    iget-object v0, p0, La/t;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iget-boolean v2, p0, La/t;->s:Z

    invoke-direct {p0, v0, v1, v2, p1}, La/t;->a(JZZ)V

    return-void
.end method
