.class public Lcom/google/android/maps/driveabout/vector/bR;
.super Lcom/google/android/maps/driveabout/vector/n;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/m;


# static fields
.field private static B:Lcom/google/android/maps/driveabout/vector/y;


# instance fields
.field private A:F

.field public d:Ljava/util/Map;

.field public e:Ljava/util/List;

.field private f:F

.field private g:F

.field private h:F

.field private final i:Landroid/content/res/Resources;

.field private final j:Z

.field private k:Lcom/google/android/maps/driveabout/vector/h;

.field private l:Lcom/google/android/maps/driveabout/vector/a;

.field private m:I

.field private final n:Lcom/google/android/maps/driveabout/vector/bS;

.field private volatile o:Z

.field private p:F

.field private q:F

.field private r:I

.field private s:Z

.field private volatile t:Z

.field private u:Lt/y;

.field private volatile v:Z

.field private w:F

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/y;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/y;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bR;->B:Lcom/google/android/maps/driveabout/vector/y;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bR;->B:Lcom/google/android/maps/driveabout/vector/y;

    const v1, 0x73217bce

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/y;->b(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/U;Z)V
    .registers 10

    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/n;-><init>(Lcom/google/android/maps/driveabout/vector/U;)V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bR;->v:Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bS;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bS;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->i:Landroid/content/res/Resources;

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/bT;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bU;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    const v2, 0x7f020144

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bU;->b()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bR;->a([Lcom/google/android/maps/driveabout/vector/bT;)V

    const/high16 v0, 0x4280

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/bR;->w:F

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/bR;->x:F

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bR;->b(F)V

    const/high16 v0, 0x4680

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bR;->c(F)V

    const v0, 0x64190

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->y:I

    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->i:Landroid/content/res/Resources;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->z:I

    return-void
.end method

.method private declared-synchronized a(ZZZ)Lcom/google/android/maps/driveabout/vector/bT;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bT;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bT;->a(ZZZ)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    move-result v2

    if-eqz v2, :cond_7

    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;I)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_26

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/content/res/Resources;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->k:Lcom/google/android/maps/driveabout/vector/h;

    if-nez v2, :cond_e

    new-instance v2, Lcom/google/android/maps/driveabout/vector/h;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/h;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->k:Lcom/google/android/maps/driveabout/vector/h;

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/di;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x1e01

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->v()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v3

    iget v4, v3, Lcom/google/android/maps/driveabout/vector/bT;->c:I

    iget v5, v3, Lcom/google/android/maps/driveabout/vector/bT;->b:I

    if-eq v4, v5, :cond_63

    :goto_38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->k:Lcom/google/android/maps/driveabout/vector/h;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/h;->a(Z)V

    iget-boolean v0, v3, Lcom/google/android/maps/driveabout/vector/bT;->a:Z

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->r:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->r:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bR;->r:I

    invoke-interface {v2, v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    :cond_4a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->k:Lcom/google/android/maps/driveabout/vector/h;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/h;->a(Lcom/google/android/maps/driveabout/vector/aT;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget v0, v3, Lcom/google/android/maps/driveabout/vector/bT;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lcom/google/android/maps/driveabout/vector/aT;I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_5b
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_6f

    monitor-exit p0

    return-void

    :cond_63
    move v0, v1

    goto :goto_38

    :cond_65
    :try_start_65
    iget v0, v3, Lcom/google/android/maps/driveabout/vector/bT;->b:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lcom/google/android/maps/driveabout/vector/aT;I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6f

    goto :goto_5b

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;I)V
    .registers 12

    const/4 v3, 0x0

    mul-int/lit8 v2, p5, 0x2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/maps/driveabout/vector/a;

    const/4 v5, 0x0

    move-object v1, p4

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/a;-><init>(Lt/L;IIILt/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/a;->a(F)V

    :goto_18
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->v()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/bT;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/a;->a(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bT;->e:I

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/a;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/a;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->l:Lcom/google/android/maps/driveabout/vector/a;

    invoke-virtual {v0, p4, v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Lt/L;I)V

    goto :goto_18
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/t;)F
    .registers 6

    const/high16 v0, 0x3f80

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_14

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    :cond_14
    :goto_14
    return v0

    :cond_15
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_14
.end method

.method private declared-synchronized s()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    monitor-exit p0

    return-void
.end method

.method private t()F
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->u()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->p:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    div-float/2addr v0, v1

    :goto_b
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->A:F

    mul-float/2addr v1, v0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->u()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->p:F

    :goto_16
    mul-float/2addr v1, v0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->u()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->x:F

    :goto_1f
    mul-float/2addr v0, v1

    return v0

    :cond_21
    const/high16 v0, 0x3e80

    goto :goto_b

    :cond_24
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    goto :goto_16

    :cond_27
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->w:F

    goto :goto_1f
.end method

.method private u()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->v()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bT;->a:Z

    return v0
.end method

.method private v()Lcom/google/android/maps/driveabout/vector/bT;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->o:Z

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->t:Z

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->v:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bR;->a(ZZZ)Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    if-nez v0, :cond_e

    const v0, 0x7fffffff

    monitor-exit p0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_30

    aget v1, v0, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, v0, v3

    int-to-float v2, v2

    sub-float v2, p2, v2

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_d

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public a(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iput p1, v0, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    return-void
.end method

.method public a(FFF)V
    .registers 4

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    return-void
.end method

.method public a(FII)V
    .registers 7

    const/high16 v2, 0x42c8

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->p:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    int-to-float v1, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->w:F

    int-to-float v1, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->x:F

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bR;->b(F)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->s()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 15

    const/4 v10, 0x0

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-lez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    if-nez v0, :cond_14

    monitor-exit p0

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bR;->m:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_11

    const/4 v0, 0x1

    invoke-virtual {p2, v4, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->u()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->p:F

    :goto_2c
    invoke-virtual {p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->A:F

    mul-float v8, v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->u:Lt/y;

    if-eqz v1, :cond_7f

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->u:Lt/y;

    invoke-virtual {v1}, Lt/y;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v1}, Lt/r;->a()Lt/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lt/m;)Lcom/google/android/maps/driveabout/vector/cd;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-interface {v0, p1, p2, p3, v4}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;)V

    :cond_57
    move-object v6, v0

    :goto_58
    if-lez v5, :cond_61

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;I)V

    :cond_61
    invoke-static {v9, p2, v4, v8}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->u()Z

    move-result v0

    if-eqz v0, :cond_70

    neg-float v0, v7

    const/high16 v1, 0x3f80

    invoke-interface {v9, v0, v10, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_70
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    if-eqz v6, :cond_78

    invoke-interface {v6, p1, p3}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_78
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_7

    :cond_7c
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    goto :goto_2c

    :cond_7f
    move-object v6, v0

    goto :goto_58
.end method

.method public a(Ljava/util/List;FFLt/L;Lcom/google/android/maps/driveabout/vector/t;I)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bR;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/bR;->a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v0

    if-ge v0, p6, :cond_14

    new-instance v1, Lcom/google/android/maps/driveabout/vector/N;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/maps/driveabout/vector/N;-><init>(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/n;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public declared-synchronized a(Lt/L;F)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iput-object p1, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iput p2, v0, Lcom/google/android/maps/driveabout/vector/bS;->b:F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lt/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->u:Lt/y;

    return-void
.end method

.method public varargs declared-synchronized a([Lcom/google/android/maps/driveabout/vector/bT;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LK/bn;->b([Ljava/lang/Object;)LK/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->s()V

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bR;->r()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bR;->c(Lcom/google/android/maps/driveabout/vector/t;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->A:F

    const/4 v0, 0x1

    return v0
.end method

.method public b(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->q:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->p:F

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->y:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->v:Z

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    if-nez v2, :cond_b

    monitor-exit p0

    :goto_a
    return v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3c

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bR;->t()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    aget v4, v2, v1

    sub-int/2addr v4, v3

    aget v5, v2, v1

    add-int/2addr v5, v3

    aget v6, v2, v0

    sub-int/2addr v6, v3

    aget v2, v2, v0

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v3

    if-ge v4, v3, :cond_3f

    if-ltz v5, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v3

    if-ge v6, v3, :cond_3f

    if-ltz v2, :cond_3f

    :goto_3a
    move v1, v0

    goto :goto_a

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    move v0, v1

    goto :goto_3a
.end method

.method public b(Ljava/util/List;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bR;->o()Lt/y;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_14

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    invoke-virtual {v2}, Lt/y;->a()Lt/r;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr/l;->d(Lt/r;)Lr/e;

    move-result-object v0

    :cond_14
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_1b

    if-nez v0, :cond_20

    :cond_1b
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/n;->b(Ljava/util/List;)Z

    move-result v0

    :goto_1f
    return v0

    :cond_20
    sget-object v2, Lcom/google/android/maps/driveabout/vector/cc;->i:Lcom/google/android/maps/driveabout/vector/cc;

    new-array v3, v1, [Lcom/google/android/maps/driveabout/vector/cd;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1f
.end method

.method public c(F)V
    .registers 3

    float-to-int v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->r:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->t:Z

    return-void
.end method

.method public declared-synchronized d()Lt/L;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->m:I

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->o:Z

    return-void
.end method

.method public e()Lt/y;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .registers 3

    const v0, 0x3f2b851f

    packed-switch p1, :pswitch_data_c

    const/high16 v0, 0x3f80

    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bR;->b(F)V

    return-void

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public f()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->z:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->A:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:Z

    return v0
.end method

.method public n()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    return v0
.end method

.method public o()Lt/y;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->u:Lt/y;

    return-object v0
.end method

.method public o_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->s:Z

    return-void
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->o:Z

    return v0
.end method

.method public p_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->s:Z

    return-void
.end method

.method public declared-synchronized q()Lcom/google/android/maps/driveabout/vector/bS;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->n:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;-><init>(Lcom/google/android/maps/driveabout/vector/bS;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized r()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_4
    new-array v5, v0, [Z

    move v4, v2

    :goto_7
    array-length v0, v5

    shl-int v0, v1, v0

    if-ge v4, v0, :cond_52

    move v3, v2

    :goto_d
    array-length v0, v5

    if-ge v3, v0, :cond_1f

    shr-int v0, v4, v3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1d

    move v0, v1

    :goto_17
    aput-boolean v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :cond_1d
    move v0, v2

    goto :goto_17

    :cond_1f
    const/4 v0, 0x0

    aget-boolean v0, v5, v0

    const/4 v3, 0x1

    aget-boolean v3, v5, v3

    const/4 v6, 0x2

    aget-boolean v6, v5, v6

    invoke-direct {p0, v0, v3, v6}, Lcom/google/android/maps/driveabout/vector/bR;->a(ZZZ)Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v0

    if-nez v0, :cond_4e

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No texture rule matches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_52
    monitor-exit p0

    return-void
.end method

.method public s_()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->y:I

    return v0
.end method
