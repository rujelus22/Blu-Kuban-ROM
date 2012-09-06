.class public Lcom/google/android/maps/driveabout/vector/cl;
.super Lcom/google/android/maps/driveabout/vector/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/b;
.implements Lcom/google/android/maps/driveabout/vector/d;


# static fields
.field private static E:Lcom/google/android/maps/driveabout/vector/p;


# instance fields
.field private final A:I

.field private B:F

.field private C:Z

.field private D:Lcom/google/android/maps/driveabout/vector/cm;

.field public d:Ljava/util/List;

.field private e:F

.field private f:F

.field private g:F

.field private final h:Landroid/content/res/Resources;

.field private final i:Z

.field private j:I

.field private k:Ljava/util/Map;

.field private l:Lu/l;

.field private m:Lcom/google/android/maps/driveabout/vector/a;

.field private final n:Ln/P;

.field private final o:Ln/P;

.field private final p:Ln/P;

.field private q:Z

.field private r:F

.field private s:F

.field private t:I

.field private u:Z

.field private volatile v:Ln/B;

.field private volatile w:Z

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x4

    .line 187
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cl;->E:Lcom/google/android/maps/driveabout/vector/p;

    .line 190
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cl;->E:Lcom/google/android/maps/driveabout/vector/p;

    const v1, 0x73217bce

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/S;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/e;-><init>(Lcom/google/android/maps/driveabout/vector/S;)V

    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->k:Ljava/util/Map;

    .line 123
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->q:Z

    .line 134
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cl;->w:Z

    .line 195
    new-instance v0, Ln/P;

    invoke-direct {v0}, Ln/P;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    .line 196
    new-instance v0, Ln/P;

    invoke-direct {v0}, Ln/P;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    .line 197
    new-instance v0, Ln/P;

    invoke-direct {v0}, Ln/P;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->h:Landroid/content/res/Resources;

    .line 199
    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/vector/cl;->i:Z

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cn;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/co;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/co;->a(I)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/co;->b()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    const v2, 0x7f020164

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/co;->a(I)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a([Lcom/google/android/maps/driveabout/vector/cn;)V

    .line 217
    const/high16 v0, 0x4280

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    .line 218
    iput v5, p0, Lcom/google/android/maps/driveabout/vector/cl;->x:F

    .line 219
    iput v5, p0, Lcom/google/android/maps/driveabout/vector/cl;->y:F

    .line 220
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(F)V

    .line 221
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cl;->d(I)V

    .line 224
    const v0, 0x64190

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->z:I

    .line 227
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->e:F

    .line 228
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->f:F

    .line 229
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->g:F

    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->h:Landroid/content/res/Resources;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->A:I

    .line 232
    new-instance v0, Lu/m;

    invoke-direct {v0}, Lu/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    .line 233
    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 781
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->k:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 782
    if-nez v0, :cond_26

    .line 783
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 784
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 785
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/content/res/Resources;I)V

    .line 786
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->k:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 788
    :cond_26
    monitor-exit p0

    return-object v0

    .line 781
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ZZZ)Lcom/google/android/maps/driveabout/vector/cn;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cn;

    .line 832
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cn;->a(ZZZ)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    move-result v2

    if-eqz v2, :cond_7

    .line 836
    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    .line 831
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 701
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v0}, Ln/P;->c()I

    move-result v0

    if-lez v0, :cond_50

    .line 702
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    if-nez v0, :cond_26

    .line 703
    new-instance v0, Lcom/google/android/maps/driveabout/vector/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MyLocation"

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/a;-><init>(Ln/Q;IIILn/p;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    .line 704
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/a;->a(F)V

    .line 706
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v1}, Ln/P;->a()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v2}, Ln/P;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Ln/Q;I)V

    .line 708
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->w()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cn;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/a;->a_(I)V

    .line 710
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/cn;->e:I

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/a;->b(I)V

    .line 711
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->m:Lcom/google/android/maps/driveabout/vector/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 718
    :cond_50
    const/4 v0, 0x1

    .line 719
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v1}, Ln/P;->a()Ln/Q;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v1

    .line 722
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->u()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->r:F

    .line 723
    :goto_63
    invoke-virtual {p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->B:F

    mul-float/2addr v0, v1

    .line 725
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    .line 728
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v2}, Ln/P;->a()Ln/Q;

    move-result-object v2

    invoke-static {p1, p2, v2, v0}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 729
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->u()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 730
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v0}, Ln/P;->b()F

    move-result v0

    neg-float v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-interface {v1, v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 734
    :cond_8b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 735
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 736
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 738
    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 740
    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 742
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->w()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v2

    .line 744
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->C:Z

    if-nez v0, :cond_e3

    iget v0, v2, Lcom/google/android/maps/driveabout/vector/cn;->c:I

    iget v3, v2, Lcom/google/android/maps/driveabout/vector/cn;->b:I

    if-eq v0, v3, :cond_e3

    move v0, v7

    .line 747
    :goto_b6
    iget-boolean v3, v2, Lcom/google/android/maps/driveabout/vector/cn;->a:Z

    if-nez v3, :cond_c3

    .line 748
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->t:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cl;->t:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cl;->t:I

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 751
    :cond_c3
    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v0}, Ln/P;->h()F

    move-result v0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_e5

    .line 752
    iget v0, v2, Lcom/google/android/maps/driveabout/vector/cn;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 757
    :goto_d8
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V
    :try_end_de
    .catchall {:try_start_5 .. :try_end_de} :catchall_ef

    .line 758
    monitor-exit p0

    return-void

    .line 722
    :cond_e0
    :try_start_e0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    goto :goto_63

    :cond_e3
    move v0, v8

    .line 744
    goto :goto_b6

    .line 754
    :cond_e5
    iget v0, v2, Lcom/google/android/maps/driveabout/vector/cn;->b:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_ef

    goto :goto_d8

    .line 701
    :catchall_ef
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/k;)F
    .registers 6
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 685
    .line 686
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    .line 687
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->e:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_14

    .line 688
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->f:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    .line 689
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->g:F

    .line 696
    :cond_14
    :goto_14
    return v0

    .line 691
    :cond_15
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->g:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->e:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->f:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 693
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->g:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->f:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_14
.end method

.method private q()V
    .registers 1

    .prologue
    .line 287
    return-void
.end method

.method private declared-synchronized r()V
    .registers 3

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->k:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 324
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 323
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    .line 327
    monitor-exit p0

    return-void
.end method

.method private s()V
    .registers 6

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->D:Lcom/google/android/maps/driveabout/vector/cm;

    if-eqz v0, :cond_13

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->D:Lcom/google/android/maps/driveabout/vector/cm;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->r:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->t:I

    int-to-float v3, v3

    const/high16 v4, 0x4780

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cm;->a(FFF)V

    .line 380
    :cond_13
    return-void
.end method

.method private t()F
    .registers 3

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->u()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->r:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    div-float/2addr v0, v1

    .line 445
    :goto_b
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->B:F

    mul-float/2addr v1, v0

    .line 449
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->u()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->r:F

    .line 450
    :goto_16
    mul-float/2addr v1, v0

    .line 451
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->u()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->y:F

    .line 453
    :goto_1f
    mul-float/2addr v0, v1

    return v0

    .line 444
    :cond_21
    const/high16 v0, 0x3e80

    goto :goto_b

    .line 449
    :cond_24
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    goto :goto_16

    .line 451
    :cond_27
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->x:F

    goto :goto_1f
.end method

.method private u()Z
    .registers 2

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->w()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/cn;->a:Z

    return v0
.end method

.method private declared-synchronized v()Ln/P;
    .registers 3

    .prologue
    .line 796
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->q:Z

    if-eqz v0, :cond_1f

    .line 798
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0, v1}, Ln/P;->a(Ln/P;)V

    .line 800
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-interface {v0, v1}, Lu/l;->a(Ln/P;)Z

    .line 801
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 802
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    .line 805
    :goto_1d
    monitor-exit p0

    return-object v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_1d

    .line 796
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private w()Lcom/google/android/maps/driveabout/vector/cn;
    .registers 4

    .prologue
    .line 815
    monitor-enter p0

    .line 816
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->v()Ln/P;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Ln/P;->d()Z

    move-result v1

    .line 818
    invoke-virtual {v0}, Ln/P;->f()Z

    move-result v2

    .line 819
    invoke-virtual {v0}, Ln/P;->g()Z

    move-result v0

    .line 820
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    .line 821
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cl;->a(ZZZ)Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    return-object v0

    .line 820
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method


# virtual methods
.method public a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    monitor-enter p0

    .line 517
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-nez v0, :cond_10

    .line 518
    const v0, 0x7fffffff

    monitor-exit p0

    .line 523
    :goto_f
    return v0

    .line 521
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->a()Ln/Q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v0

    .line 522
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_34

    .line 523
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

    goto :goto_f

    .line 522
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 3
    .parameter

    .prologue
    .line 767
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->j:I

    return v0
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 349
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->r:F

    .line 350
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->s()V

    .line 351
    return-void
.end method

.method public a(FFF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->e:F

    .line 318
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cl;->f:F

    .line 319
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cl;->g:F

    .line 320
    return-void
.end method

.method public a(FII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x42c8

    .line 340
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->r:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    div-float/2addr v0, v1

    .line 341
    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->s:F

    .line 342
    int-to-float v1, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->x:F

    .line 343
    int-to-float v1, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->y:F

    .line 344
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(F)V

    .line 345
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->s()V

    .line 346
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-nez v0, :cond_f

    .line 681
    :cond_e
    :goto_e
    return-void

    .line 642
    :cond_f
    monitor-enter p0

    .line 643
    :try_start_10
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->q:Z

    if-eqz v0, :cond_54

    .line 644
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lu/l;->a(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->j:I

    .line 648
    :goto_20
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->j:I

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-interface {v0, v1}, Lu/l;->a(Ln/P;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 651
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0, v1}, Ln/P;->a(Ln/P;)V

    .line 652
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->d()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(J)V

    .line 657
    :goto_47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-nez v0, :cond_60

    .line 658
    monitor-exit p0

    goto :goto_e

    .line 660
    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_51

    throw v0

    .line 646
    :cond_54
    const/4 v0, 0x0

    :try_start_55
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->j:I

    goto :goto_20

    .line 654
    :cond_58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0, v1}, Ln/P;->a(Ln/P;)V

    goto :goto_47

    .line 660
    :cond_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_51

    .line 662
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    .line 664
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 666
    const/4 v0, 0x0

    .line 667
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->v:Ln/B;

    if-eqz v2, :cond_86

    .line 668
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->v:Ln/B;

    invoke-virtual {v2}, Ln/B;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cv;->a(Ln/m;)Lcom/google/android/maps/driveabout/vector/cx;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_86

    .line 670
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->p:Ln/P;

    invoke-virtual {v2}, Ln/P;->a()Ln/Q;

    move-result-object v2

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/google/android/maps/driveabout/vector/cx;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;Ln/Q;)V

    .line 674
    :cond_86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cl;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 676
    if-eqz v0, :cond_8e

    .line 677
    invoke-interface {v0, p1, p3}, Lcom/google/android/maps/driveabout/vector/cx;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 680
    :cond_8e
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_e
.end method

.method public a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cl;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 530
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/cl;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v0

    .line 531
    if-ge v0, p6, :cond_14

    .line 532
    new-instance v1, Lcom/google/android/maps/driveabout/vector/H;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/maps/driveabout/vector/H;-><init>(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/e;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_14
    return-void
.end method

.method public declared-synchronized a(Ln/P;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    monitor-enter p0

    if-eqz p1, :cond_2b

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    invoke-virtual {p1}, Ln/P;->j()Z

    move-result v1

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->e()Ln/B;

    move-result-object v0

    invoke-virtual {p1}, Ln/P;->e()Ln/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->f()Z

    move-result v0

    invoke-virtual {p1}, Ln/P;->f()Z

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 266
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->w:Z

    .line 268
    :cond_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0, p1}, Ln/P;->a(Ln/P;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 270
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-interface {v0, v1}, Lu/l;->b(Ln/P;)V

    .line 274
    :goto_42
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->q()V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4f

    .line 275
    monitor-exit p0

    return-void

    .line 272
    :cond_47
    :try_start_47
    new-instance v0, Lu/m;

    invoke-direct {v0}, Lu/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_4f

    goto :goto_42

    .line 261
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized a([Lcom/google/android/maps/driveabout/vector/cn;)V
    .registers 3
    .parameter

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->d:Ljava/util/List;

    .line 307
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->r()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 313
    monitor-exit p0

    return-void

    .line 306
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cl;->c(Lcom/google/android/maps/driveabout/vector/k;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->B:F

    .line 243
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    invoke-interface {v0, p1}, Lu/l;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->r()V

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->w:Z

    .line 559
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->z:I

    .line 254
    return-void
.end method

.method public declared-synchronized b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->q:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 548
    monitor-exit p0

    return-void

    .line 547
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cl;->e()Ln/Q;

    move-result-object v2

    .line 419
    if-nez v2, :cond_9

    .line 432
    :goto_8
    return v1

    .line 424
    :cond_9
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v2

    .line 425
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->t()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 426
    aget v4, v2, v1

    sub-int/2addr v4, v3

    .line 427
    aget v5, v2, v1

    add-int/2addr v5, v3

    .line 428
    aget v6, v2, v0

    sub-int/2addr v6, v3

    .line 429
    aget v2, v2, v0

    add-int/2addr v2, v3

    .line 432
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v3

    if-ge v4, v3, :cond_35

    if-ltz v5, :cond_35

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v3

    if-ge v6, v3, :cond_35

    if-ltz v2, :cond_35

    :goto_33
    move v1, v0

    goto :goto_8

    :cond_35
    move v0, v1

    goto :goto_33
.end method

.method public b(Ljava/util/List;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 612
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->w:Z

    if-eqz v0, :cond_3e

    .line 613
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cl;->w:Z

    .line 615
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cl;->f()Ln/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->v:Ln/B;

    .line 616
    const/4 v0, 0x0

    .line 617
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->v:Ln/B;

    if-eqz v3, :cond_21

    .line 618
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->v:Ln/B;

    invoke-virtual {v3}, Ln/B;->a()Ln/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Ll/q;->e(Ln/p;)Ll/k;

    move-result-object v0

    .line 622
    :cond_21
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 623
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cl;->v:Ln/B;

    if-eqz v3, :cond_2a

    if-nez v0, :cond_2f

    .line 624
    :cond_2a
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/e;->b(Ljava/util/List;)Z

    move-result v0

    .line 630
    :goto_2e
    return v0

    .line 626
    :cond_2f
    sget-object v3, Lcom/google/android/maps/driveabout/vector/cw;->i:Lcom/google/android/maps/driveabout/vector/cw;

    new-array v4, v1, [Lcom/google/android/maps/driveabout/vector/cx;

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cl;->a(Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 627
    goto :goto_2e

    :cond_3e
    move v0, v2

    .line 630
    goto :goto_2e
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/l;
    .registers 2

    .prologue
    .line 774
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    const v0, 0x3f2b851f

    .line 356
    packed-switch p1, :pswitch_data_c

    .line 364
    const/high16 v0, 0x3f80

    .line 366
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(F)V

    .line 367
    return-void

    .line 356
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public d()V
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->u:Z

    .line 392
    return-void
.end method

.method public d(I)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->t:I

    .line 371
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->s()V

    .line 372
    return-void
.end method

.method public declared-synchronized e()Ln/Q;
    .registers 3

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->q:Z

    if-eqz v0, :cond_1c

    .line 402
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-interface {v0, v1}, Lu/l;->a(Ln/P;)Z

    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 404
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0}, Ln/P;->a()Ln/Q;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    move-result-object v0

    .line 407
    :goto_1a
    monitor-exit p0

    return-object v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->a()Ln/Q;
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    move-result-object v0

    goto :goto_1a

    .line 401
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ln/B;
    .registers 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->v()Ln/P;

    move-result-object v0

    invoke-virtual {v0}, Ln/P;->e()Ln/B;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 478
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->i:Z

    return v0
.end method

.method public declared-synchronized o()F
    .registers 3

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->q:Z

    if-eqz v0, :cond_1c

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->l:Lu/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-interface {v0, v1}, Lu/l;->a(Ln/P;)Z

    .line 292
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0}, Ln/P;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->o:Ln/P;

    invoke-virtual {v0}, Ln/P;->b()F
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    move-result v0

    .line 296
    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->n:Ln/P;

    invoke-virtual {v0}, Ln/P;->b()F
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    move-result v0

    goto :goto_1a

    .line 290
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()Ln/P;
    .registers 3

    .prologue
    .line 792
    monitor-enter p0

    :try_start_1
    new-instance v0, Ln/P;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cl;->v()Ln/P;

    move-result-object v1

    invoke-direct {v0, v1}, Ln/P;-><init>(Ln/P;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r_()V
    .registers 2

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->u:Z

    .line 387
    return-void
.end method

.method public s_()I
    .registers 3

    .prologue
    .line 463
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->A:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cl;->B:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->z:I

    return v0
.end method

.method public z()Lcom/google/android/maps/driveabout/vector/b;
    .registers 1

    .prologue
    .line 762
    return-object p0
.end method
