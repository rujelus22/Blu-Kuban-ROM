.class public Lcom/google/android/maps/driveabout/vector/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/Y;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/aj;

.field private final b:Lcom/google/android/maps/driveabout/vector/am;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private final e:Lcom/google/android/maps/driveabout/vector/ea;

.field private final f:Lcom/google/android/maps/driveabout/vector/cO;

.field private g:Lcom/google/android/maps/driveabout/vector/bH;

.field private h:Lcom/google/android/maps/driveabout/vector/bS;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/vector/aj;Lcom/google/android/maps/driveabout/vector/am;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bH;-><init>(IIZ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    .line 169
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bH;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    .line 170
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->e:Lcom/google/android/maps/driveabout/vector/ea;

    .line 171
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->f:Lcom/google/android/maps/driveabout/vector/cO;

    .line 172
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/aj;

    .line 173
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/af;->b:Lcom/google/android/maps/driveabout/vector/am;

    .line 174
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/af;->d()V

    .line 175
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/af;->m:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->n:Z

    .line 177
    return-void
.end method

.method public static a(Ln/E;Ln/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;)Lcom/google/android/maps/driveabout/vector/af;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v0, 0x0

    move v6, v0

    move-object v7, v1

    :goto_11
    invoke-virtual {p0}, Ln/E;->b()I

    move-result v0

    if-ge v6, v0, :cond_c8

    .line 195
    invoke-virtual {p0, v6}, Ln/E;->a(I)Ln/F;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ln/F;->a()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 197
    invoke-virtual {v1}, Ln/F;->j()Ln/ag;

    move-result-object v4

    .line 198
    invoke-virtual {v1}, Ln/F;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p5, v0, v4, p2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/lang/String;Ln/ag;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 199
    iget-object v5, p5, Lcom/google/android/maps/driveabout/vector/bZ;->d:Lcom/google/android/maps/driveabout/vector/cT;

    .line 200
    instance-of v0, p1, Ln/ac;

    if-eqz v0, :cond_52

    .line 201
    iget-object v5, p5, Lcom/google/android/maps/driveabout/vector/bZ;->a:Lcom/google/android/maps/driveabout/vector/cT;

    .line 205
    :cond_37
    :goto_37
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {v1}, Ln/F;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    invoke-static {v4, p5, v1}, Lcom/google/android/maps/driveabout/vector/aG;->a(Ln/ag;Lcom/google/android/maps/driveabout/vector/bZ;F)I

    move-result v3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    move-object v1, v7

    .line 194
    :goto_4d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v1

    goto :goto_11

    .line 202
    :cond_52
    instance-of v0, p1, Ln/H;

    if-eqz v0, :cond_37

    .line 203
    iget-object v5, p5, Lcom/google/android/maps/driveabout/vector/bZ;->h:Lcom/google/android/maps/driveabout/vector/cT;

    goto :goto_37

    .line 209
    :cond_59
    invoke-virtual {v1}, Ln/F;->b()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 212
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    invoke-virtual {v1}, Ln/F;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lr/af;->a(Ljava/lang/String;Lr/ae;)Lr/ac;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lr/ac;->b()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 215
    invoke-virtual {v0}, Lr/ac;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    invoke-virtual {v1}, Ln/F;->h()F

    move-result v0

    .line 219
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v1

    invoke-virtual {v1}, Lt/k;->x()I

    move-result v1

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_9e

    .line 222
    iget v1, p5, Lcom/google/android/maps/driveabout/vector/bZ;->m:F

    mul-float/2addr v0, v1

    .line 227
    :goto_8f
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    mul-float/2addr v0, v1

    .line 228
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ah;

    invoke-direct {v1, v2, v0, p3}, Lcom/google/android/maps/driveabout/vector/ah;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cW;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    .line 233
    goto :goto_4d

    .line 225
    :cond_9e
    iget v1, p5, Lcom/google/android/maps/driveabout/vector/bZ;->n:F

    mul-float/2addr v0, v1

    goto :goto_8f

    :cond_a2
    move-object v0, v8

    .line 240
    :goto_a3
    return-object v0

    .line 233
    :cond_a4
    invoke-virtual {v1}, Ln/F;->e()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 234
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ai;

    invoke-virtual {v1}, Ln/F;->k()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ai;-><init>(F)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_4d

    .line 235
    :cond_b8
    invoke-virtual {v1}, Ln/F;->f()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 236
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_4d

    .line 240
    :cond_c8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {p0}, Ln/E;->c()Ln/b;

    move-result-object v1

    invoke-virtual {v1}, Ln/b;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aj;->a(I)Lcom/google/android/maps/driveabout/vector/aj;

    move-result-object v1

    invoke-virtual {p0}, Ln/E;->c()Ln/b;

    move-result-object v2

    invoke-virtual {v2}, Ln/b;->b()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/am;->a(I)Lcom/google/android/maps/driveabout/vector/am;

    move-result-object v2

    invoke-direct {v0, v9, v1, v2}, Lcom/google/android/maps/driveabout/vector/af;-><init>(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/vector/aj;Lcom/google/android/maps/driveabout/vector/am;)V

    goto :goto_a3

    :cond_e6
    move-object v1, v7

    goto/16 :goto_4d
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/D;)Z
    .registers 6
    .parameter

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mTextureArray should be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 721
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 722
    instance-of v3, v0, Lcom/google/android/maps/driveabout/vector/ai;

    if-nez v3, :cond_26

    .line 723
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/al;->a(Lcom/google/android/maps/driveabout/vector/D;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    .line 724
    if-nez v0, :cond_59

    .line 725
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 726
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    goto :goto_42

    .line 728
    :cond_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 729
    const/4 v0, 0x0

    .line 735
    :goto_58
    return v0

    .line 731
    :cond_59
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 735
    :cond_5f
    const/4 v0, 0x1

    goto :goto_58
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/lang/String;Ln/ag;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 573
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    if-nez p0, :cond_c

    .line 578
    :cond_b
    :goto_b
    return v0

    .line 576
    :cond_c
    invoke-virtual {p3}, Ln/ag;->h()Ln/ak;

    move-result-object v1

    invoke-virtual {v1}, Ln/ak;->d()I

    move-result v1

    .line 577
    invoke-virtual {p3}, Ln/ag;->h()Ln/ak;

    move-result-object v2

    invoke-virtual {v2}, Ln/ak;->f()I

    move-result v2

    .line 578
    if-lez v2, :cond_b

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 15
    .parameter

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->f()V

    .line 750
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 756
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bH;->a(I)V

    .line 757
    const/4 v2, 0x0

    .line 758
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->j:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    sub-float v1, v0, v1

    .line 759
    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    move v2, v0

    :goto_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_111

    .line 760
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 763
    const/4 v5, 0x0

    .line 764
    const/4 v1, 0x0

    .line 765
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v5

    move v5, v1

    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/al;

    .line 766
    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v8

    .line 767
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 768
    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/al;->a()F

    move-result v1

    add-float/2addr v1, v5

    move v5, v1

    .line 769
    goto :goto_3a

    .line 770
    :cond_55
    const/4 v1, 0x0

    .line 771
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/aj;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/aj;->a:Lcom/google/android/maps/driveabout/vector/aj;

    if-ne v7, v8, :cond_7f

    .line 773
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/af;->i:F

    sub-float/2addr v1, v5

    const/high16 v5, 0x4000

    div-float/2addr v1, v5

    .line 777
    :cond_62
    :goto_62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v1

    :goto_67
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 778
    instance-of v1, v0, Lcom/google/android/maps/driveabout/vector/ai;

    if-eqz v1, :cond_89

    .line 780
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->a()F

    move-result v0

    add-float v1, v5, v0

    move v5, v1

    .line 782
    goto :goto_67

    .line 774
    :cond_7f
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/aj;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/aj;->c:Lcom/google/android/maps/driveabout/vector/aj;

    if-ne v7, v8, :cond_62

    .line 775
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/af;->i:F

    sub-float/2addr v1, v5

    goto :goto_62

    .line 785
    :cond_89
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->a()F

    move-result v7

    .line 786
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->b()F

    move-result v9

    .line 789
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->b:Lcom/google/android/maps/driveabout/vector/am;

    sget-object v10, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/am;

    if-ne v1, v10, :cond_fa

    .line 791
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v1

    sub-float v1, v6, v1

    const/high16 v10, 0x4000

    div-float/2addr v1, v10

    sub-float v1, v3, v1

    .line 796
    :goto_a2
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->c()F

    move-result v10

    add-float/2addr v1, v10

    .line 797
    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/af;->e:Lcom/google/android/maps/driveabout/vector/ea;

    const/4 v11, 0x0

    sub-float v12, v1, v9

    invoke-interface {v10, v5, v11, v12}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 798
    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/af;->e:Lcom/google/android/maps/driveabout/vector/ea;

    add-float v11, v5, v7

    const/4 v12, 0x0

    sub-float v9, v1, v9

    invoke-interface {v10, v11, v12, v9}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 799
    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/af;->e:Lcom/google/android/maps/driveabout/vector/ea;

    add-float/2addr v7, v5

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 800
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/af;->e:Lcom/google/android/maps/driveabout/vector/ea;

    const/4 v9, 0x0

    invoke-interface {v7, v5, v9, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 802
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cV;

    .line 803
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v4

    .line 804
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v1

    .line 805
    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/af;->f:Lcom/google/android/maps/driveabout/vector/cO;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v1}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 806
    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/af;->f:Lcom/google/android/maps/driveabout/vector/cO;

    invoke-interface {v9, v4, v1}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 807
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->f:Lcom/google/android/maps/driveabout/vector/cO;

    const/4 v9, 0x0

    invoke-interface {v1, v4, v9}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 808
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->f:Lcom/google/android/maps/driveabout/vector/cO;

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, v4, v9}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 811
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->a()F

    move-result v0

    add-float v1, v5, v0

    move v5, v1

    move v4, v7

    .line 812
    goto/16 :goto_67

    .line 792
    :cond_fa
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->b:Lcom/google/android/maps/driveabout/vector/am;

    sget-object v10, Lcom/google/android/maps/driveabout/vector/am;->c:Lcom/google/android/maps/driveabout/vector/am;

    if-ne v1, v10, :cond_125

    .line 793
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v1

    sub-float v1, v6, v1

    sub-float v1, v3, v1

    goto :goto_a2

    .line 814
    :cond_109
    sub-float v1, v3, v6

    .line 759
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto/16 :goto_22

    .line 816
    :cond_111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->n:Z

    .line 817
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->c()V

    .line 818
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bH;->e()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(Ljava/nio/ByteBuffer;)V

    .line 819
    return-void

    :cond_125
    move v1, v3

    goto/16 :goto_a2
.end method

.method private d()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/high16 v9, 0x4000

    const/4 v4, 0x0

    .line 246
    iput v4, p0, Lcom/google/android/maps/driveabout/vector/af;->i:F

    move v1, v2

    move v3, v4

    .line 248
    :goto_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 249
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v6, v4

    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 253
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->a()F

    move-result v8

    add-float/2addr v6, v8

    .line 254
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v0

    .line 255
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v5, v0

    .line 256
    goto :goto_1e

    .line 257
    :cond_39
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->i:F

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->i:F

    .line 258
    add-float/2addr v3, v5

    .line 248
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 262
    :cond_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 263
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 264
    iput v4, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    .line 265
    iput v4, p0, Lcom/google/android/maps/driveabout/vector/af;->l:F

    .line 268
    sget-object v2, Lcom/google/android/maps/driveabout/vector/ag;->a:[I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/af;->b:Lcom/google/android/maps/driveabout/vector/am;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/am;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_166

    .line 320
    :cond_6f
    :goto_6f
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/af;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->j:F

    .line 321
    return-void

    .line 271
    :pswitch_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 272
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->c()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    goto :goto_7c

    .line 275
    :cond_95
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 276
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v5

    .line 277
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 278
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_9a

    .line 280
    :cond_b8
    cmpl-float v0, v4, v1

    if-lez v0, :cond_6f

    .line 281
    sub-float v0, v4, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->l:F

    goto :goto_6f

    .line 286
    :pswitch_c1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v4

    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 287
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v6

    .line 288
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 289
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->c()F

    move-result v0

    add-float/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_c6

    .line 291
    :cond_e4
    cmpl-float v0, v4, v2

    if-lez v0, :cond_ec

    .line 292
    sub-float v0, v4, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    .line 295
    :cond_ec
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 296
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/af;->l:F

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->d()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->l:F

    goto :goto_f0

    .line 300
    :pswitch_109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    move v5, v4

    :goto_10f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 301
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v7

    div-float/2addr v7, v9

    .line 302
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 303
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->c()F

    move-result v0

    add-float/2addr v0, v7

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v2, v0

    .line 304
    goto :goto_10f

    .line 305
    :cond_12f
    cmpl-float v0, v2, v5

    if-lez v0, :cond_137

    .line 306
    sub-float v0, v2, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->k:F

    .line 310
    :cond_137
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_13c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 311
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->e()F

    move-result v5

    div-float/2addr v5, v9

    .line 312
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 313
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/al;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_13c

    .line 315
    :cond_15b
    cmpl-float v0, v4, v1

    if-lez v0, :cond_6f

    .line 316
    sub-float v0, v4, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->l:F

    goto/16 :goto_6f

    .line 268
    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_78
        :pswitch_c1
        :pswitch_109
    .end packed-switch
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->i:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 349
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->m:Z

    if-nez v0, :cond_f

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 688
    :cond_e
    return-void

    .line 672
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->n:Z

    if-eqz v0, :cond_16

    .line 673
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 676
    :cond_16
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 680
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bS;->a()I

    move-result v0

    if-eqz v0, :cond_e

    .line 683
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 684
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 685
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 686
    const/4 v0, 0x6

    mul-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    invoke-interface {v2, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 684
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aj;)V
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/aj;

    if-eq v0, p1, :cond_7

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->n:Z

    .line 368
    :cond_7
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/aj;

    .line 369
    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 691
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/D;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 692
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/aU;->a(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 693
    const/4 v0, 0x0

    .line 708
    :goto_10
    return v0

    .line 695
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mTextureArray should be empty on initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 699
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/al;

    .line 700
    instance-of v4, v0, Lcom/google/android/maps/driveabout/vector/ai;

    if-nez v4, :cond_37

    .line 701
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/al;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 706
    :cond_51
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 707
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/af;->m:Z

    move v0, v1

    .line 708
    goto :goto_10
.end method

.method public b()F
    .registers 2

    .prologue
    .line 356
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->j:F

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 329
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    goto :goto_6

    .line 331
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/al;

    .line 334
    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/al;->f()V

    goto :goto_31

    .line 336
    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_21

    .line 338
    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 340
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
