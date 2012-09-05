.class public Lcom/google/googlenav/ui/view/dialog/q;
.super Ljava/lang/Object;

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

.field private final D:Lcom/google/googlenav/ui/view/dialog/G;

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

    const/16 v0, 0xc8

    const/16 v2, 0x1f4

    const/16 v1, 0x320

    sput v1, Lcom/google/googlenav/ui/view/dialog/q;->n:I

    sput v1, Lcom/google/googlenav/ui/view/dialog/q;->o:I

    sput v0, Lcom/google/googlenav/ui/view/dialog/q;->p:I

    sput v2, Lcom/google/googlenav/ui/view/dialog/q;->q:I

    sput v0, Lcom/google/googlenav/ui/view/dialog/q;->r:I

    const/16 v0, 0x3e8

    sput v0, Lcom/google/googlenav/ui/view/dialog/q;->s:I

    sput v1, Lcom/google/googlenav/ui/view/dialog/q;->t:I

    const/16 v0, 0x96

    sput v0, Lcom/google/googlenav/ui/view/dialog/q;->u:I

    sput v2, Lcom/google/googlenav/ui/view/dialog/q;->v:I

    const/16 v0, 0x2ee

    sput v0, Lcom/google/googlenav/ui/view/dialog/q;->w:I

    sput v1, Lcom/google/googlenav/ui/view/dialog/q;->x:I

    const/16 v0, 0x12c

    sput v0, Lcom/google/googlenav/ui/view/dialog/q;->y:I

    sput v2, Lcom/google/googlenav/ui/view/dialog/q;->z:I

    return-void
.end method

.method public constructor <init>(LaD/n;Lcom/google/googlenav/ui/view/dialog/G;)V
    .registers 8

    const/high16 v4, 0x4434

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->d:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->e:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->f:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->g:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->h:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->i:Z

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->k:I

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->l:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->m:Z

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    array-length v1, v1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    invoke-virtual {p1, v1}, LaD/n;->a(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->B:Ljava/util/List;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    invoke-virtual {p1, v1}, LaD/n;->b(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->C:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->i()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->k()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->b:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->m()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->c:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->o()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->F:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    new-array v1, v1, [Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->E:[Landroid/view/animation/Animation;

    move v1, v0

    :goto_57
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    if-ge v1, v0, :cond_73

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->E:[Landroid/view/animation/Animation;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-direct {p0, v3, v0}, Lcom/google/googlenav/ui/view/dialog/q;->b(Landroid/view/View;LaD/f;)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->G:Landroid/view/animation/Animation;

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/dialog/q;->a(F)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->H:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->I:Landroid/view/animation/Animation;

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/dialog/q;->a(F)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->J:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->J:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->J:Landroid/view/animation/Animation;

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->w:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->K:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->K:Landroid/view/animation/Animation;

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->x:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->K:Landroid/view/animation/Animation;

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->y:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->t()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->L:Landroid/view/animation/Animation;

    return-void
.end method

.method private a(F)Landroid/view/animation/Animation;
    .registers 8

    const/4 v2, 0x0

    new-instance v0, LaW/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, LaW/a;-><init>(Landroid/view/View;FFFF)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/q;)Lcom/google/googlenav/ui/view/dialog/G;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/q;)Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->u()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;LaD/f;)Landroid/view/animation/Animation;
    .registers 9

    const/4 v2, 0x0

    new-instance v0, LaW/a;

    const/high16 v3, 0x4434

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, LaW/a;-><init>(Landroid/view/View;FFFF)V

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->t:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, LaW/a;->setDuration(J)V

    const v1, 0x7f0f005e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0f005d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/v;

    invoke-direct {v4, p0, v1, v3}, Lcom/google/googlenav/ui/view/dialog/v;-><init>(Lcom/google/googlenav/ui/view/dialog/q;Landroid/view/View;Landroid/view/View;)V

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1, v2, v4}, LaW/a;->a(FFLjava/lang/Runnable;)V

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1, v2, v4}, LaW/a;->a(FFLjava/lang/Runnable;)V

    const/high16 v1, 0x43e1

    invoke-virtual {v0, v1, v2, v4}, LaW/a;->a(FFLjava/lang/Runnable;)V

    const v1, 0x441d8000

    invoke-virtual {v0, v1, v2, v4}, LaW/a;->a(FFLjava/lang/Runnable;)V

    const v1, 0x43e18000

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/w;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/w;-><init>(Lcom/google/googlenav/ui/view/dialog/q;Landroid/view/View;LaD/f;)V

    invoke-virtual {v0, v1, v2, v3}, LaW/a;->a(FFLjava/lang/Runnable;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/x;-><init>(Lcom/google/googlenav/ui/view/dialog/q;Landroid/view/View;LaD/f;)V

    invoke-virtual {v0, v1}, LaW/a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/q;)Landroid/view/animation/Animation;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->L:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/q;)Landroid/view/animation/Animation;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->s()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private i()Landroid/view/animation/Animation;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->o:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/r;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private j()V
    .registers 5

    const/4 v3, -0x2

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/G;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sub-int v0, v1, v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private k()Landroid/view/animation/Animation;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/t;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/t;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private m()Landroid/view/animation/Animation;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->s:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/u;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/u;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private n()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->j:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/q;->E:[Landroid/view/animation/Animation;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11

    :cond_33
    return-void
.end method

.method private o()Landroid/view/animation/Animation;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x4348

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->u:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/y;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/y;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private p()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->q()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->r()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/z;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private q()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/G;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v4, v4, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private r()Landroid/view/animation/Animation;
    .registers 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->v()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v0, v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->I:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->G:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->H:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget v0, Lcom/google/googlenav/ui/view/dialog/q;->v:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v1
.end method

.method private s()Landroid/view/animation/Animation;
    .registers 10

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v5, v4, [I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v6, v4, [I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->u()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

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

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->x:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->y:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->J:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/q;->K:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/A;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/A;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v1
.end method

.method private t()Landroid/view/animation/Animation;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->M:Landroid/content/Context;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/view/dialog/q;->z:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/s;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/s;-><init>(Lcom/google/googlenav/ui/view/dialog/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private u()Landroid/view/View;
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->v()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private v()Landroid/view/View;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    array-length v0, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    aget-object v0, v0, v1

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->D:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->a:Landroid/view/View;

    goto :goto_16
.end method


# virtual methods
.method a()V
    .registers 14

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

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

    :goto_10
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    if-ge v4, v0, :cond_58

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->B:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->C:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaD/f;

    invoke-virtual {v0}, LaD/f;->j()Z

    move-result v12

    if-eqz v12, :cond_2d

    if-ltz v10, :cond_41

    move v11, v2

    :cond_2d
    :goto_2d
    invoke-virtual {v1}, LaD/f;->j()Z

    move-result v0

    if-eqz v0, :cond_71

    if-ltz v9, :cond_4b

    move v1, v6

    move v6, v7

    move v7, v9

    move v9, v2

    :goto_39
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v11, v9

    move v9, v7

    move v7, v6

    move v6, v1

    goto :goto_10

    :cond_41
    invoke-virtual {v0}, LaD/f;->a()Z

    move-result v5

    invoke-virtual {v0}, LaD/f;->c()I

    move-result v8

    move v10, v4

    goto :goto_2d

    :cond_4b
    invoke-virtual {v1}, LaD/f;->a()Z

    move-result v6

    invoke-virtual {v1}, LaD/f;->c()I

    move-result v7

    move v1, v6

    move v9, v11

    move v6, v7

    move v7, v4

    goto :goto_39

    :cond_58
    if-ltz v10, :cond_5c

    if-gez v9, :cond_6f

    :cond_5c
    move v0, v2

    :goto_5d
    if-gtz v7, :cond_60

    move v0, v2

    :cond_60
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->l:Z

    if-eqz v0, :cond_6d

    if-eqz v6, :cond_6d

    if-eqz v5, :cond_6a

    if-nez v8, :cond_6d

    :cond_6a
    :goto_6a
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/dialog/q;->m:Z

    return-void

    :cond_6d
    move v3, v2

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

.method a(Landroid/view/View;LaD/f;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->j:I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    invoke-virtual {p2}, LaD/f;->j()Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f020230

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->F:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->m:Z

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->p()V

    :cond_20
    return-void

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->e:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->j()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->l()V

    return-void
.end method

.method c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->f:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->n()V

    return-void
.end method

.method d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->g:Z

    return-void
.end method

.method e()Ljava/util/List;
    .registers 9

    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->A:I

    if-ge v2, v0, :cond_3f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->B:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaD/f;

    invoke-virtual {v0}, LaD/f;->i()J

    move-result-wide v4

    invoke-virtual {v1}, LaD/f;->i()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_34

    invoke-virtual {v0}, LaD/f;->j()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v1}, LaD/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_3f
    return-object v3
.end method

.method f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->h:Z

    return-void
.end method

.method public run()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/q;->a()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->l:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/q;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/q;->h()V

    :cond_10
    return-void
.end method
