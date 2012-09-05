.class public Lcom/google/googlenav/ui/android/TemplateView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;

.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/lang/Object;


# instance fields
.field protected final b:Landroid/text/SpannableStringBuilder;

.field protected final c:Landroid/view/LayoutInflater;

.field protected final d:Landroid/graphics/Paint;

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Lcom/google/googlenav/ui/bl;

.field private final m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:Z

    sget-object v0, Lcom/google/android/apps/maps/b;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(ILandroid/widget/ImageView;I)V
    .registers 4

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    if-nez p2, :cond_b

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :cond_b
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_7
.end method

.method private a(Lcom/google/googlenav/ui/android/PieLineView;Ljava/lang/CharSequence;)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_49

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v0, v1

    :goto_14
    array-length v2, v3

    if-ge v0, v2, :cond_46

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_36

    const/16 v2, 0x2b8

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_25
    new-instance v6, Lcom/google/googlenav/ui/android/S;

    aget-object v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7, v5, v2}, Lcom/google/googlenav/ui/android/S;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_36
    const/16 v2, 0x295

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v1

    invoke-static {v2, v6}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_46
    invoke-virtual {p1, v4}, Lcom/google/googlenav/ui/android/PieLineView;->a(Ljava/util/List;)V

    :cond_49
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bn;I)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v2

    :cond_5
    if-nez p2, :cond_1f

    iget v0, p1, Lcom/google/googlenav/ui/bl;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p1, Lcom/google/googlenav/ui/bl;->l:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_1f
    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v3, p2, Lcom/google/googlenav/ui/bn;->b:Lbb/E;

    invoke-static {p0, v0, v3}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    instance-of v0, p0, Lcom/google/googlenav/ui/android/BubbleButton;

    if-eqz v0, :cond_32

    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->b:Lbb/E;

    if-eqz v0, :cond_58

    move v0, v1

    :goto_2f
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v3, :cond_3e

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3e
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v0, :cond_5a

    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p1, Lcom/google/googlenav/ui/bl;->l:I

    iget v1, p1, Lcom/google/googlenav/ui/bl;->q:I

    invoke-static {v0, p0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ILandroid/widget/ImageView;I)V

    goto :goto_4

    :cond_58
    move v0, v2

    goto :goto_2f

    :cond_5a
    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->c:Lcom/google/googlenav/ui/aj;

    if-eqz v0, :cond_4

    move v2, v1

    goto :goto_4
.end method

.method private b(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bh;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bh;->e()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bh;->d()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bh;->f()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1a

    :cond_33
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1a
.end method

.method private static b(Lcom/google/googlenav/ui/bg;)Z
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/googlenav/ui/bg;->aM:Lcom/google/googlenav/ui/bg;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->J:Lcom/google/googlenav/ui/b;

    new-instance v1, Lcom/google/googlenav/ui/android/ad;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/ad;-><init>(Lcom/google/googlenav/ui/android/TemplateView;)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/b;->a(Lcom/google/googlenav/ui/bo;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bl;I)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;IZ)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/bl;IZ)I
    .registers 16

    const/4 v9, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    :goto_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p3, :cond_b8

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    if-eqz v0, :cond_b8

    iget-object v8, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v8, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-object v3, v8, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    const/4 v7, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v6, v8, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/bg;ILbb/c;Lbb/E;)Landroid/widget/TextView;

    iget-object v0, v8, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    move-object v0, v8

    move v8, v2

    move v2, v7

    :goto_40
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    move v4, v2

    move-object v6, v0

    :goto_4d
    if-ge p2, v11, :cond_82

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/googlenav/ui/bh;

    if-nez v7, :cond_5e

    :cond_5a
    :goto_5a
    add-int/lit8 p2, p2, 0x1

    move-object v6, v7

    goto :goto_4d

    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v7, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iget-boolean v0, v7, Lcom/google/googlenav/ui/bh;->c:Z

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bl;->v:Z

    iget-object v3, v7, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    add-int/lit8 v10, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v6, v7, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/bg;ILbb/c;Lbb/E;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/google/googlenav/ui/android/TemplateView;->b(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    move v4, v10

    goto :goto_5a

    :cond_82
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a7

    if-lez v11, :cond_b6

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    add-int/lit8 v1, v11, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v3, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    :goto_98
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bl;->v:Z

    add-int/lit8 v7, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v6, v6, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/bg;ILbb/c;Lbb/E;)Landroid/widget/TextView;

    move v4, v7

    :cond_a7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    move v2, v8

    goto/16 :goto_6

    :cond_b6
    move-object v3, v9

    goto :goto_98

    :cond_b8
    move v8, v2

    move-object v0, v9

    goto :goto_40
.end method

.method protected a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/bg;ILbb/c;Lbb/E;)Landroid/widget/TextView;
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Lcom/google/googlenav/ui/bg;->ac:Lcom/google/googlenav/ui/bg;

    if-ne p3, v4, :cond_7d

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    if-ne v4, v5, :cond_7b

    :cond_1f
    :goto_1f
    if-nez v1, :cond_130

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_26
    move-object v1, v3

    :goto_27
    if-nez v1, :cond_45

    sget-object v0, Lcom/google/googlenav/ui/bg;->ac:Lcom/google/googlenav/ui/bg;

    if-ne p3, v0, :cond_b5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e0

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/PieLineView;

    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_3f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v1, v0

    :cond_45
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4f

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4f
    sget-object v0, Lcom/google/googlenav/ui/bg;->ac:Lcom/google/googlenav/ui/bg;

    if-ne p3, v0, :cond_12b

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/android/PieLineView;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/android/PieLineView;Ljava/lang/CharSequence;)V

    :goto_59
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:Z

    if-eqz v0, :cond_67

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_67
    invoke-virtual {p0, v1, p5, p6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lbb/c;Lbb/E;)V

    sget-object v0, Lcom/google/googlenav/ui/bg;->ba:Lcom/google/googlenav/ui/bg;

    if-eq p3, v0, :cond_76

    sget-object v0, Lcom/google/googlenav/ui/bg;->bd:Lcom/google/googlenav/ui/bg;

    if-eq p3, v0, :cond_76

    sget-object v0, Lcom/google/googlenav/ui/bg;->aU:Lcom/google/googlenav/ui/bg;

    if-ne p3, v0, :cond_77

    :cond_76
    move p2, v2

    :cond_77
    invoke-virtual {p0, p2, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ZLandroid/widget/TextView;)V

    return-object v1

    :cond_7b
    move v1, v2

    goto :goto_1f

    :cond_7d
    invoke-static {p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bg;)Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto :goto_1f

    :cond_8d
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bg;)Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto :goto_1f

    :cond_9d
    if-eqz p6, :cond_aa

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->l:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto/16 :goto_1f

    :cond_aa
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto/16 :goto_1f

    :cond_b5
    sget-object v0, Lcom/google/googlenav/ui/bg;->bU:Lcom/google/googlenav/ui/bg;

    if-ne p3, v0, :cond_cd

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03012f

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_cd
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bg;)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03016f

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_e7
    if-eqz p6, :cond_fd

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030170

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_fd
    invoke-static {p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bg;)Z

    move-result v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030171

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_117
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03016e

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_12b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    :cond_130
    move-object v1, v0

    goto/16 :goto_27
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget-object v1, v1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bn;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget-object v1, v1, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bn;)V

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bn;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->d:Lcom/google/googlenav/ui/ai;

    if-eqz v0, :cond_31

    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->d:Lcom/google/googlenav/ui/ai;

    iget-object v1, p2, Lcom/google/googlenav/ui/bn;->c:Lcom/google/googlenav/ui/aj;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    :goto_15
    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->l:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget v1, v1, Lcom/google/googlenav/ui/bl;->q:I

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ILandroid/widget/ImageView;I)V

    goto :goto_8

    :cond_31
    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    goto :goto_15
.end method

.method protected a(Landroid/widget/TextView;Lbb/c;Lbb/E;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_22

    if-eqz p3, :cond_22

    invoke-static {p1, p2, p3}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_15

    const v1, 0x7f020238

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_15
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_21
.end method

.method protected a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V
    .registers 5

    if-eqz p2, :cond_20

    iget-object v0, p2, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_14
    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1f
    return-void

    :cond_20
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f
.end method

.method protected a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;Lbb/c;)V
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lbb/c;Lbb/E;)V

    goto :goto_4
.end method

.method protected a(Landroid/widget/TextView;Ljava/util/List;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_d
    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_21

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_1f
    move v1, v2

    goto :goto_d

    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3c

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3b
    return-void

    :cond_3c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3b
.end method

.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 7

    const/16 v1, 0x35

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    if-eqz p1, :cond_48

    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    if-eq v0, v1, :cond_48

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->J:Lcom/google/googlenav/ui/b;

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateView;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    if-eq v0, p1, :cond_17

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    invoke-static {v1, p1, v2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bn;I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    invoke-static {v2, p1, v3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bn;I)Z

    move-result v0

    or-int/2addr v0, v1

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    :cond_31
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v0, v0

    if-nez v0, :cond_44

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V

    :cond_44
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_16

    :cond_48
    if-eqz p1, :cond_51

    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    if-ne v0, v1, :cond_51

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setMinimumHeight(I)V

    :cond_51
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_16
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:Z

    return-void
.end method

.method protected a(ZLandroid/widget/TextView;)V
    .registers 4

    if-nez p1, :cond_b

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_a
.end method

.method a(Lcom/google/googlenav/ui/bg;)Z
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/bg;->q:Lcom/google/googlenav/ui/bg;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/google/googlenav/ui/bg;->bi:Lcom/google/googlenav/ui/bg;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/google/googlenav/ui/bg;->bk:Lcom/google/googlenav/ui/bg;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/google/googlenav/ui/bg;->bl:Lcom/google/googlenav/ui/bg;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;I)I

    move-result v0

    return v0
.end method

.method public b()Lcom/google/googlenav/ui/bl;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    return-object v0
.end method

.method protected c()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected d()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0f0029

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    const v0, 0x7f0f0002

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    const v0, 0x7f0f002b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->e()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->z:Lbb/F;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->z:Lbb/F;

    new-instance v1, Lbb/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bl;->j()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lbb/a;-><init>(II)V

    invoke-interface {v0, v1}, Lbb/F;->a(Lbb/E;)Z

    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_95

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3f
    if-ltz v3, :cond_72

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_6e

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_58
    if-ltz v1, :cond_65

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_58

    :cond_65
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_6e
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3f

    :cond_72
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7e
    if-ltz v1, :cond_95

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_91

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_91
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7e

    :cond_95
    return-void
.end method
