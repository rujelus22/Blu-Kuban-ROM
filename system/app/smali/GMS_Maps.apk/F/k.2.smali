.class LF/k;
.super Ljava/lang/Object;


# static fields
.field private static final k:Ljava/util/Set;

.field private static l:F

.field private static m:F

.field private static n:F

.field private static o:F


# instance fields
.field public final a:Lbc/d;

.field public final b:Lbc/t;

.field public final c:I

.field public final d:LaJ/B;

.field public final e:J

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Z

.field public final j:F

.field private final p:Lbc/a;

.field private q:Lbc/a;

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lbc/a;

.field private v:LF/l;

.field private final w:F

.field private x:LF/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, LF/m;->c:LF/m;

    sget-object v1, LF/m;->d:LF/m;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, LF/k;->k:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lbc/d;Lbc/t;ILF/R;FFZ)V
    .registers 12

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/k;->a:Lbc/d;

    iput-object p2, p0, LF/k;->b:Lbc/t;

    iput p3, p0, LF/k;->c:I

    invoke-static {p4}, LI/g;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, LF/k;->d:LaJ/B;

    invoke-virtual {p4}, LF/R;->getAccuracy()F

    move-result v0

    iput v0, p0, LF/k;->h:F

    invoke-virtual {p4}, LF/R;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LF/k;->e:J

    iput p5, p0, LF/k;->f:F

    invoke-direct {p0, p5}, LF/k;->a(F)F

    move-result v0

    iput v0, p0, LF/k;->g:F

    iput p6, p0, LF/k;->j:F

    iput-boolean p7, p0, LF/k;->i:Z

    sget-object v0, LF/l;->b:LF/l;

    iput-object v0, p0, LF/k;->v:LF/l;

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v1, v0, LI/q;->e:F

    iget v2, v0, LI/q;->d:F

    add-float/2addr v1, v2

    sput v1, LF/k;->o:F

    iget v1, v0, LI/q;->f:F

    sput v1, LF/k;->l:F

    iget v1, v0, LI/q;->g:F

    sput v1, LF/k;->m:F

    iget v0, v0, LI/q;->h:F

    sput v0, LF/k;->n:F

    new-instance v0, Lbc/a;

    invoke-direct {p0, v3, v3}, LF/k;->a(ZZ)F

    move-result v1

    invoke-direct {v0, p2, v1}, Lbc/a;-><init>(Lbc/t;F)V

    iput-object v0, p0, LF/k;->p:Lbc/a;

    invoke-direct {p0}, LF/k;->i()F

    move-result v0

    iput v0, p0, LF/k;->w:F

    return-void
.end method

.method private a(F)F
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, LF/k;->h:F

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private a(ZZ)F
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, LF/k;->a:Lbc/d;

    iget-object v2, p0, LF/k;->b:Lbc/t;

    invoke-virtual {v1, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v1

    invoke-virtual {v1}, Lbc/h;->w()F

    move-result v2

    cmpl-float v3, v2, v0

    if-nez v3, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    if-eqz p2, :cond_2f

    iget v3, p0, LF/k;->g:F

    sget v4, LF/k;->o:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2f

    invoke-virtual {p0}, LF/k;->b()F

    move-result v3

    invoke-direct {p0, v3}, LF/k;->b(F)F

    move-result v3

    sub-float v3, v2, v3

    sget v4, LF/k;->o:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2f

    const/high16 v0, 0x3f80

    goto :goto_11

    :cond_2f
    if-eqz p1, :cond_47

    iget v3, p0, LF/k;->g:F

    sget v4, LF/k;->o:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_47

    invoke-virtual {p0}, LF/k;->a()F

    move-result v3

    invoke-direct {p0, v3}, LF/k;->b(F)F

    move-result v3

    sget v4, LF/k;->o:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_11

    :cond_47
    iget v0, p0, LF/k;->j:F

    invoke-direct {p0, v0}, LF/k;->b(F)F

    move-result v0

    iget v3, p0, LF/k;->c:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_60

    iget v3, p0, LF/k;->c:I

    invoke-virtual {v1}, Lbc/h;->v()LK/bn;

    move-result-object v1

    invoke-virtual {v1}, LK/bn;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_65

    :cond_60
    iget v1, p0, LF/k;->g:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_11

    :cond_65
    div-float/2addr v0, v2

    goto :goto_11
.end method

.method private a(Lbc/a;Lbc/a;F)V
    .registers 6

    sget-object v0, LF/l;->a:LF/l;

    iput-object v0, p0, LF/k;->v:LF/l;

    iget v0, p0, LF/k;->w:F

    neg-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_17

    iget-object v0, p0, LF/k;->a:Lbc/d;

    iget v1, p0, LF/k;->w:F

    neg-float v1, v1

    invoke-static {v0, p2, v1}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object v0

    iput-object v0, p0, LF/k;->u:Lbc/a;

    :goto_16
    return-void

    :cond_17
    iput-object p1, p0, LF/k;->u:Lbc/a;

    goto :goto_16
.end method

.method private b(F)F
    .registers 7

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iget-object v2, p0, LF/k;->a:Lbc/d;

    iget-object v3, p0, LF/k;->b:Lbc/t;

    invoke-virtual {v2, v3}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    invoke-virtual {v2}, Lbc/h;->w()F

    iget v3, p0, LF/k;->c:I

    invoke-virtual {v2, v3}, Lbc/h;->d(I)F

    move-result v3

    iget v4, p0, LF/k;->c:I

    invoke-virtual {v2, v4}, Lbc/h;->c(I)F

    move-result v2

    cmpg-float v4, p1, v0

    if-gez v4, :cond_23

    move p1, v0

    :cond_1f
    :goto_1f
    mul-float v0, v3, p1

    add-float/2addr v0, v2

    return v0

    :cond_23
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1f

    move p1, v1

    goto :goto_1f
.end method

.method private b(Lbc/a;Lbc/a;F)V
    .registers 6

    sget-object v0, LF/l;->c:LF/l;

    iput-object v0, p0, LF/k;->v:LF/l;

    iget v0, p0, LF/k;->w:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_15

    iget-object v0, p0, LF/k;->a:Lbc/d;

    iget v1, p0, LF/k;->w:F

    invoke-static {v0, p2, v1}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object v0

    iput-object v0, p0, LF/k;->u:Lbc/a;

    :goto_14
    return-void

    :cond_15
    iput-object p1, p0, LF/k;->u:Lbc/a;

    goto :goto_14
.end method

.method private i()F
    .registers 3

    iget-object v0, p0, LF/k;->a:Lbc/d;

    iget-object v1, p0, LF/k;->b:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    iget v1, p0, LF/k;->c:I

    invoke-virtual {v0, v1}, Lbc/h;->d(I)F

    move-result v0

    sget v1, LF/k;->l:F

    mul-float/2addr v0, v1

    sget v1, LF/k;->m:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1a

    sget v0, LF/k;->m:F

    :cond_19
    :goto_19
    return v0

    :cond_1a
    sget v1, LF/k;->n:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_19

    sget v0, LF/k;->n:F

    goto :goto_19
.end method

.method private declared-synchronized j()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LF/k;->t:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, LF/k;->a:Lbc/d;

    iget-object v1, p0, LF/k;->b:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    iget v1, p0, LF/k;->c:I

    invoke-virtual {v0, v1}, Lbc/h;->d(I)F

    move-result v0

    iget v1, p0, LF/k;->h:F

    div-float v0, v1, v0

    iget v1, p0, LF/k;->j:F

    sub-float/2addr v1, v0

    iput v1, p0, LF/k;->r:F

    iget v1, p0, LF/k;->j:F

    add-float/2addr v0, v1

    iput v0, p0, LF/k;->s:F

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/k;->t:Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_5

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()F
    .registers 2

    invoke-direct {p0}, LF/k;->j()V

    iget v0, p0, LF/k;->r:F

    return v0
.end method

.method public a(LF/m;)V
    .registers 2

    iput-object p1, p0, LF/k;->x:LF/m;

    return-void
.end method

.method public a(Lbc/a;)V
    .registers 2

    iput-object p1, p0, LF/k;->u:Lbc/a;

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-object v0, p0, LF/k;->p:Lbc/a;

    iput-object v0, p0, LF/k;->q:Lbc/a;

    iget v0, p0, LF/k;->g:F

    sget v1, LF/k;->o:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LF/k;->a(ZZ)F

    move-result v1

    iget-object v0, p0, LF/k;->b:Lbc/t;

    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2f

    new-instance v2, Lbc/v;

    iget-object v3, p0, LF/k;->a:Lbc/d;

    invoke-direct {v2, v3}, Lbc/v;-><init>(Lbc/d;)V

    invoke-virtual {v2, v0}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object v2

    invoke-virtual {v2}, Lbc/v;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2f
    iget-object v2, p0, LF/k;->p:Lbc/a;

    iget-object v2, v2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Lbc/t;->a(Lbc/t;)I

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, LF/k;->p:Lbc/a;

    iget v2, v2, Lbc/a;->b:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_48

    :cond_41
    new-instance v2, Lbc/a;

    invoke-direct {v2, v0, v1}, Lbc/a;-><init>(Lbc/t;F)V

    iput-object v2, p0, LF/k;->q:Lbc/a;

    :cond_48
    return-void
.end method

.method public a(LF/k;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LF/k;->b:Lbc/t;

    iget-object v3, p1, LF/k;->b:Lbc/t;

    invoke-virtual {v2, v3}, Lbc/t;->a(Lbc/t;)I

    move-result v2

    if-eqz v2, :cond_11

    if-gez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget v2, p0, LF/k;->c:I

    iget v3, p1, LF/k;->c:I

    if-eq v2, v3, :cond_1f

    iget v2, p0, LF/k;->c:I

    iget v3, p1, LF/k;->c:I

    if-lt v2, v3, :cond_e

    move v0, v1

    goto :goto_e

    :cond_1f
    iget v2, p0, LF/k;->j:F

    iget v3, p1, LF/k;->j:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public b()F
    .registers 2

    invoke-direct {p0}, LF/k;->j()V

    iget v0, p0, LF/k;->s:F

    return v0
.end method

.method public b(LF/k;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LF/k;->b:Lbc/t;

    iget-object v3, p1, LF/k;->b:Lbc/t;

    invoke-virtual {v2, v3}, Lbc/t;->a(Lbc/t;)I

    move-result v2

    if-eqz v2, :cond_11

    if-gez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget v2, p0, LF/k;->c:I

    iget v3, p1, LF/k;->c:I

    if-eq v2, v3, :cond_1f

    iget v2, p0, LF/k;->c:I

    iget v3, p1, LF/k;->c:I

    if-lt v2, v3, :cond_e

    move v0, v1

    goto :goto_e

    :cond_1f
    invoke-virtual {p0}, LF/k;->b()F

    move-result v2

    invoke-virtual {p1}, LF/k;->a()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public c(LF/k;)LF/l;
    .registers 7

    iget-object v0, p0, LF/k;->v:LF/l;

    sget-object v1, LF/l;->a:LF/l;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, LF/k;->v:LF/l;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, LF/k;->g()Lbc/a;

    move-result-object v0

    invoke-virtual {p1}, LF/k;->e()LF/l;

    move-result-object v1

    invoke-virtual {p1}, LF/k;->f()Lbc/a;

    move-result-object v2

    iget-object v3, p0, LF/k;->a:Lbc/d;

    invoke-static {v3, v0, v2}, LI/g;->a(Lbc/d;Lbc/a;Lbc/a;)F

    move-result v3

    sget-object v4, LF/l;->b:LF/l;

    if-ne v1, v4, :cond_40

    iget v1, p0, LF/k;->w:F

    neg-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2c

    invoke-direct {p0, v2, v0, v3}, LF/k;->a(Lbc/a;Lbc/a;F)V

    :goto_29
    iget-object v0, p0, LF/k;->v:LF/l;

    goto :goto_8

    :cond_2c
    iget v1, p0, LF/k;->w:F

    iget v4, p0, LF/k;->h:F

    add-float/2addr v1, v4

    cmpl-float v1, v3, v1

    if-lez v1, :cond_39

    invoke-direct {p0, v2, v0, v3}, LF/k;->b(Lbc/a;Lbc/a;F)V

    goto :goto_29

    :cond_39
    sget-object v0, LF/l;->b:LF/l;

    iput-object v0, p0, LF/k;->v:LF/l;

    iput-object v2, p0, LF/k;->u:Lbc/a;

    goto :goto_29

    :cond_40
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_4f

    sget-object v4, LF/l;->a:LF/l;

    if-ne v1, v4, :cond_53

    iget v1, p0, LF/k;->h:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_53

    :cond_4f
    invoke-direct {p0, v2, v0, v3}, LF/k;->a(Lbc/a;Lbc/a;F)V

    goto :goto_29

    :cond_53
    invoke-direct {p0, v2, v0, v3}, LF/k;->b(Lbc/a;Lbc/a;F)V

    goto :goto_29
.end method

.method public c()LF/m;
    .registers 2

    iget-object v0, p0, LF/k;->x:LF/m;

    return-object v0
.end method

.method public d()Z
    .registers 3

    sget-object v0, LF/k;->k:Ljava/util/Set;

    iget-object v1, p0, LF/k;->x:LF/m;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()LF/l;
    .registers 2

    iget-object v0, p0, LF/k;->v:LF/l;

    return-object v0
.end method

.method public f()Lbc/a;
    .registers 2

    iget-object v0, p0, LF/k;->u:Lbc/a;

    return-object v0
.end method

.method public g()Lbc/a;
    .registers 2

    iget-object v0, p0, LF/k;->p:Lbc/a;

    return-object v0
.end method

.method public h()Lbc/a;
    .registers 2

    iget-object v0, p0, LF/k;->q:Lbc/a;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LF/k;->a(Z)V

    :cond_8
    iget-object v0, p0, LF/k;->q:Lbc/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "point"

    iget-object v2, p0, LF/k;->d:LaJ/B;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "accuracy"

    iget v2, p0, LF/k;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "distanceLessAccuracy"

    iget v2, p0, LF/k;->g:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "orthogonalProgress"

    iget v2, p0, LF/k;->j:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "segmentIndex"

    iget-object v2, p0, LF/k;->b:Lbc/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "subSegmentIndex"

    iget v2, p0, LF/k;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "validity"

    iget-object v2, p0, LF/k;->x:LF/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "direction"

    iget-object v2, p0, LF/k;->v:LF/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "isOutsideBounds"

    iget-boolean v2, p0, LF/k;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
