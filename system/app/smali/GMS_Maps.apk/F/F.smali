.class public LF/F;
.super Ljava/lang/Object;

# interfaces
.implements LF/A;
.implements LF/T;


# instance fields
.field final a:LF/h;

.field volatile b:J

.field private final c:Lbc/d;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final e:Laf/a;

.field private final f:LI/i;

.field private final g:LF/t;

.field private final h:LF/W;

.field private i:LF/C;

.field private j:Z


# direct methods
.method public constructor <init>(Lbc/d;LF/t;Laf/a;LI/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LF/F;->e:Laf/a;

    iput-object p1, p0, LF/F;->c:Lbc/d;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LF/F;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, LF/F;->g:LF/t;

    iput-object p4, p0, LF/F;->f:LI/i;

    new-instance v0, LF/W;

    invoke-direct {v0}, LF/W;-><init>()V

    iput-object v0, p0, LF/F;->h:LF/W;

    new-instance v0, LF/f;

    invoke-direct {v0, p1}, LF/f;-><init>(Lbc/d;)V

    iput-object v0, p0, LF/F;->a:LF/h;

    invoke-virtual {p2, p0}, LF/t;->a(LF/T;)V

    return-void
.end method

.method static synthetic a(LF/F;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    iget-object v0, p0, LF/F;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private a(LF/C;)V
    .registers 4

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->a()LF/C;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, LF/F;->b(LF/C;)V

    :cond_b
    :goto_b
    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0, p1}, LF/W;->a(LF/C;)V

    iget-object v0, p0, LF/F;->f:LI/i;

    new-instance v1, LF/G;

    invoke-direct {v1, p0, p1}, LF/G;-><init>(LF/F;LF/C;)V

    invoke-interface {v0, v1}, LI/i;->b(Ljava/lang/Runnable;)Z

    return-void

    :cond_1b
    iget-boolean v0, p0, LF/F;->j:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->a()LF/C;

    move-result-object v0

    iget-object v0, v0, LF/C;->a:LF/R;

    invoke-virtual {v0}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->c:LF/S;

    if-ne v0, v1, :cond_b

    iget-object v0, p1, LF/C;->a:LF/R;

    invoke-virtual {v0}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->c:LF/S;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->a()LF/C;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LF/F;->a(LF/C;LF/C;)V

    goto :goto_b
.end method

.method private a(LF/C;LF/C;)V
    .registers 12

    const-string v1, ""

    const-string v0, ""

    sget-object v2, LF/H;->c:[I

    iget-object v3, p2, LF/C;->b:LF/D;

    invoke-virtual {v3}, LF/D;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8a

    :cond_11
    :goto_11
    iget-object v2, p1, LF/C;->a:LF/R;

    invoke-virtual {v2}, LF/R;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, "T"

    :goto_1b
    const/16 v3, 0x61

    const-string v4, "t"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v5}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_6c
    const-string v1, "o"

    goto :goto_11

    :pswitch_6f
    const-string v1, "c"

    iget-object v2, p1, LF/C;->b:LF/D;

    sget-object v3, LF/D;->a:LF/D;

    if-ne v2, v3, :cond_11

    iget-object v0, p0, LF/F;->c:Lbc/d;

    iget-object v2, p1, LF/C;->c:Lbc/a;

    iget-object v3, p2, LF/C;->c:Lbc/a;

    invoke-static {v0, v2, v3}, LI/g;->a(Lbc/d;Lbc/a;Lbc/a;)F

    move-result v0

    invoke-static {v0}, LI/r;->a(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_86
    const-string v2, "F"

    goto :goto_1b

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->c()LF/R;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->c()LF/R;

    move-result-object v0

    invoke-virtual {v0}, LF/R;->a()LF/S;

    move-result-object v0

    invoke-virtual {v0}, LF/S;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static b()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->w:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private b(J)V
    .registers 9

    const-wide/16 v4, 0x0

    iget-wide v0, p0, LF/F;->b:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    iget-wide v0, p0, LF/F;->b:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/F;->j:Z

    :cond_15
    iput-wide v4, p0, LF/F;->b:J

    iget-object v0, p0, LF/F;->g:LF/t;

    const-string v1, "speed_provider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LF/t;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method private b(LF/C;)V
    .registers 10

    const-string v0, ""

    sget-object v1, LF/H;->b:[I

    iget-object v2, p1, LF/C;->a:LF/R;

    invoke-virtual {v2}, LF/R;->a()LF/S;

    move-result-object v2

    invoke-virtual {v2}, LF/S;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    :goto_13
    iget-object v1, p0, LF/F;->c:Lbc/d;

    invoke-static {v1, p1}, LI/r;->a(Lbc/d;LF/C;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    const-string v3, "fl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_54
    const-string v0, "g"

    goto :goto_13

    :pswitch_57
    const-string v0, "n"

    goto :goto_13

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_57
    .end packed-switch
.end method

.method private c(LF/R;)V
    .registers 5

    iget-object v0, p0, LF/F;->a:LF/h;

    invoke-interface {v0, p1}, LF/h;->a(LF/R;)LF/i;

    move-result-object v0

    iget-object v1, v0, LF/i;->a:LF/j;

    sget-object v2, LF/j;->a:LF/j;

    if-ne v1, v2, :cond_18

    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LF/F;->a(J)LF/E;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LF/F;->a(LF/R;LF/E;)V

    :goto_17
    return-void

    :cond_18
    iget-object v1, v0, LF/i;->a:LF/j;

    sget-object v2, LF/j;->b:LF/j;

    if-ne v1, v2, :cond_2a

    iget-object v0, v0, LF/i;->b:Lbc/a;

    new-instance v1, Lbc/c;

    invoke-direct {v1, v0, v0}, Lbc/c;-><init>(Lbc/a;Lbc/a;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, LF/F;->a(LF/R;Lbc/a;Lbc/c;Z)V

    goto :goto_17

    :cond_2a
    iget-object v0, v0, LF/i;->b:Lbc/a;

    new-instance v1, Lbc/c;

    invoke-direct {v1, v0, v0}, Lbc/c;-><init>(Lbc/a;Lbc/a;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, LF/F;->a(LF/R;Lbc/a;Lbc/c;Z)V

    goto :goto_17
.end method

.method private c()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LF/F;->h:LF/W;

    invoke-virtual {v2}, LF/W;->b()LF/C;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    iget-object v2, p0, LF/F;->h:LF/W;

    invoke-virtual {v2}, LF/W;->a()LF/C;

    move-result-object v2

    iget-object v2, v2, LF/C;->b:LF/D;

    sget-object v3, LF/D;->b:LF/D;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, LF/F;->h:LF/W;

    invoke-virtual {v2}, LF/W;->b()LF/C;

    move-result-object v2

    iget-object v3, p0, LF/F;->c:Lbc/d;

    iget-object v4, v2, LF/C;->c:Lbc/a;

    iget-object v4, v4, Lbc/a;->a:Lbc/t;

    iget v4, v4, Lbc/t;->a:I

    invoke-virtual {v3, v4}, Lbc/d;->a(I)Lbc/g;

    iget-object v3, p0, LF/F;->c:Lbc/d;

    iget-object v2, v2, LF/C;->c:Lbc/a;

    iget-object v2, v2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v3, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    sget-object v3, LF/H;->a:[I

    invoke-virtual {v2}, Lbc/h;->b()Lbc/q;

    move-result-object v2

    invoke-virtual {v2}, Lbc/q;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_58

    goto :goto_a

    :pswitch_42
    move v1, v0

    goto :goto_a

    :pswitch_44
    iget-object v2, p0, LF/F;->h:LF/W;

    invoke-virtual {v2}, LF/W;->b()LF/C;

    move-result-object v2

    iget-object v2, v2, LF/C;->c:Lbc/a;

    iget v2, v2, Lbc/a;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_55

    :goto_53
    move v1, v0

    goto :goto_a

    :cond_55
    move v0, v1

    goto :goto_53

    nop

    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_42
        :pswitch_44
    .end packed-switch
.end method

.method private d(LF/R;)Z
    .registers 16

    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v1

    invoke-static {}, LF/F;->b()J

    move-result-wide v3

    iget-wide v5, p0, LF/F;->b:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/F;->j:Z

    invoke-direct {p0}, LF/F;->c()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    iput-wide v1, p0, LF/F;->b:J

    :cond_1d
    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->b()LF/C;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-wide v5, p0, LF/F;->b:J

    add-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1a

    :cond_2e
    iget-object v0, p0, LF/F;->i:LF/C;

    if-eqz v0, :cond_50

    iget-object v0, p0, LF/F;->i:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_50

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->b()LF/C;

    move-result-object v0

    iget-object v0, v0, LF/C;->a:LF/R;

    invoke-virtual {v0}, LF/R;->getTime()J

    move-result-wide v3

    iget-object v0, p0, LF/F;->i:LF/C;

    iget-object v0, v0, LF/C;->a:LF/R;

    invoke-virtual {v0}, LF/R;->getTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_64

    :cond_50
    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->b()LF/C;

    move-result-object v0

    :goto_56
    iget-object v3, v0, LF/C;->c:Lbc/a;

    iget-object v4, p0, LF/F;->c:Lbc/d;

    iget-object v5, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v4, v5}, Lbc/d;->e(Lbc/t;)Z

    move-result v4

    if-eqz v4, :cond_67

    const/4 v0, 0x0

    goto :goto_1a

    :cond_64
    iget-object v0, p0, LF/F;->i:LF/C;

    goto :goto_56

    :cond_67
    iget-object v4, p0, LF/F;->c:Lbc/d;

    iget-object v5, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v4, v5}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v4

    invoke-direct {p0, p1}, LF/F;->e(LF/R;)Z

    move-result v5

    invoke-virtual {v4}, Lbc/h;->n()Z

    move-result v6

    if-nez v6, :cond_7d

    if-nez v5, :cond_7d

    const/4 v0, 0x0

    goto :goto_1a

    :cond_7d
    invoke-virtual {v4}, Lbc/h;->k()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4}, Lbc/h;->o()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v6

    mul-long/2addr v8, v10

    iget v10, v3, Lbc/a;->b:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_b8

    iget-object v10, p0, LF/F;->h:LF/W;

    invoke-virtual {v10}, LF/W;->d()J

    move-result-wide v10

    sub-long v10, v1, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    cmp-long v6, v10, v6

    if-gez v6, :cond_b8

    const/4 v0, 0x0

    :goto_a2
    iget v1, v3, Lbc/a;->b:F

    add-float/2addr v1, v0

    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_109

    iget-object v0, p0, LF/F;->c:Lbc/d;

    iget-object v1, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/d;->g(Lbc/t;)Z

    move-result v0

    if-eqz v0, :cond_de

    const/4 v0, 0x0

    goto/16 :goto_1a

    :cond_b8
    long-to-float v6, v8

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_db

    iget-object v0, v0, LF/C;->a:LF/R;

    invoke-virtual {v0}, LF/R;->getTime()J

    move-result-wide v6

    sub-long v0, v1, v6

    if-eqz v5, :cond_d7

    invoke-virtual {p1}, LF/R;->getSpeed()F

    move-result v2

    long-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    invoke-virtual {v4}, Lbc/h;->p()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_a2

    :cond_d7
    long-to-float v0, v0

    long-to-float v1, v8

    div-float/2addr v0, v1

    goto :goto_a2

    :cond_db
    const/high16 v0, 0x3f80

    goto :goto_a2

    :cond_de
    const/4 v1, 0x0

    new-instance v0, Lbc/v;

    iget-object v2, p0, LF/F;->c:Lbc/d;

    invoke-direct {v0, v2}, Lbc/v;-><init>(Lbc/d;)V

    iget-object v2, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object v0

    invoke-virtual {v0}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    :goto_f0
    new-instance v2, Lbc/a;

    invoke-direct {v2, v0, v1}, Lbc/a;-><init>(Lbc/t;F)V

    new-instance v0, Lbc/c;

    iget-object v1, p0, LF/F;->h:LF/W;

    invoke-virtual {v1}, LF/W;->b()LF/C;

    move-result-object v1

    iget-object v1, v1, LF/C;->c:Lbc/a;

    invoke-direct {v0, v1, v2}, Lbc/c;-><init>(Lbc/a;Lbc/a;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, LF/F;->a(LF/R;Lbc/a;Lbc/c;Z)V

    const/4 v0, 0x1

    goto/16 :goto_1a

    :cond_109
    iget-object v0, v3, Lbc/a;->a:Lbc/t;

    goto :goto_f0
.end method

.method private e(LF/R;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, LF/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, LF/F;->h:LF/W;

    invoke-virtual {v0}, LF/W;->b()LF/C;

    move-result-object v0

    iget-object v0, v0, LF/C;->c:Lbc/a;

    iget-object v2, p0, LF/F;->c:Lbc/d;

    iget-object v3, v0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v2, v3}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    iget v3, v0, Lbc/a;->b:F

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3c

    const/high16 v3, 0x3f80

    iget v0, v0, Lbc/a;->b:F

    sub-float v0, v3, v0

    invoke-virtual {v2}, Lbc/h;->p()F

    move-result v2

    mul-float/2addr v0, v2

    :goto_2a
    invoke-virtual {p1}, LF/R;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-gez v2, :cond_3a

    const/high16 v2, 0x41f0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_44

    :cond_3a
    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    iget v0, v0, Lbc/a;->b:F

    invoke-virtual {v2}, Lbc/h;->p()F

    move-result v2

    mul-float/2addr v0, v2

    goto :goto_2a

    :cond_44
    move v0, v1

    goto :goto_3b

    :cond_46
    move v0, v1

    goto :goto_3b
.end method


# virtual methods
.method a(J)LF/E;
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LF/F;->h:LF/W;

    invoke-virtual {v2}, LF/W;->b()LF/C;

    move-result-object v2

    if-nez v2, :cond_d

    sget-object v0, LF/E;->c:LF/E;

    :goto_c
    return-object v0

    :cond_d
    iget-object v3, v2, LF/C;->c:Lbc/a;

    iget-object v3, v3, Lbc/a;->a:Lbc/t;

    iget-object v4, p0, LF/F;->c:Lbc/d;

    invoke-virtual {v4, v3}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v4

    iget-object v5, v2, LF/C;->a:LF/R;

    invoke-virtual {v5}, LF/R;->getTime()J

    move-result-wide v5

    sub-long v5, p1, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4}, Lbc/h;->o()I

    move-result v7

    invoke-virtual {v4}, Lbc/h;->y()I

    move-result v8

    invoke-virtual {v4}, Lbc/h;->n()Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v9, -0x1

    if-ne v8, v9, :cond_36

    :cond_33
    sget-object v0, LF/E;->c:LF/E;

    goto :goto_c

    :cond_36
    int-to-float v7, v7

    iget-object v2, v2, LF/C;->c:Lbc/a;

    iget v2, v2, Lbc/a;->b:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    sub-int v2, v8, v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-lez v2, :cond_47

    sget-object v0, LF/E;->c:LF/E;

    goto :goto_c

    :cond_47
    sget-object v2, LF/H;->a:[I

    invoke-virtual {v4}, Lbc/h;->b()Lbc/q;

    move-result-object v4

    invoke-virtual {v4}, Lbc/q;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_84

    sget-object v0, LF/E;->a:LF/E;

    goto :goto_c

    :pswitch_59
    sget-object v0, LF/E;->b:LF/E;

    goto :goto_c

    :pswitch_5c
    iget-object v2, p0, LF/F;->c:Lbc/d;

    invoke-virtual {v2, v3}, Lbc/d;->d(Lbc/t;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_64
    :goto_64
    if-eqz v0, :cond_81

    sget-object v0, LF/E;->b:LF/E;

    goto :goto_c

    :cond_69
    iget-object v2, p0, LF/F;->c:Lbc/d;

    iget v3, v3, Lbc/t;->a:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lbc/d;->a(I)Lbc/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbc/g;->a(I)Lbc/h;

    move-result-object v2

    invoke-virtual {v2}, Lbc/h;->b()Lbc/q;

    move-result-object v2

    sget-object v3, Lbc/q;->a:Lbc/q;

    if-eq v2, v3, :cond_64

    move v0, v1

    goto :goto_64

    :cond_81
    sget-object v0, LF/E;->a:LF/E;

    goto :goto_c

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_59
        :pswitch_59
        :pswitch_5c
    .end packed-switch
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(LF/B;)V
    .registers 3

    iget-object v0, p0, LF/F;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(LF/R;)V
    .registers 4

    invoke-virtual {p1}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->a:LF/S;

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->b:LF/S;

    if-ne v0, v1, :cond_14

    :cond_10
    invoke-direct {p0, p1}, LF/F;->c(LF/R;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p1}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->c:LF/S;

    if-ne v0, v1, :cond_13

    invoke-direct {p0, p1}, LF/F;->d(LF/R;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, LF/F;->b(LF/R;)V

    goto :goto_13
.end method

.method a(LF/R;LF/E;)V
    .registers 5

    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LF/F;->b(J)V

    invoke-static {p1, p2}, LF/C;->a(LF/R;LF/E;)LF/C;

    move-result-object v0

    invoke-direct {p0, v0}, LF/F;->a(LF/C;)V

    return-void
.end method

.method a(LF/R;Lbc/a;Lbc/c;Z)V
    .registers 8

    invoke-static {p1, p2, p3, p4}, LF/C;->a(LF/R;Lbc/a;Lbc/c;Z)LF/C;

    move-result-object v0

    invoke-virtual {p1}, LF/R;->a()LF/S;

    move-result-object v1

    sget-object v2, LF/S;->c:LF/S;

    if-ne v1, v2, :cond_12

    iput-object v0, p0, LF/F;->i:LF/C;

    :goto_e
    invoke-direct {p0, v0}, LF/F;->a(LF/C;)V

    return-void

    :cond_12
    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, LF/F;->b(J)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x1

    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_11
    if-ne p3, v2, :cond_20

    invoke-direct {p0, p2}, LF/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, LF/F;->g:LF/t;

    const-string v1, "speed_provider"

    invoke-virtual {v0, v1, v2}, LF/t;->a(Ljava/lang/String;Z)Z

    :cond_20
    return-void
.end method

.method public b(LF/B;)V
    .registers 3

    iget-object v0, p0, LF/F;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(LF/R;)V
    .registers 4

    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LF/F;->b(J)V

    invoke-static {p1}, LF/C;->a(LF/R;)LF/C;

    move-result-object v0

    invoke-direct {p0, v0}, LF/F;->a(LF/C;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "integrated_location_provider"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, LF/R;

    new-instance v1, Landroid/location/Location;

    const-string v2, "integrated_location_provider"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LF/R;-><init>(Landroid/location/Location;)V

    sget-object v1, LF/S;->c:LF/S;

    invoke-virtual {v0, v1}, LF/R;->a(LF/S;)V

    iget-object v1, p0, LF/F;->e:Laf/a;

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LF/R;->setTime(J)V

    invoke-virtual {p0, v0}, LF/F;->b(LF/R;)V

    :cond_25
    return-void
.end method
