.class public Lcom/twitter/android/widget/TweetView;
.super Landroid/view/View;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static c:Landroid/graphics/drawable/Drawable;

.field private static final k:Landroid/text/TextPaint;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Landroid/graphics/drawable/Drawable;

.field private P:Landroid/graphics/drawable/Drawable;

.field private Q:Landroid/graphics/drawable/Drawable;

.field private R:[Landroid/graphics/drawable/Drawable;

.field private S:Ljava/lang/String;

.field private T:Z

.field private U:J

.field private V:Landroid/graphics/Rect;

.field private W:Lcom/twitter/android/widget/ai;

.field private Z:Lcom/twitter/android/widget/al;

.field private aa:Lcom/twitter/android/widget/ak;

.field private ab:Lcom/twitter/android/widget/aj;

.field private ac:I

.field private d:Lcom/twitter/android/provider/m;

.field private e:Lcom/twitter/android/widget/am;

.field private f:Landroid/text/StaticLayout;

.field private g:Landroid/text/StaticLayout;

.field private h:Landroid/text/StaticLayout;

.field private i:Landroid/text/StaticLayout;

.field private j:Landroid/text/StaticLayout;

.field private final l:Landroid/content/res/ColorStateList;

.field private m:F

.field private n:I

.field private o:Ljava/lang/String;

.field private p:F

.field private final q:Landroid/content/res/ColorStateList;

.field private r:I

.field private final s:Landroid/content/res/ColorStateList;

.field private t:I

.field private u:Ljava/lang/String;

.field private final v:F

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [I

    sget v1, Lcom/twitter/android/du;->state_mentioned:I

    aput v1, v0, v3

    sput-object v0, Lcom/twitter/android/widget/TweetView;->a:[I

    new-array v0, v2, [I

    sget v1, Lcom/twitter/android/du;->state_avatar_pressed:I

    aput v1, v0, v3

    sput-object v0, Lcom/twitter/android/widget/TweetView;->b:[I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->tweetViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ec;->TweetView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->l:Landroid/content/res/ColorStateList;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->m:F

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->v:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->w:I

    const/4 v1, 0x6

    const/high16 v2, 0x4140

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->p:F

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->q:Landroid/content/res/ColorStateList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->s:Landroid/content/res/ColorStateList;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->K:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->x:I

    sget-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_69

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sput-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    :cond_69
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_85

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v3, p0, Lcom/twitter/android/widget/TweetView;->Q:Landroid/graphics/drawable/Drawable;

    :cond_85
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->y:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->z:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->A:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->B:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->C:I

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->D:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->E:I

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->F:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->G:I

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->H:I

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->I:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->J:I

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->L:I

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->d()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/text/TextPaint;)I
    .registers 3

    invoke-static {p0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method private d()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->n:I

    :cond_11
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->q:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->r:I

    :cond_1d
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->s:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->t:I

    :cond_29
    return-void
.end method

.method private e()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private f()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->Z:Lcom/twitter/android/widget/al;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->Z:Lcom/twitter/android/widget/al;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->aa:Lcom/twitter/android/widget/ak;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->aa:Lcom/twitter/android/widget/ak;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/provider/m;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    return-object v0
.end method

.method public final a(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->m:F

    const/high16 v1, 0x4000

    sub-float v1, p1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->p:F

    return-void
.end method

.method public final a(Lcom/twitter/android/provider/m;)V
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/am;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call setProvider before calling setTweet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    invoke-virtual {p1, v1}, Lcom/twitter/android/provider/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v2, v2, -0x4

    iput v2, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/widget/TweetView;->U:J

    invoke-virtual {p1, v2, v3}, Lcom/twitter/android/provider/m;->a(J)Z

    move-result v4

    iget-wide v5, p1, Lcom/twitter/android/provider/m;->h:J

    cmp-long v5, v5, v10

    if-gtz v5, :cond_b7

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->u:Ljava/lang/String;

    :goto_47
    if-eqz v4, :cond_c0

    iget-boolean v5, p1, Lcom/twitter/android/provider/m;->l:Z

    if-eqz v5, :cond_c0

    iget v4, p0, Lcom/twitter/android/widget/TweetView;->z:I

    invoke-static {v0, v4}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    :goto_55
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->h()Z

    move-result v4

    if-eqz v4, :cond_dd

    sget v2, Lcom/twitter/android/eb;->promoted_by:I

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->S:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->E:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    :goto_77
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->d()Z

    move-result v2

    if-eqz v2, :cond_13b

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->G:I

    invoke-static {v0, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    :cond_85
    :goto_85
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v9

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->Q:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->R:[Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/twitter/android/widget/TweetView;->T:Z

    if-eqz v0, :cond_a7

    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->i()Z

    move-result v0

    if-eqz v0, :cond_179

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    :cond_a7
    :goto_a7
    if-nez v1, :cond_ad

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    if-eqz v0, :cond_b0

    :cond_ad
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->refreshDrawableState()V

    :cond_b0
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->requestLayout()V

    :cond_b3
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->b()V

    return-void

    :cond_b7
    iget-wide v5, p1, Lcom/twitter/android/provider/m;->h:J

    invoke-static {v0, v5, v6}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/twitter/android/widget/TweetView;->u:Ljava/lang/String;

    goto :goto_47

    :cond_c0
    if-eqz v4, :cond_cb

    iget v4, p0, Lcom/twitter/android/widget/TweetView;->A:I

    invoke-static {v0, v4}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    goto :goto_55

    :cond_cb
    iget-boolean v4, p1, Lcom/twitter/android/provider/m;->l:Z

    if-eqz v4, :cond_d9

    iget v4, p0, Lcom/twitter/android/widget/TweetView;->B:I

    invoke-static {v0, v4}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_55

    :cond_d9
    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_55

    :cond_dd
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->g()Z

    move-result v4

    if-eqz v4, :cond_fb

    sget v2, Lcom/twitter/android/eb;->promoted_by:I

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->S:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->D:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_77

    :cond_fb
    iget-boolean v4, p1, Lcom/twitter/android/provider/m;->z:Z

    if-eqz v4, :cond_111

    sget v2, Lcom/twitter/android/eb;->top_tweet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->S:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->C:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_77

    :cond_111
    iget-wide v4, p1, Lcom/twitter/android/provider/m;->q:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_135

    iget-boolean v2, p1, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v2, :cond_135

    sget v2, Lcom/twitter/android/eb;->tweets_retweeted_by:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->S:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_77

    :cond_135
    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->S:Ljava/lang/String;

    iput-object v7, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_77

    :cond_13b
    iget-wide v2, p1, Lcom/twitter/android/provider/m;->j:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_14b

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->H:I

    invoke-static {v0, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_85

    :cond_14b
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->e()Z

    move-result v2

    if-eqz v2, :cond_15b

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->I:I

    invoke-static {v0, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_85

    :cond_15b
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->f()Z

    move-result v2

    if-eqz v2, :cond_16b

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->J:I

    invoke-static {v0, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_85

    :cond_16b
    iget-boolean v2, p1, Lcom/twitter/android/provider/m;->x:Z

    if-eqz v2, :cond_85

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->F:I

    invoke-static {v0, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_85

    :cond_179
    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    goto/16 :goto_a7
.end method

.method public final a(Lcom/twitter/android/widget/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->W:Lcom/twitter/android/widget/ai;

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/am;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/am;

    invoke-interface {p1}, Lcom/twitter/android/widget/am;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/widget/TweetView;->U:J

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twitter/android/widget/TweetView;->T:Z

    return-void
.end method

.method public final b()V
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/am;

    invoke-interface {v3, v1}, Lcom/twitter/android/widget/am;->a(Lcom/twitter/android/provider/m;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_19
    if-eqz v1, :cond_2f

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2f
    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->invalidate()V

    goto :goto_a

    :cond_35
    move-object v1, v0

    goto :goto_19
.end method

.method final b(Z)V
    .registers 3

    if-eqz p1, :cond_12

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    :goto_e
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->refreshDrawableState()V

    return-void

    :cond_12
    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    goto :goto_e
.end method

.method final c()V
    .registers 6

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    iget-object v0, v1, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    :goto_a
    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->W:Lcom/twitter/android/widget/ai;

    iget-wide v3, v1, Lcom/twitter/android/provider/m;->n:J

    iget-object v1, v1, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/twitter/android/widget/ai;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected drawableStateChanged()V
    .registers 7

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->d()V

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->R:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_20

    aget-object v4, v2, v0

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->Q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->invalidate()V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_11

    sget-object v1, Lcom/twitter/android/widget/TweetView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->mergeDrawableStates([I[I)[I

    :cond_11
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/twitter/android/widget/TweetView;->b:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->mergeDrawableStates([I[I)[I

    :cond_1c
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->f()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v3

    iget v6, p0, Lcom/twitter/android/widget/TweetView;->K:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_17a

    sget-object v0, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    :goto_37
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/twitter/android/widget/TweetView;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_41

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v0, v6

    add-int v6, v3, v0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17e

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    div-int/lit8 v0, v0, 0x2

    :goto_6c
    sget-object v7, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->m:F

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-eqz v3, :cond_181

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v6

    int-to-float v8, v4

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->n:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    :goto_98
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-eqz v8, :cond_c2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v3, v6

    iget v8, p0, Lcom/twitter/android/widget/TweetView;->x:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v8, p0, Lcom/twitter/android/widget/TweetView;->K:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/twitter/android/widget/TweetView;->p:F

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v3, p0, Lcom/twitter/android/widget/TweetView;->r:I

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c2
    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-eqz v3, :cond_107

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int v0, v5, v0

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->K:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->p:F

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->t:I

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_104

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->x:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v5, v8

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_107
    int-to-float v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-eqz v1, :cond_12d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v6

    int-to-float v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->n:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_12d
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->L:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v6

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->x:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->p:F

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->r:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v7}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    goto/16 :goto_8

    :cond_17a
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_37

    :cond_17e
    move v0, v1

    goto/16 :goto_6c

    :cond_181
    move v3, v1

    move v1, v2

    goto/16 :goto_98
.end method

.method protected onMeasure(II)V
    .registers 26

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    const/high16 v3, 0x4000

    if-ne v5, v3, :cond_1c4

    move/from16 v17, v2

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/m;

    move-object/from16 v22, v0

    if-eqz v22, :cond_24a

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v4, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    sget-object v3, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/widget/TweetView;->K:I

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v7, v5

    add-int v10, v6, v3

    invoke-direct {v8, v7, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/twitter/android/widget/TweetView;->V:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingBottom()I

    move-result v6

    add-int v20, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    sub-int v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-nez v2, :cond_246

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->u:Ljava/lang/String;

    if-eqz v2, :cond_246

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->p:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/TweetView;->u:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/TweetView;->x:I

    add-int/2addr v2, v3

    sub-int v2, v18, v2

    :goto_ae
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_242

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->P:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/TweetView;->x:I

    add-int/2addr v3, v5

    sub-int v16, v2, v3

    :goto_c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-nez v2, :cond_142

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->m:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual/range {v22 .. v22}, Lcom/twitter/android/provider/m;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10b

    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/widget/TweetView;->v:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->w:I

    int-to-float v13, v2

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v9, v4

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/TweetView;->x:I

    add-int/2addr v2, v3

    sub-int v16, v16, v2

    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-nez v2, :cond_142

    if-lez v16, :cond_142

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->p:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    if-nez v2, :cond_1d4

    const-string v6, ""

    :goto_127
    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v9, v4

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    :cond_142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-nez v2, :cond_175

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    if-eqz v2, :cond_175

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->m:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/widget/TweetView;->v:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/TweetView;->w:I

    int-to-float v8, v5

    const/4 v9, 0x0

    move/from16 v5, v18

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    :cond_175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1b2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->p:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->S:Ljava/lang/String;

    new-instance v2, Landroid/text/StaticLayout;

    invoke-static {v3, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1b2
    move/from16 v3, v20

    :goto_1b4
    const/high16 v2, 0x4000

    move/from16 v0, v21

    if-ne v0, v2, :cond_1e9

    move/from16 v2, v19

    :cond_1bc
    :goto_1bc
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/TweetView;->setMeasuredDimension(II)V

    return-void

    :cond_1c4
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getSuggestedMinimumWidth()I

    move-result v3

    const/high16 v6, -0x8000

    if-ne v5, v6, :cond_24d

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_17

    :cond_1d4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_127

    :cond_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-eqz v4, :cond_201

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    :cond_201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-eqz v4, :cond_210

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    :cond_210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_228

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/TweetView;->L:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    :cond_228
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x8000

    move/from16 v0, v21

    if-ne v0, v3, :cond_1bc

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_1bc

    :cond_242
    move/from16 v16, v2

    goto/16 :goto_c3

    :cond_246
    move/from16 v2, v18

    goto/16 :goto_ae

    :cond_24a
    move v3, v4

    goto/16 :goto_1b4

    :cond_24d
    move/from16 v17, v3

    goto/16 :goto_17
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->f()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->W:Lcom/twitter/android/widget/ai;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1f

    if-ne v0, v1, :cond_1d

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    :cond_1d
    move v1, v2

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    packed-switch v0, :pswitch_data_e8

    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1e

    :pswitch_31
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->V:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3d
    if-eqz v0, :cond_44

    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_62

    move v2, v1

    :cond_44
    if-eqz v2, :cond_67

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->aa:Lcom/twitter/android/widget/ak;

    if-nez v0, :cond_57

    new-instance v0, Lcom/twitter/android/widget/ak;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/ak;-><init>(Lcom/twitter/android/widget/TweetView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->aa:Lcom/twitter/android/widget/ak;

    :cond_57
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->aa:Lcom/twitter/android/widget/ak;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/android/widget/TweetView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    :cond_62
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3d

    :cond_67
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    goto :goto_1e

    :cond_6b
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    goto :goto_2c

    :pswitch_75
    iget v0, p0, Lcom/twitter/android/widget/TweetView;->ac:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_bb

    move v0, v1

    :goto_7c
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v3

    if-nez v3, :cond_84

    if-eqz v0, :cond_2c

    :cond_84
    if-eqz v0, :cond_89

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    :cond_89
    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->ab:Lcom/twitter/android/widget/aj;

    if-nez v3, :cond_94

    new-instance v3, Lcom/twitter/android/widget/aj;

    invoke-direct {v3, p0}, Lcom/twitter/android/widget/aj;-><init>(Lcom/twitter/android/widget/TweetView;)V

    iput-object v3, p0, Lcom/twitter/android/widget/TweetView;->ab:Lcom/twitter/android/widget/aj;

    :cond_94
    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->ab:Lcom/twitter/android/widget/aj;

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/TweetView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_9f

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->c()V

    :cond_9f
    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->Z:Lcom/twitter/android/widget/al;

    if-nez v3, :cond_aa

    new-instance v3, Lcom/twitter/android/widget/al;

    invoke-direct {v3, p0}, Lcom/twitter/android/widget/al;-><init>(Lcom/twitter/android/widget/TweetView;)V

    iput-object v3, p0, Lcom/twitter/android/widget/TweetView;->Z:Lcom/twitter/android/widget/al;

    :cond_aa
    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->Z:Lcom/twitter/android/widget/al;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/android/widget/TweetView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b6
    :goto_b6
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->g()V

    goto/16 :goto_1e

    :cond_bb
    move v0, v2

    goto :goto_7c

    :cond_bd
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->Z:Lcom/twitter/android/widget/al;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetView;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    goto :goto_b6

    :pswitch_c9
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->V:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->g()V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    goto/16 :goto_1e

    :pswitch_df
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->g()V

    goto/16 :goto_2c

    nop

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_31
        :pswitch_75
        :pswitch_c9
        :pswitch_df
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_12

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    :cond_f
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->g()V

    :cond_12
    return-void
.end method
