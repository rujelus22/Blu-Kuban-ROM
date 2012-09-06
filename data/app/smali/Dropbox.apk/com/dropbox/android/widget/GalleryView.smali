.class public Lcom/dropbox/android/widget/GalleryView;
.super Landroid/widget/RelativeLayout;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/D/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Z

.field private final C:Ldbxyzptlk/D/a;

.field private final D:Ldbxyzptlk/D/c;

.field private final E:Ldbxyzptlk/D/c;

.field private F:Z

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:Z

.field private P:J

.field private Q:I

.field private R:I

.field private b:Z

.field private c:Z

.field private d:Lcom/dropbox/android/widget/ae;

.field private final e:Ljava/lang/Runnable;

.field private final f:Lcom/dropbox/android/taskqueue/q;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private final k:Lcom/dropbox/android/widget/ad;

.field private l:Z

.field private m:F

.field private n:J

.field private o:J

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ProgressBar;

.field private s:Landroid/widget/ProgressBar;

.field private t:I

.field private u:I

.field private v:Lcom/dropbox/android/widget/at;

.field private w:Lcom/dropbox/android/widget/at;

.field private x:Ljava/util/ArrayList;

.field private y:Ljava/util/Map;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/GalleryView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/widget/GalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/widget/GalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->b:Z

    .line 75
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->c:Z

    .line 81
    iput-object v3, p0, Lcom/dropbox/android/widget/GalleryView;->d:Lcom/dropbox/android/widget/ae;

    .line 83
    new-instance v0, Lcom/dropbox/android/widget/ac;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/ac;-><init>(Lcom/dropbox/android/widget/GalleryView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->e:Ljava/lang/Runnable;

    .line 108
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->g:Z

    .line 116
    iput v1, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    .line 117
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    .line 123
    iput v1, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    .line 129
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->l:Z

    .line 151
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->t:I

    .line 152
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->u:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->y:Ljava/util/Map;

    .line 157
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    .line 159
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->B:Z

    .line 161
    new-instance v0, Ldbxyzptlk/D/a;

    invoke-direct {v0, p0}, Ldbxyzptlk/D/a;-><init>(Ldbxyzptlk/D/b;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->C:Ldbxyzptlk/D/a;

    .line 162
    new-instance v0, Ldbxyzptlk/D/c;

    invoke-direct {v0}, Ldbxyzptlk/D/c;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    .line 164
    new-instance v0, Ldbxyzptlk/D/c;

    invoke-direct {v0}, Ldbxyzptlk/D/c;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->E:Ldbxyzptlk/D/c;

    .line 166
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->F:Z

    .line 182
    iput-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->O:Z

    .line 203
    new-instance v0, Lcom/dropbox/android/widget/ad;

    invoke-direct {v0, p0, v3}, Lcom/dropbox/android/widget/ad;-><init>(Lcom/dropbox/android/widget/GalleryView;Lcom/dropbox/android/widget/ac;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->k:Lcom/dropbox/android/widget/ad;

    .line 204
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->f:Lcom/dropbox/android/taskqueue/q;

    .line 206
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->setBackgroundColor(I)V

    .line 207
    return-void
.end method

.method private a(Lcom/dropbox/android/widget/af;F)F
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4080

    .line 1103
    invoke-virtual {p1}, Lcom/dropbox/android/widget/af;->e()F

    move-result v0

    .line 1105
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v1

    if-ne p1, v1, :cond_11

    .line 1106
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->C:Ldbxyzptlk/D/a;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/D/a;->a(FF)V

    .line 1109
    :cond_11
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1110
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1112
    return v0
.end method

.method private a(Lcom/dropbox/android/widget/af;Z)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1081
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1082
    :goto_15
    if-eqz p2, :cond_2c

    .line 1083
    const v1, 0x3d4ccccd

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1084
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v2

    sub-float/2addr v2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2c

    .line 1085
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v0

    sub-float/2addr v0, v1

    .line 1088
    :cond_2c
    return v0

    .line 1081
    :cond_2d
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v0

    goto :goto_15
.end method

.method static synthetic a(Lcom/dropbox/android/widget/GalleryView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/dropbox/android/widget/GalleryView;->t:I

    return p1
.end method

.method static synthetic a(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/widget/ae;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->d:Lcom/dropbox/android/widget/ae;

    return-object v0
.end method

.method private a(F)V
    .registers 8
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v4, 0x0

    .line 936
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/GalleryView;->b(FF)Landroid/util/Pair;

    move-result-object v2

    .line 937
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/GalleryView;->b(FFFFF)V

    .line 938
    return-void
.end method

.method private a(FF)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 926
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v3

    .line 927
    invoke-virtual {v3}, Lcom/dropbox/android/widget/af;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 928
    invoke-virtual {v3}, Lcom/dropbox/android/widget/af;->e()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(F)V

    .line 933
    :goto_13
    return-void

    .line 930
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/widget/GalleryView;->b(FF)Landroid/util/Pair;

    move-result-object v2

    .line 931
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Lcom/dropbox/android/widget/af;->e()F

    move-result v0

    const/high16 v3, 0x4040

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float v4, v0, p1

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float v5, v0, p2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/GalleryView;->b(FFFFF)V

    goto :goto_13
.end method

.method private a(FFFFF)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 959
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 961
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->f(Lcom/dropbox/android/widget/af;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_13

    .line 979
    :goto_12
    return-void

    .line 965
    :cond_13
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v1

    .line 968
    const/high16 v2, 0x4080

    invoke-static {p3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 969
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/widget/af;->e()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 971
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v3

    invoke-static {v0}, Lcom/dropbox/android/widget/af;->l(Lcom/dropbox/android/widget/af;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v4, p1

    sub-float v5, v2, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, p4

    .line 972
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v4

    invoke-static {v0}, Lcom/dropbox/android/widget/af;->m(Lcom/dropbox/android/widget/af;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v5, p2

    sub-float v1, v2, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    add-float/2addr v1, p5

    .line 974
    invoke-virtual {p0, v3, v1, v2}, Lcom/dropbox/android/widget/GalleryView;->setCurrentImagePosScale(FFF)V

    .line 977
    invoke-direct {p0, v0, v2}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;F)V

    .line 978
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    goto :goto_12
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    .line 788
    if-ltz p1, :cond_4a

    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4a

    .line 792
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-lt p1, v0, :cond_4b

    const/4 v0, 0x1

    :goto_f
    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    .line 793
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-eq v0, p1, :cond_23

    .line 798
    invoke-static {}, Lcom/dropbox/android/util/h;->R()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "image.index"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 800
    :cond_23
    iput p1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    .line 801
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 804
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;F)V

    .line 806
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->k(Lcom/dropbox/android/widget/af;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 808
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->o()V

    .line 810
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->n()V

    .line 811
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;F)V

    .line 813
    :cond_4a
    return-void

    .line 792
    :cond_4b
    const/4 v0, -0x1

    goto :goto_f
.end method

.method private a(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter

    .prologue
    .line 745
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 746
    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->p:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->q:Landroid/view/View;

    iget-boolean v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 911
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/GalleryView;Landroid/widget/ProgressBar;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/GalleryView;->b(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/GalleryView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/dropbox/android/widget/GalleryView;->l:Z

    return p1
.end method

.method private a(Lcom/dropbox/android/widget/af;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x4040

    const/high16 v7, -0x3fc0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1010
    iget-wide v5, p0, Lcom/dropbox/android/widget/GalleryView;->o:J

    sub-long v5, v0, v5

    long-to-float v2, v5

    .line 1011
    iput-wide v0, p0, Lcom/dropbox/android/widget/GalleryView;->o:J

    .line 1013
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-nez v0, :cond_18

    move v0, v4

    .line 1077
    :goto_17
    return v0

    .line 1020
    :cond_18
    const/4 v0, 0x0

    .line 1021
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    if-eq v1, v9, :cond_107

    .line 1022
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    if-nez v1, :cond_9f

    .line 1024
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-ne v0, v4, :cond_95

    .line 1025
    invoke-direct {p0, p1, v3}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Z)F

    move-result v0

    neg-float v0, v0

    move v1, v0

    .line 1038
    :goto_2b
    const/high16 v0, 0x40c0

    div-float v0, v1, v0

    .line 1048
    const v2, 0x3dcccccd

    iget v5, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1049
    const v2, -0x42333333

    iget v5, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1050
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->m:F

    .line 1054
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    if-ne v0, v4, :cond_bb

    cmpg-float v0, v1, v8

    if-gez v0, :cond_bb

    .line 1055
    invoke-static {}, Lcom/dropbox/android/util/h;->I()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v5, "index"

    iget v6, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 1056
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(I)V

    .line 1057
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v5, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    invoke-static {v0}, Lcom/dropbox/android/widget/af;->k(Lcom/dropbox/android/widget/af;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    move v0, v4

    .line 1068
    :goto_7a
    if-ne v0, v4, :cond_ff

    .line 1069
    invoke-direct {p0, v3}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    .line 1070
    iput v9, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    .line 1074
    :goto_81
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    .line 1076
    :goto_84
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v2

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    goto :goto_17

    .line 1028
    :cond_95
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v3}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;Z)F

    move-result v1

    sub-float/2addr v0, v1

    move v1, v0

    goto :goto_2b

    .line 1030
    :cond_9f
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    if-ne v1, v4, :cond_ae

    .line 1031
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v4}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Z)F

    move-result v1

    sub-float/2addr v0, v1

    move v1, v0

    goto/16 :goto_2b

    .line 1032
    :cond_ae
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_104

    .line 1033
    invoke-direct {p0, p1, v4}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;Z)F

    move-result v0

    neg-float v0, v0

    move v1, v0

    goto/16 :goto_2b

    .line 1059
    :cond_bb
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_f0

    cmpl-float v0, v1, v7

    if-lez v0, :cond_f0

    .line 1060
    invoke-static {}, Lcom/dropbox/android/util/h;->I()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v5, "index"

    iget v6, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 1061
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(I)V

    .line 1062
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v5, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    invoke-static {v0}, Lcom/dropbox/android/widget/af;->k(Lcom/dropbox/android/widget/af;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    move v0, v4

    .line 1063
    goto :goto_7a

    .line 1064
    :cond_f0
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    if-nez v0, :cond_101

    cmpg-float v0, v1, v8

    if-gez v0, :cond_101

    cmpl-float v0, v1, v7

    if-lez v0, :cond_101

    move v0, v4

    .line 1065
    goto/16 :goto_7a

    :cond_ff
    move v1, v2

    .line 1072
    goto :goto_81

    :cond_101
    move v0, v3

    goto/16 :goto_7a

    :cond_104
    move v1, v0

    goto/16 :goto_2b

    :cond_107
    move v1, v0

    move v0, v3

    goto/16 :goto_84
.end method

.method private b(Lcom/dropbox/android/widget/af;Z)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1092
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1093
    :goto_15
    if-eqz p2, :cond_2d

    .line 1094
    const v1, 0x3d4ccccd

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1095
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v2

    sub-float v2, v0, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2d

    .line 1096
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v0

    add-float/2addr v0, v1

    .line 1099
    :cond_2d
    return v0

    .line 1092
    :cond_2e
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v0

    goto :goto_15
.end method

.method static synthetic b(Lcom/dropbox/android/widget/GalleryView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/dropbox/android/widget/GalleryView;->u:I

    return p1
.end method

.method private b(FF)Landroid/util/Pair;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 942
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    .line 945
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v1

    sub-float/2addr v1, p1

    .line 946
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v2

    sub-float/2addr v2, p2

    .line 949
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v3

    div-float/2addr v1, v3

    .line 950
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v3

    div-float/2addr v2, v3

    .line 952
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->l(Lcom/dropbox/android/widget/af;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v1, v3, v1

    .line 953
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->m(Lcom/dropbox/android/widget/af;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr v0, v2

    .line 955
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private b(FFFFF)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 982
    iput p1, p0, Lcom/dropbox/android/widget/GalleryView;->G:F

    .line 983
    iput p2, p0, Lcom/dropbox/android/widget/GalleryView;->H:F

    .line 984
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->I:F

    .line 985
    iput p3, p0, Lcom/dropbox/android/widget/GalleryView;->J:F

    .line 986
    iput p4, p0, Lcom/dropbox/android/widget/GalleryView;->K:F

    .line 987
    iput p5, p0, Lcom/dropbox/android/widget/GalleryView;->L:F

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/widget/GalleryView;->P:J

    .line 989
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->M:F

    .line 990
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->N:F

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->O:Z

    .line 992
    return-void
.end method

.method private b(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter

    .prologue
    .line 749
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 750
    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/widget/GalleryView;)V
    .registers 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->p()V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/widget/GalleryView;Landroid/widget/ProgressBar;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/GalleryView;->a(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method private b(Lcom/dropbox/android/widget/af;F)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 1125
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;F)F

    move-result v2

    .line 1127
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 1128
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->s()V

    .line 1131
    :cond_10
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v0

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v1

    invoke-static {p1, v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    .line 1134
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v0

    .line 1135
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v1

    .line 1136
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v3

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6c

    .line 1138
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_57

    .line 1139
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v0

    div-float/2addr v0, v5

    .line 1147
    :cond_3b
    :goto_3b
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->h(Lcom/dropbox/android/widget/af;)F

    move-result v3

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_86

    .line 1149
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->i(Lcom/dropbox/android/widget/af;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_71

    .line 1150
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->h(Lcom/dropbox/android/widget/af;)F

    move-result v1

    div-float/2addr v1, v5

    .line 1158
    :cond_53
    :goto_53
    invoke-static {p1, v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    .line 1159
    return-void

    .line 1140
    :cond_57
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v3

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3b

    .line 1141
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    goto :goto_3b

    .line 1145
    :cond_6c
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    goto :goto_3b

    .line 1151
    :cond_71
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->j(Lcom/dropbox/android/widget/af;)F

    move-result v3

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_53

    .line 1152
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v1, v1

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->h(Lcom/dropbox/android/widget/af;)F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    goto :goto_53

    .line 1156
    :cond_86
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    goto :goto_53
.end method

.method private b(I)Z
    .registers 4
    .parameter

    .prologue
    .line 850
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic c(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/taskqueue/q;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->f:Lcom/dropbox/android/taskqueue/q;

    return-object v0
.end method

.method private c(I)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 856
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic c(Lcom/dropbox/android/widget/GalleryView;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/GalleryView;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/dropbox/android/widget/GalleryView;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    return v0
.end method

.method private d(I)V
    .registers 2
    .parameter

    .prologue
    .line 914
    iput p1, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    .line 915
    return-void
.end method

.method static synthetic e(Lcom/dropbox/android/widget/GalleryView;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    return v0
.end method

.method static synthetic f(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/widget/ad;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->k:Lcom/dropbox/android/widget/ad;

    return-object v0
.end method

.method static synthetic g(Lcom/dropbox/android/widget/GalleryView;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->t:I

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/dropbox/android/widget/GalleryView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/dropbox/android/widget/GalleryView;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->u:I

    return v0
.end method

.method private h()V
    .registers 4

    .prologue
    const v1, 0x7f020092

    .line 619
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->r:Landroid/widget/ProgressBar;

    .line 620
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->s:Landroid/widget/ProgressBar;

    .line 622
    invoke-static {}, Lcom/dropbox/android/util/aW;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 627
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 628
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 631
    :cond_29
    invoke-static {}, Lcom/dropbox/android/widget/at;->a()Landroid/text/TextPaint;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 634
    new-instance v1, Lcom/dropbox/android/widget/at;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/widget/at;-><init>(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;)V

    iput-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->v:Lcom/dropbox/android/widget/at;

    .line 635
    new-instance v1, Lcom/dropbox/android/widget/at;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/widget/at;-><init>(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;)V

    iput-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->w:Lcom/dropbox/android/widget/at;

    .line 637
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->postInvalidate()V

    .line 638
    return-void
.end method

.method static synthetic i(Lcom/dropbox/android/widget/GalleryView;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i()V
    .registers 9

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dropbox/android/widget/GalleryView;->P:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v2, 0x406f400000000000L

    div-double/2addr v0, v2

    .line 725
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 728
    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 730
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->K:F

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->M:F

    sub-float v4, v0, v1

    .line 731
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->L:F

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->N:F

    sub-float v5, v0, v1

    .line 732
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->M:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->M:F

    .line 733
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->N:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->N:F

    .line 735
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->G:F

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->H:F

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->I:F

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->J:F

    iget v7, p0, Lcom/dropbox/android/widget/GalleryView;->I:F

    sub-float/2addr v3, v7

    mul-float/2addr v3, v6

    add-float/2addr v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/GalleryView;->a(FFFFF)V

    .line 737
    const/high16 v0, 0x3f80

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_61

    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->O:Z

    .line 742
    :goto_60
    return-void

    .line 740
    :cond_61
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    goto :goto_60
.end method

.method private j()V
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->r:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->b(Landroid/widget/ProgressBar;)V

    .line 754
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->s:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->b(Landroid/widget/ProgressBar;)V

    .line 755
    return-void
.end method

.method static synthetic j(Lcom/dropbox/android/widget/GalleryView;)V
    .registers 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->n()V

    return-void
.end method

.method private k()V
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(I)V

    .line 817
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 820
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 821
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 822
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->d()V

    .line 821
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 824
    :cond_19
    return-void
.end method

.method private m()[I
    .registers 5

    .prologue
    .line 832
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->A:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method private declared-synchronized n()V
    .registers 8

    .prologue
    .line 861
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->f:Lcom/dropbox/android/taskqueue/q;

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;)V

    .line 863
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->B:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4e

    if-nez v0, :cond_e

    .line 892
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 867
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 869
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->m()[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v1, v4, :cond_c

    aget v5, v3, v1

    .line 871
    if-ltz v5, :cond_23

    if-lt v5, v2, :cond_27

    .line 869
    :cond_23
    :goto_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 875
    :cond_27
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 877
    invoke-direct {p0, v5}, Lcom/dropbox/android/widget/GalleryView;->c(I)Z

    move-result v6

    .line 879
    if-eqz v6, :cond_4a

    invoke-static {v0}, Lcom/dropbox/android/widget/af;->f(Lcom/dropbox/android/widget/af;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_4a

    .line 882
    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->c()Lcom/dropbox/android/taskqueue/D;

    move-result-object v0

    .line 884
    iget-boolean v0, v0, Lcom/dropbox/android/taskqueue/D;->b:Z

    if-eqz v0, :cond_23

    invoke-direct {p0, v5}, Lcom/dropbox/android/widget/GalleryView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_c

    .line 889
    :cond_4a
    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->b()V
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4e

    goto :goto_23

    .line 861
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 895
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 896
    :goto_8
    if-ge v2, v3, :cond_2a

    .line 897
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->g:Z

    if-eqz v0, :cond_28

    move v0, v1

    .line 898
    :goto_f
    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    sub-int/2addr v4, v0

    if-lt v2, v4, :cond_19

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/2addr v0, v4

    if-le v2, v0, :cond_24

    .line 899
    :cond_19
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->d()V

    .line 896
    :cond_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 897
    :cond_28
    const/4 v0, 0x1

    goto :goto_f

    .line 902
    :cond_2a
    return-void
.end method

.method private p()V
    .registers 2

    .prologue
    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->g:Z

    .line 906
    return-void
.end method

.method private q()Lcom/dropbox/android/widget/af;
    .registers 3

    .prologue
    .line 918
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_17

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_19

    .line 919
    :cond_17
    const/4 v0, 0x0

    .line 921
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    goto :goto_18
.end method

.method private r()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 995
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 996
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1000
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_32

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1d
    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    .line 1002
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3b

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2f
    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    .line 1004
    return-void

    .line 1000
    :cond_32
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1d

    .line 1002
    :cond_3b
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2f
.end method

.method private s()V
    .registers 3

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    .line 1118
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->f(Lcom/dropbox/android/widget/af;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1119
    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->f()Z

    move-result v0

    .line 1120
    iput-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->F:Z

    .line 1122
    :cond_10
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    return v0
.end method

.method public final a(Ldbxyzptlk/D/c;)Lcom/dropbox/android/widget/af;
    .registers 5
    .parameter

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->c:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->b:Z

    if-eqz v0, :cond_a

    .line 336
    :cond_8
    const/4 v0, 0x0

    .line 358
    :goto_9
    return-object v0

    .line 339
    :cond_a
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 340
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-lez v0, :cond_68

    .line 341
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 342
    invoke-virtual {p1}, Ldbxyzptlk/D/c;->g()F

    move-result v1

    invoke-virtual {p1}, Ldbxyzptlk/D/c;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 343
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/dropbox/android/widget/GalleryView;->a(I)V

    goto :goto_9

    .line 347
    :cond_35
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    .line 348
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_68

    .line 349
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 350
    invoke-virtual {p1}, Ldbxyzptlk/D/c;->g()F

    move-result v1

    invoke-virtual {p1}, Ldbxyzptlk/D/c;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 351
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/dropbox/android/widget/GalleryView;->a(I)V

    goto :goto_9

    .line 357
    :cond_68
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    goto :goto_9
.end method

.method public final a(Lcom/dropbox/android/widget/af;Ldbxyzptlk/D/c;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x4140

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/widget/GalleryView;->n:J

    .line 369
    if-eqz p2, :cond_30

    .line 370
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v0, p2}, Ldbxyzptlk/D/c;->a(Ldbxyzptlk/D/c;)V

    .line 371
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->i()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 373
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->E:Ldbxyzptlk/D/c;

    invoke-virtual {v0, p2}, Ldbxyzptlk/D/c;->a(Ldbxyzptlk/D/c;)V

    .line 374
    iput v3, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    .line 376
    iput v7, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    .line 378
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->l:Z

    if-eqz v0, :cond_2d

    .line 380
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 430
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    .line 432
    :cond_30
    return-void

    .line 384
    :cond_31
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->c:Z

    if-eqz v0, :cond_38

    .line 385
    iput-boolean v4, p0, Lcom/dropbox/android/widget/GalleryView;->c:Z

    goto :goto_2d

    .line 388
    :cond_38
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->g()F

    move-result v0

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->E:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->g()F

    move-result v1

    sub-float/2addr v0, v1

    .line 389
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->h()F

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/GalleryView;->E:Ldbxyzptlk/D/c;

    invoke-virtual {v2}, Ldbxyzptlk/D/c;->h()F

    move-result v2

    sub-float/2addr v1, v2

    .line 390
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 391
    const/high16 v1, 0x4310

    cmpg-float v0, v0, v1

    if-gez v0, :cond_79

    .line 393
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 395
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->l:Z

    if-eqz v0, :cond_a3

    .line 396
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->g()F

    move-result v0

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->h()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/GalleryView;->a(FF)V

    .line 397
    iput-boolean v4, p0, Lcom/dropbox/android/widget/GalleryView;->l:Z

    .line 405
    :goto_75
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    if-ne v0, v7, :cond_30

    .line 411
    :cond_79
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 412
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-ne v1, v3, :cond_ad

    invoke-direct {p0, v0, v3}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Z)F

    move-result v1

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    cmpl-float v1, v1, v2

    if-lez v1, :cond_ad

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-lez v1, :cond_ad

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->m:F

    const v2, 0x3dcccccd

    cmpg-float v1, v1, v2

    if-gez v1, :cond_ad

    .line 416
    iput v3, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    goto :goto_2d

    .line 400
    :cond_a3
    iput-boolean v3, p0, Lcom/dropbox/android/widget/GalleryView;->l:Z

    .line 401
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/dropbox/android/widget/GalleryView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_75

    .line 417
    :cond_ad
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-ne v1, v5, :cond_da

    invoke-direct {p0, v0, v3}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;Z)F

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_da

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_da

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->m:F

    const v1, -0x42333333

    cmpl-float v0, v0, v1

    if-lez v0, :cond_da

    .line 421
    iput v5, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    goto/16 :goto_2d

    .line 423
    :cond_da
    iput v4, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    .line 424
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    if-ne v0, v5, :cond_2d

    .line 425
    invoke-static {}, Lcom/dropbox/android/util/h;->K()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->c()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;D)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    goto/16 :goto_2d
.end method

.method public final a(Lcom/dropbox/android/widget/af;Ldbxyzptlk/D/d;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 440
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v1

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v4

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v6

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v7

    const/4 v9, 0x0

    move-object v0, p2

    move v8, v5

    invoke-virtual/range {v0 .. v9}, Ldbxyzptlk/D/d;->a(FFZFZFFZF)V

    .line 443
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ldbxyzptlk/D/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/dropbox/android/widget/af;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Ldbxyzptlk/D/c;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ldbxyzptlk/D/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/dropbox/android/widget/af;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Ldbxyzptlk/D/d;)V

    return-void
.end method

.method public final a(Lcom/dropbox/android/widget/af;Ldbxyzptlk/D/d;Ldbxyzptlk/D/c;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->c:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->b:Z

    if-eqz v0, :cond_a

    .line 451
    :cond_8
    const/4 v0, 0x1

    .line 581
    :goto_9
    return v0

    .line 453
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 454
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_105

    .line 455
    invoke-virtual {p3}, Ldbxyzptlk/D/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-eqz v0, :cond_34

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v0

    const/high16 v1, -0x3f60

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_34

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4d

    .line 457
    :cond_34
    const/4 v0, 0x2

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    .line 459
    invoke-static {}, Lcom/dropbox/android/util/h;->J()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "scale"

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {v0, v1, v5, v6}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;D)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 466
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->D:Ldbxyzptlk/D/c;

    invoke-virtual {v0, p3}, Ldbxyzptlk/D/c;->a(Ldbxyzptlk/D/c;)V

    .line 468
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6d

    .line 469
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->d:Lcom/dropbox/android/widget/ae;

    if-eqz v0, :cond_60

    .line 470
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->d:Lcom/dropbox/android/widget/ae;

    invoke-interface {v0}, Lcom/dropbox/android/widget/ae;->b()V

    .line 473
    :cond_60
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->f(Lcom/dropbox/android/widget/af;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 474
    invoke-virtual {p2}, Ldbxyzptlk/D/d;->c()F

    move-result v0

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;F)V

    .line 479
    :cond_6d
    invoke-virtual {p2}, Ldbxyzptlk/D/d;->a()F

    move-result v0

    .line 480
    invoke-virtual {p2}, Ldbxyzptlk/D/d;->b()F

    move-result v1

    .line 482
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v2

    sub-float v5, v0, v2

    .line 483
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v2

    sub-float v6, v1, v2

    .line 485
    iget-wide v7, p0, Lcom/dropbox/android/widget/GalleryView;->n:J

    sub-long/2addr v7, v3

    long-to-float v2, v7

    .line 486
    const/high16 v7, 0x42c8

    cmpl-float v7, v2, v7

    if-lez v7, :cond_8d

    .line 487
    const/high16 v2, 0x42c8

    .line 490
    :cond_8d
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_98

    .line 491
    div-float v2, v5, v2

    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->m:F

    .line 492
    iput-wide v3, p0, Lcom/dropbox/android/widget/GalleryView;->n:J

    .line 495
    :cond_98
    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_115

    .line 514
    :goto_9d
    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d0

    .line 533
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v5

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b8

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v5

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_cc

    :cond_b8
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v2

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_15b

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_15b

    .line 544
    :cond_cc
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    .line 565
    :cond_d0
    :goto_d0
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->h(Lcom/dropbox/android/widget/af;)F

    move-result v2

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b4

    .line 567
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->i(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v6

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_191

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->j(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v6

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_191

    .line 569
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->h(Lcom/dropbox/android/widget/af;)F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 577
    :cond_f8
    :goto_f8
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    .line 580
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    .line 581
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 461
    :cond_105
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 462
    invoke-virtual {p3}, Ldbxyzptlk/D/c;->a()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 463
    const/4 v0, 0x1

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->j:I

    goto/16 :goto_4d

    .line 498
    :cond_115
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v2

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_155

    .line 499
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13a

    .line 501
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v0, v0

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 503
    :cond_13a
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14f

    .line 505
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v0

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    .line 511
    :cond_14f
    :goto_14f
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    goto/16 :goto_9d

    .line 509
    :cond_155
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_14f

    .line 546
    :cond_15b
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->d(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v5

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_171

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->e(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v5

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_185

    :cond_171
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->g(Lcom/dropbox/android/widget/af;)F

    move-result v2

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18b

    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_18b

    .line 557
    :cond_185
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    goto/16 :goto_d0

    .line 560
    :cond_18b
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    goto/16 :goto_d0

    .line 570
    :cond_191
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->i(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v6

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f8

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->j(Lcom/dropbox/android/widget/af;)F

    move-result v2

    add-float/2addr v2, v6

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f8

    .line 572
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    int-to-float v1, v1

    invoke-static {p1}, Lcom/dropbox/android/widget/af;->h(Lcom/dropbox/android/widget/af;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto/16 :goto_f8

    .line 575
    :cond_1b4
    invoke-static {p1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v1

    goto/16 :goto_f8
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ldbxyzptlk/D/d;Ldbxyzptlk/D/c;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/dropbox/android/widget/af;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Ldbxyzptlk/D/d;Ldbxyzptlk/D/c;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    .line 265
    if-nez v0, :cond_8

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->a()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    goto :goto_7
.end method

.method public final synthetic b(Ldbxyzptlk/D/c;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/GalleryView;->a(Ldbxyzptlk/D/c;)Lcom/dropbox/android/widget/af;

    move-result-object v0

    return-object v0
.end method

.method public final c()F
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    .line 274
    if-nez v0, :cond_9

    .line 275
    const/high16 v0, 0x3f80

    .line 277
    :goto_8
    return v0

    :cond_9
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v0

    goto :goto_8
.end method

.method public final d()[F
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 282
    new-array v0, v2, [F

    .line 283
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v1

    .line 284
    if-nez v1, :cond_f

    .line 285
    new-array v0, v2, [F

    fill-array-data v0, :array_1e

    .line 289
    :goto_e
    return-object v0

    .line 287
    :cond_f
    const/4 v2, 0x0

    invoke-static {v1}, Lcom/dropbox/android/widget/af;->b(Lcom/dropbox/android/widget/af;)F

    move-result v3

    aput v3, v0, v2

    .line 288
    const/4 v2, 0x1

    invoke-static {v1}, Lcom/dropbox/android/widget/af;->c(Lcom/dropbox/android/widget/af;)F

    move-result v1

    aput v1, v0, v2

    goto :goto_e

    .line 285
    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final e()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 298
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-lez v0, :cond_17

    .line 299
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    .line 304
    :cond_d
    :goto_d
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-nez v0, :cond_14

    .line 305
    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    .line 307
    :cond_14
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    .line 309
    :cond_17
    return-void

    .line 301
    :cond_18
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 302
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    goto :goto_d
.end method

.method public final f()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 312
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1f

    .line 313
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    .line 318
    :cond_15
    :goto_15
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-nez v0, :cond_1c

    .line 319
    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/GalleryView;->d(I)V

    .line 321
    :cond_1c
    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryView;->invalidate()V

    .line 323
    :cond_1f
    return-void

    .line 315
    :cond_20
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 316
    iput v2, p0, Lcom/dropbox/android/widget/GalleryView;->i:I

    goto :goto_15
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->r()V

    .line 600
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 601
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 602
    iget-boolean v1, p0, Lcom/dropbox/android/widget/GalleryView;->F:Z

    if-nez v1, :cond_21

    .line 603
    invoke-virtual {v0}, Lcom/dropbox/android/widget/af;->e()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;F)V

    .line 608
    :cond_20
    :goto_20
    return-void

    .line 605
    :cond_21
    invoke-static {v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;F)V

    goto :goto_20
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 647
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 649
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 721
    :cond_e
    :goto_e
    return-void

    .line 652
    :cond_f
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    .line 654
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->s()V

    .line 657
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    .line 659
    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;)Z

    move-result v3

    .line 660
    if-eqz v3, :cond_2a

    iget-boolean v4, p0, Lcom/dropbox/android/widget/GalleryView;->b:Z

    if-eqz v4, :cond_2a

    .line 661
    iput-boolean v2, p0, Lcom/dropbox/android/widget/GalleryView;->b:Z

    .line 664
    :cond_2a
    if-ne v1, v6, :cond_bd

    .line 665
    if-eqz v3, :cond_93

    .line 666
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/widget/af;

    .line 667
    if-eq v1, v0, :cond_136

    .line 669
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    :goto_4b
    move-object v0, v1

    .line 696
    :cond_4c
    :goto_4c
    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/af;->a(Landroid/graphics/Canvas;)V

    .line 698
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_114

    move v5, v6

    .line 699
    :goto_56
    if-eqz v5, :cond_117

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->v:Lcom/dropbox/android/widget/at;

    move-object v4, v1

    .line 700
    :goto_5b
    if-eqz v5, :cond_11c

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->w:Lcom/dropbox/android/widget/at;

    move-object v3, v1

    .line 702
    :goto_60
    if-eqz v5, :cond_121

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->r:Landroid/widget/ProgressBar;

    move-object v2, v1

    .line 703
    :goto_65
    if-eqz v5, :cond_126

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->s:Landroid/widget/ProgressBar;

    .line 705
    :goto_69
    invoke-virtual {v0, v4, v2, p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/at;Landroid/widget/ProgressBar;Landroid/graphics/Canvas;)V

    .line 707
    const/4 v0, -0x1

    .line 708
    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-ne v2, v7, :cond_12a

    .line 709
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v0, v0, 0x1

    .line 714
    :cond_75
    :goto_75
    if-ltz v0, :cond_8a

    iget-object v2, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8a

    .line 715
    iget-object v2, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/af;

    invoke-virtual {v0, v3, v1, p1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/at;Landroid/widget/ProgressBar;Landroid/graphics/Canvas;)V

    .line 718
    :cond_8a
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->O:Z

    if-eqz v0, :cond_e

    .line 719
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->i()V

    goto/16 :goto_e

    .line 672
    :cond_93
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    if-lez v1, :cond_4c

    .line 673
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/widget/af;

    .line 674
    invoke-direct {p0, v0, v6}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;Z)F

    move-result v3

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 675
    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/dropbox/android/widget/af;->e()F

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    .line 676
    invoke-virtual {v1, p1}, Lcom/dropbox/android/widget/af;->a(Landroid/graphics/Canvas;)V

    goto :goto_4c

    .line 679
    :cond_bd
    if-ne v1, v7, :cond_4c

    .line 680
    if-eqz v3, :cond_e1

    .line 681
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/widget/af;

    .line 682
    if-eq v1, v0, :cond_134

    .line 684
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;)F

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    :goto_de
    move-object v0, v1

    .line 686
    goto/16 :goto_4c

    .line 687
    :cond_e1
    iget v1, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    iget-object v3, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4c

    .line 688
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/widget/af;

    .line 689
    invoke-direct {p0, v0, v6}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/af;Z)F

    move-result v3

    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 691
    iget v4, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/dropbox/android/widget/af;->e()F

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    .line 692
    invoke-virtual {v1, p1}, Lcom/dropbox/android/widget/af;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_4c

    :cond_114
    move v5, v2

    .line 698
    goto/16 :goto_56

    .line 699
    :cond_117
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->w:Lcom/dropbox/android/widget/at;

    move-object v4, v1

    goto/16 :goto_5b

    .line 700
    :cond_11c
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->v:Lcom/dropbox/android/widget/at;

    move-object v3, v1

    goto/16 :goto_60

    .line 702
    :cond_121
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->s:Landroid/widget/ProgressBar;

    move-object v2, v1

    goto/16 :goto_65

    .line 703
    :cond_126
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->r:Landroid/widget/ProgressBar;

    goto/16 :goto_69

    .line 710
    :cond_12a
    iget v2, p0, Lcom/dropbox/android/widget/GalleryView;->h:I

    if-ne v2, v6, :cond_75

    .line 711
    iget v0, p0, Lcom/dropbox/android/widget/GalleryView;->z:I

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_75

    :cond_134
    move-object v1, v0

    goto :goto_de

    :cond_136
    move-object v1, v0

    goto/16 :goto_4b
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 612
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->p:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->q:Landroid/view/View;

    .line 615
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->h()V

    .line 616
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    iput p2, p0, Lcom/dropbox/android/widget/GalleryView;->R:I

    .line 768
    iput p1, p0, Lcom/dropbox/android/widget/GalleryView;->Q:I

    .line 769
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->O:Z

    if-eqz v0, :cond_6

    .line 592
    const/4 v0, 0x1

    .line 594
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->C:Ldbxyzptlk/D/a;

    invoke-virtual {v0, p1}, Ldbxyzptlk/D/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter

    .prologue
    .line 759
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 760
    if-nez p1, :cond_8

    .line 761
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->j()V

    .line 763
    :cond_8
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter

    .prologue
    .line 773
    if-nez p1, :cond_c

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->B:Z

    .line 775
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->r()V

    .line 776
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->k()V

    .line 781
    :goto_b
    return-void

    .line 778
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/GalleryView;->B:Z

    .line 779
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->l()V

    goto :goto_b
.end method

.method public setCurrentImagePosScale(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->q()Lcom/dropbox/android/widget/af;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_16

    .line 244
    invoke-direct {p0, v0, p3}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/af;F)F

    move-result v1

    .line 245
    invoke-static {v0, p1, p2, v1}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/widget/af;FFF)Z

    .line 246
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryView;->s()V

    .line 247
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->k:Lcom/dropbox/android/widget/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ad;->sendEmptyMessage(I)Z

    .line 249
    :cond_16
    return-void
.end method

.method public setImages(Ljava/lang/Iterable;Ldbxyzptlk/l/o;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    .line 220
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 222
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryView;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/widget/af;

    .line 226
    :goto_2a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 224
    :cond_31
    new-instance v1, Lcom/dropbox/android/widget/af;

    invoke-direct {v1, p0, v0, p2}, Lcom/dropbox/android/widget/af;-><init>(Lcom/dropbox/android/widget/GalleryView;Lcom/dropbox/android/filemanager/LocalEntry;Ldbxyzptlk/l/o;)V

    goto :goto_2a

    .line 230
    :cond_37
    invoke-static {}, Lcom/dropbox/android/util/h;->H()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "index"

    int-to-long v4, p3

    invoke-virtual {v0, v1, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 232
    iput-object v2, p0, Lcom/dropbox/android/widget/GalleryView;->x:Ljava/util/ArrayList;

    .line 233
    iput-object v3, p0, Lcom/dropbox/android/widget/GalleryView;->y:Ljava/util/Map;

    .line 236
    invoke-direct {p0, p3}, Lcom/dropbox/android/widget/GalleryView;->a(I)V

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->k:Lcom/dropbox/android/widget/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ad;->sendEmptyMessage(I)Z

    .line 239
    return-void
.end method

.method public setTouchListener(Lcom/dropbox/android/widget/ae;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dropbox/android/widget/GalleryView;->d:Lcom/dropbox/android/widget/ae;

    .line 253
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter

    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryView;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
