.class public final Ldbxyzptlk/D/d;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ldbxyzptlk/D/d;)Z
    .registers 2
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Ldbxyzptlk/D/d;->g:Z

    return v0
.end method

.method static synthetic b(Ldbxyzptlk/D/d;)Z
    .registers 2
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Ldbxyzptlk/D/d;->h:Z

    return v0
.end method

.method static synthetic c(Ldbxyzptlk/D/d;)Z
    .registers 2
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Ldbxyzptlk/D/d;->i:Z

    return v0
.end method

.method static synthetic d(Ldbxyzptlk/D/d;)F
    .registers 2
    .parameter

    .prologue
    .line 716
    iget v0, p0, Ldbxyzptlk/D/d;->c:F

    return v0
.end method

.method static synthetic e(Ldbxyzptlk/D/d;)F
    .registers 2
    .parameter

    .prologue
    .line 716
    iget v0, p0, Ldbxyzptlk/D/d;->a:F

    return v0
.end method

.method static synthetic f(Ldbxyzptlk/D/d;)F
    .registers 2
    .parameter

    .prologue
    .line 716
    iget v0, p0, Ldbxyzptlk/D/d;->b:F

    return v0
.end method

.method static synthetic g(Ldbxyzptlk/D/d;)F
    .registers 2
    .parameter

    .prologue
    .line 716
    iget v0, p0, Ldbxyzptlk/D/d;->d:F

    return v0
.end method

.method static synthetic h(Ldbxyzptlk/D/d;)F
    .registers 2
    .parameter

    .prologue
    .line 716
    iget v0, p0, Ldbxyzptlk/D/d;->e:F

    return v0
.end method

.method static synthetic i(Ldbxyzptlk/D/d;)F
    .registers 2
    .parameter

    .prologue
    .line 716
    iget v0, p0, Ldbxyzptlk/D/d;->f:F

    return v0
.end method


# virtual methods
.method public final a()F
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Ldbxyzptlk/D/d;->a:F

    return v0
.end method

.method protected final a(FFFFFF)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 742
    iput p1, p0, Ldbxyzptlk/D/d;->a:F

    .line 743
    iput p2, p0, Ldbxyzptlk/D/d;->b:F

    .line 744
    cmpl-float v1, p3, v2

    if-nez v1, :cond_c

    move p3, v0

    :cond_c
    iput p3, p0, Ldbxyzptlk/D/d;->c:F

    .line 745
    cmpl-float v1, p4, v2

    if-nez v1, :cond_13

    move p4, v0

    :cond_13
    iput p4, p0, Ldbxyzptlk/D/d;->d:F

    .line 746
    cmpl-float v1, p5, v2

    if-nez v1, :cond_1e

    :goto_19
    iput v0, p0, Ldbxyzptlk/D/d;->e:F

    .line 747
    iput p6, p0, Ldbxyzptlk/D/d;->f:F

    .line 748
    return-void

    :cond_1e
    move v0, p5

    .line 746
    goto :goto_19
.end method

.method public final a(FFZFZFFZF)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 729
    iput p1, p0, Ldbxyzptlk/D/d;->a:F

    .line 730
    iput p2, p0, Ldbxyzptlk/D/d;->b:F

    .line 731
    iput-boolean p3, p0, Ldbxyzptlk/D/d;->g:Z

    .line 732
    cmpl-float v1, p4, v2

    if-nez v1, :cond_e

    move p4, v0

    :cond_e
    iput p4, p0, Ldbxyzptlk/D/d;->c:F

    .line 733
    iput-boolean p5, p0, Ldbxyzptlk/D/d;->h:Z

    .line 734
    cmpl-float v1, p6, v2

    if-nez v1, :cond_17

    move p6, v0

    :cond_17
    iput p6, p0, Ldbxyzptlk/D/d;->d:F

    .line 735
    cmpl-float v1, p7, v2

    if-nez v1, :cond_24

    :goto_1d
    iput v0, p0, Ldbxyzptlk/D/d;->e:F

    .line 736
    iput-boolean p8, p0, Ldbxyzptlk/D/d;->i:Z

    .line 737
    iput p9, p0, Ldbxyzptlk/D/d;->f:F

    .line 738
    return-void

    :cond_24
    move v0, p7

    .line 735
    goto :goto_1d
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 755
    iget v0, p0, Ldbxyzptlk/D/d;->b:F

    return v0
.end method

.method public final c()F
    .registers 2

    .prologue
    .line 759
    iget-boolean v0, p0, Ldbxyzptlk/D/d;->g:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x3f80

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Ldbxyzptlk/D/d;->c:F

    goto :goto_6
.end method
