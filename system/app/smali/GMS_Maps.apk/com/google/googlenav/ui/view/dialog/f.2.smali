.class public Lcom/google/googlenav/ui/view/dialog/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I

.field private static final w:I

.field private static final x:I

.field private static final y:I

.field private static final z:I


# instance fields
.field private final A:I

.field private final B:Ljava/util/List;

.field private final C:Ljava/util/List;

.field private final D:Lcom/google/googlenav/ui/view/dialog/V;

.field private final E:[Landroid/view/animation/Animation;

.field private final F:Landroid/view/animation/Animation;

.field private final G:Landroid/view/animation/Animation;

.field private final H:Landroid/view/animation/Animation;

.field private final I:Landroid/view/animation/Animation;

.field private final J:Landroid/view/animation/Animation;

.field private final K:Landroid/view/animation/Animation;

.field private final L:Landroid/view/animation/Animation;

.field private final M:Landroid/content/Context;

.field final a:Landroid/view/animation/Animation;

.field final b:Landroid/view/animation/Animation;

.field final c:Landroid/view/animation/Animation;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:I

.field k:I

.field l:Z

.field m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v0, 0xc8

    const/16 v2, 0x1f4

    const/16 v1, 0x320

    .line 59
    sput v1, Lcom/google/googlenav/ui/view/dialog/F;->n:I

    .line 60
    sput v1, Lcom/google/googlenav/ui/view/dialog/F;->o:I

    .line 61
    sput v0, Lcom/google/googlenav/ui/view/dialog/F;->p:I

    .line 62
    sput v2, Lcom/google/googlenav/ui/view/dialog/F;->q:I

    .line 63
    sput v0, Lcom/google/googlenav/ui/view/dialog/F;->r:I

    .line 64
    const/16 v0, 0x3e8

    sput v0, Lcom/google/googlenav/ui/view/dialog/F;->s:I

    .line 65
    sput v1, Lcom/google/googlenav/ui/view/dialog/F;->t:I

    .line 66
    const/16 v0, 0x96

    sput v0, Lcom/google/googlenav/ui/view/dialog/F;->u:I

    .line 67
    sput v2, Lcom/google/googlenav/ui/view/dialog/F;->v:I

    .line 68
    const/16 v0, 0x2ee

    sput v0, Lcom/google/googlenav/ui/view/dialog/F;->w:I

    .line 69
    sput v1, Lcom/google/googlenav/ui/view/dialog/F;->x:I

    .line 70
    const/16 v0, 0x12c

    sput v0, Lcom/google/googlenav/ui/view/dialog/F;->y:I

    .line 71
    sput v2, Lcom/google/googlenav/ui/view/dialog/F;->z:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lam/n;Lcom/google/googlenav/ui/view/dialog/V;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4434

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->d:Z

    .line 138
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->e:Z

    .line 141
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->f:Z

    .line 144
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->g:Z

    .line 147
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->h:Z

    .line 150
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->i:Z

    .line 153
    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->j:I

    .line 159
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->k:I

    .line 172
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->l:Z

    .line 175
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->m:Z

    .line 180
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    .line 182
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    .line 184
    iget-object v1, p2, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    array-length v1, v1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    .line 185
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    invoke-virtual {p1, v1}, Lam/n;->a(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->B:Ljava/util/List;

    .line 186
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    invoke-virtual {p1, v1}, Lam/n;->b(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->C:Ljava/util/List;

    .line 190
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->i()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->a:Landroid/view/animation/Animation;

    .line 191
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->k()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->b:Landroid/view/animation/Animation;

    .line 192
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->m()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->c:Landroid/view/animation/Animation;

    .line 193
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->o()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->F:Landroid/view/animation/Animation;

    .line 195
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    new-array v1, v1, [Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->E:[Landroid/view/animation/Animation;

    move v1, v0

    .line 196
    :goto_57
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    if-ge v1, v0, :cond_73

    .line 197
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->E:[Landroid/view/animation/Animation;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    invoke-direct {p0, v3, v0}, Lcom/google/googlenav/ui/view/dialog/F;->b(Landroid/view/View;Lam/f;)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v2, v1

    .line 196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    .line 201
    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->G:Landroid/view/animation/Animation;

    .line 203
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/dialog/F;->a(F)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->H:Landroid/view/animation/Animation;

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->I:Landroid/view/animation/Animation;

    .line 206
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/dialog/F;->a(F)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->J:Landroid/view/animation/Animation;

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->J:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->J:Landroid/view/animation/Animation;

    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->w:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->K:Landroid/view/animation/Animation;

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->K:Landroid/view/animation/Animation;

    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->x:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->K:Landroid/view/animation/Animation;

    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->y:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->t()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->L:Landroid/view/animation/Animation;

    .line 215
    return-void
.end method

.method private a(F)Landroid/view/animation/Animation;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 674
    new-instance v0, LaJ/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, LaJ/a;-><init>(Landroid/view/View;FFFF)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/F;)Lcom/google/googlenav/ui/view/dialog/V;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/F;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->u()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;Lam/f;)Landroid/view/animation/Animation;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 451
    new-instance v0, LaJ/a;

    const/high16 v3, 0x4434

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, LaJ/a;-><init>(Landroid/view/View;FFFF)V

    .line 453
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->t:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, LaJ/a;->setDuration(J)V

    .line 455
    const v1, 0x7f10008c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 456
    const v3, 0x7f10008b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 457
    new-instance v4, Lcom/google/googlenav/ui/view/dialog/K;

    invoke-direct {v4, p0, v1, v3}, Lcom/google/googlenav/ui/view/dialog/K;-><init>(Lcom/google/googlenav/ui/view/dialog/F;Landroid/view/View;Landroid/view/View;)V

    .line 473
    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1, v2, v4}, LaJ/a;->a(FFLjava/lang/Runnable;)V

    .line 474
    const/high16 v1, 0x4387

    invoke-virtual {v0, v1, v2, v4}, LaJ/a;->a(FFLjava/lang/Runnable;)V

    .line 475
    const/high16 v1, 0x43e1

    invoke-virtual {v0, v1, v2, v4}, LaJ/a;->a(FFLjava/lang/Runnable;)V

    .line 476
    const v1, 0x441d8000

    invoke-virtual {v0, v1, v2, v4}, LaJ/a;->a(FFLjava/lang/Runnable;)V

    .line 479
    const v1, 0x43e18000

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/L;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/L;-><init>(Lcom/google/googlenav/ui/view/dialog/F;Landroid/view/View;Lam/f;)V

    invoke-virtual {v0, v1, v2, v3}, LaJ/a;->a(FFLjava/lang/Runnable;)V

    .line 491
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/M;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/M;-><init>(Lcom/google/googlenav/ui/view/dialog/F;Landroid/view/View;Lam/f;)V

    invoke-virtual {v0, v1}, LaJ/a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 497
    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/F;)Landroid/view/animation/Animation;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->L:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/F;)Landroid/view/animation/Animation;
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->s()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 290
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    return-void
.end method

.method private i()Landroid/view/animation/Animation;
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 304
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 305
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->o:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 307
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/G;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/G;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 318
    return-object v0
.end method

.method private j()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x5

    .line 331
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    .line 332
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/V;->b:Landroid/view/View;

    .line 338
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sub-int v0, v1, v0

    .line 340
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 342
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 343
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 347
    return-void
.end method

.method private k()Landroid/view/animation/Animation;
    .registers 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 357
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 358
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 360
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/I;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/I;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 370
    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    return-void
.end method

.method private m()Landroid/view/animation/Animation;
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 387
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 388
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->s:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 389
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/J;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/J;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 399
    return-object v0
.end method

.method private n()V
    .registers 5

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/F;->e()Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->k:I

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->j:I

    .line 424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 425
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/F;->E:[Landroid/view/animation/Animation;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11

    .line 427
    :cond_33
    return-void
.end method

.method private o()Landroid/view/animation/Animation;
    .registers 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 521
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x4348

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 524
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->u:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 525
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/N;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/N;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 531
    return-object v0
.end method

.method private p()V
    .registers 3

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->q()V

    .line 552
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->r()Landroid/view/animation/Animation;

    move-result-object v0

    .line 553
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/O;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/O;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 567
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 568
    return-void
.end method

.method private q()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 574
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 575
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 576
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/V;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 578
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 580
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 581
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v4, v4, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 586
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 587
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    return-void
.end method

.method private r()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 598
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 599
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->v()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 600
    aget v0, v0, v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    .line 603
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 609
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 610
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->I:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 611
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->G:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 612
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->H:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 613
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 614
    sget v0, Lcom/google/googlenav/ui/view/dialog/F;->v:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 616
    return-object v1
.end method

.method private s()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 627
    new-array v5, v4, [I

    .line 628
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 629
    new-array v6, v4, [I

    .line 630
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->u()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 633
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    aget v4, v6, v3

    aget v7, v5, v3

    sub-int/2addr v4, v7

    int-to-float v4, v4

    aget v6, v6, v1

    aget v5, v5, v1

    sub-int v5, v6, v5

    int-to-float v8, v5

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 638
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->x:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 639
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->y:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 641
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 642
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->J:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 643
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/F;->K:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 644
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 645
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/P;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/P;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 654
    return-object v1
.end method

.method private t()Landroid/view/animation/Animation;
    .registers 4

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->M:Landroid/content/Context;

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 659
    sget v1, Lcom/google/googlenav/ui/view/dialog/F;->z:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 660
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/H;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/H;-><init>(Lcom/google/googlenav/ui/view/dialog/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 666
    return-object v0
.end method

.method private u()Landroid/view/View;
    .registers 3

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->v()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private v()Landroid/view/View;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    array-length v0, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_17

    .line 689
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 692
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->D:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->a:Landroid/view/View;

    goto :goto_16
.end method


# virtual methods
.method a()V
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 232
    .line 233
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    if-gtz v0, :cond_76

    move v0, v2

    :goto_8
    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v0

    .line 241
    :goto_10
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    if-ge v4, v0, :cond_58

    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->B:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    .line 243
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->C:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/f;

    .line 245
    invoke-virtual {v0}, Lam/f;->j()Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 246
    if-ltz v10, :cond_41

    move v11, v2

    .line 256
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Lam/f;->j()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 257
    if-ltz v9, :cond_4b

    move v1, v6

    move v6, v7

    move v7, v9

    move v9, v2

    .line 241
    :goto_39
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v11, v9

    move v9, v7

    move v7, v6

    move v6, v1

    goto :goto_10

    .line 251
    :cond_41
    invoke-virtual {v0}, Lam/f;->a()Z

    move-result v5

    .line 252
    invoke-virtual {v0}, Lam/f;->c()I

    move-result v8

    move v10, v4

    goto :goto_2d

    .line 262
    :cond_4b
    invoke-virtual {v1}, Lam/f;->a()Z

    move-result v6

    .line 263
    invoke-virtual {v1}, Lam/f;->c()I

    move-result v7

    move v1, v6

    move v9, v11

    move v6, v7

    move v7, v4

    goto :goto_39

    .line 268
    :cond_58
    if-ltz v10, :cond_5c

    if-gez v9, :cond_6f

    :cond_5c
    move v0, v2

    .line 273
    :goto_5d
    if-gtz v7, :cond_60

    move v0, v2

    .line 278
    :cond_60
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->l:Z

    .line 282
    if-eqz v0, :cond_6d

    if-eqz v6, :cond_6d

    if-eqz v5, :cond_6a

    if-nez v8, :cond_6d

    :cond_6a
    :goto_6a
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/dialog/F;->m:Z

    .line 284
    return-void

    :cond_6d
    move v3, v2

    .line 282
    goto :goto_6a

    :cond_6f
    move v0, v11

    goto :goto_5d

    :cond_71
    move v1, v6

    move v6, v7

    move v7, v9

    move v9, v11

    goto :goto_39

    :cond_76
    move v0, v3

    goto :goto_8
.end method

.method a(Landroid/view/View;Lam/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 503
    monitor-enter p0

    .line 504
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->j:I

    .line 505
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    .line 506
    invoke-virtual {p2}, Lam/f;->j()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 508
    const v0, 0x7f020286

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->F:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 510
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->m:Z

    if-eqz v0, :cond_20

    .line 511
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->p()V

    .line 514
    :cond_20
    return-void

    .line 505
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method b()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->e:Z

    .line 325
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->j()V

    .line 326
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->l()V

    .line 327
    return-void
.end method

.method c()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->f:Z

    .line 377
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->n()V

    .line 378
    return-void
.end method

.method d()V
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->g:Z

    .line 406
    return-void
.end method

.method e()Ljava/util/List;
    .registers 9

    .prologue
    .line 431
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 432
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->A:I

    if-ge v2, v0, :cond_3f

    .line 433
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    .line 434
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/F;->B:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/f;

    .line 439
    invoke-virtual {v0}, Lam/f;->i()J

    move-result-wide v4

    invoke-virtual {v1}, Lam/f;->i()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_34

    invoke-virtual {v0}, Lam/f;->j()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v1}, Lam/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 442
    :cond_34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_3b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 445
    :cond_3f
    return-object v3
.end method

.method f()V
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->h:Z

    .line 538
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/F;->a()V

    .line 223
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->l:Z

    if-eqz v0, :cond_10

    .line 224
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->g()V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/F;->d:Z

    .line 226
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/F;->h()V

    .line 228
    :cond_10
    return-void
.end method
