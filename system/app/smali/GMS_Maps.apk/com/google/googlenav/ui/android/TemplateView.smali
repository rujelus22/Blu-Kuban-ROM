.class public Lcom/google/googlenav/ui/android/TemplateView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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

.field protected h:Lcom/google/googlenav/ui/bd;

.field private final m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:Z

    .line 109
    sget-object v0, Lcom/google/android/apps/maps/R$styleable;->TemplateView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    .line 116
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->d:Landroid/graphics/Paint;

    .line 118
    return-void
.end method

.method private static a(ILandroid/widget/ImageView;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 566
    if-nez p2, :cond_b

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 568
    return-void

    .line 566
    :cond_b
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_7
.end method

.method private a(Lcom/google/googlenav/ui/android/PieLineView;Ljava/lang/CharSequence;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 368
    array-length v0, v3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_49

    .line 369
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v0, v1

    .line 370
    :goto_14
    array-length v2, v3

    if-ge v0, v2, :cond_46

    .line 371
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    if-nez v0, :cond_36

    const/16 v2, 0x365

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    :goto_25
    new-instance v6, Lcom/google/googlenav/ui/android/al;

    aget-object v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7, v5, v2}, Lcom/google/googlenav/ui/android/al;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 372
    :cond_36
    const/16 v2, 0x31f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v1

    invoke-static {v2, v6}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 376
    :cond_46
    invoke-virtual {p1, v4}, Lcom/google/googlenav/ui/android/PieLineView;->setSections(Ljava/util/List;)V

    .line 378
    :cond_49
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bf;I)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-nez p0, :cond_5

    .line 177
    :cond_4
    :goto_4
    return v2

    .line 141
    :cond_5
    if-nez p2, :cond_1f

    .line 142
    iget v0, p1, Lcom/google/googlenav/ui/bd;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 144
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget v0, p1, Lcom/google/googlenav/ui/bd;->l:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 148
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 155
    :cond_1f
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    iget-object v3, p2, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    invoke-static {p0, v0, v3}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 157
    instance-of v0, p0, Lcom/google/googlenav/ui/android/BubbleButton;

    if-eqz v0, :cond_32

    .line 158
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    if-eqz v0, :cond_58

    move v0, v1

    :goto_2f
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 161
    :cond_32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 165
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v3, :cond_3e

    .line 166
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 168
    :cond_3e
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v0, :cond_5a

    .line 170
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget v0, p1, Lcom/google/googlenav/ui/bd;->l:I

    iget v1, p1, Lcom/google/googlenav/ui/bd;->q:I

    invoke-static {v0, p0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ILandroid/widget/ImageView;I)V

    goto :goto_4

    :cond_58
    move v0, v2

    .line 158
    goto :goto_2f

    .line 174
    :cond_5a
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->c:Lcom/google/googlenav/ui/ag;

    if-eqz v0, :cond_4

    move v2, v1

    .line 175
    goto :goto_4
.end method

.method private b(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-virtual {p2}, Lcom/google/googlenav/ui/aW;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 479
    invoke-virtual {p2}, Lcom/google/googlenav/ui/aW;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aW;->f()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aW;->e()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aW;->g()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 488
    :cond_1a
    :goto_1a
    return-void

    .line 481
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

    .line 486
    :cond_33
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1a
.end method

.method private static b(Lcom/google/googlenav/ui/aV;)Z
    .registers 2
    .parameter

    .prologue
    .line 357
    sget-object v0, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/googlenav/ui/aV;->aO:Lcom/google/googlenav/ui/aV;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private g()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    new-instance v1, Lcom/google/googlenav/ui/android/az;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/az;-><init>(Lcom/google/googlenav/ui/android/TemplateView;)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/b;->a(Lcom/google/googlenav/ui/bg;)V

    .line 559
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bd;)I
    .registers 3
    .parameter

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bd;I)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/bd;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bd;IZ)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/bd;IZ)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 474
    :goto_6
    return v2

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 427
    if-eqz p3, :cond_b8

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    if-eqz v0, :cond_b8

    .line 430
    iget-object v8, p1, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    .line 431
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v8, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 432
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-object v3, v8, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    const/4 v7, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    iget-object v6, v8, Lcom/google/googlenav/ui/aW;->f:Lcom/google/googlenav/ui/view/J;

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/aV;ILcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Landroid/widget/TextView;

    .line 436
    iget-object v0, v8, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    .line 437
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 438
    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 439
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    move-object v0, v8

    move v8, v2

    move v2, v7

    .line 442
    :goto_40
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 443
    iget-object v1, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    move v4, v2

    move-object v6, v0

    .line 444
    :goto_4d
    if-ge p2, v11, :cond_82

    .line 445
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/googlenav/ui/aW;

    .line 446
    if-nez v7, :cond_5e

    .line 444
    :cond_5a
    :goto_5a
    add-int/lit8 p2, p2, 0x1

    move-object v6, v7

    goto :goto_4d

    .line 449
    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v7, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 450
    iget-boolean v0, v7, Lcom/google/googlenav/ui/aW;->d:Z

    if-eqz v0, :cond_5a

    .line 451
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bd;->v:Z

    iget-object v3, v7, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    add-int/lit8 v10, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    iget-object v6, v7, Lcom/google/googlenav/ui/aW;->f:Lcom/google/googlenav/ui/view/J;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/aV;ILcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Landroid/widget/TextView;

    move-result-object v0

    .line 455
    invoke-direct {p0, v0, v7}, Lcom/google/googlenav/ui/android/TemplateView;->b(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 457
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    move v4, v10

    goto :goto_5a

    .line 461
    :cond_82
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a7

    .line 463
    if-lez v11, :cond_b6

    .line 465
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    add-int/lit8 v1, v11, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    iget-object v3, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    .line 467
    :goto_98
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bd;->v:Z

    add-int/lit8 v7, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    iget-object v6, v6, Lcom/google/googlenav/ui/aW;->f:Lcom/google/googlenav/ui/view/J;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/aV;ILcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Landroid/widget/TextView;

    move v4, v7

    .line 472
    :cond_a7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    move v2, v8

    .line 474
    goto/16 :goto_6

    :cond_b6
    move-object v3, v9

    goto :goto_98

    :cond_b8
    move v8, v2

    move-object v0, v9

    goto :goto_40
.end method

.method protected a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/aV;ILcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Landroid/widget/TextView;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_26

    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    sget-object v4, Lcom/google/googlenav/ui/aV;->aa:Lcom/google/googlenav/ui/aV;

    if-ne p3, v4, :cond_7d

    .line 238
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    if-ne v4, v5, :cond_7b

    .line 249
    :cond_1f
    :goto_1f
    if-nez v1, :cond_130

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_26
    move-object v1, v3

    .line 255
    :goto_27
    if-nez v1, :cond_45

    .line 256
    sget-object v0, Lcom/google/googlenav/ui/aV;->aa:Lcom/google/googlenav/ui/aV;

    if-ne p3, v0, :cond_b5

    .line 257
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040126

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/PieLineView;

    .line 258
    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 282
    :goto_3f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v1, v0

    .line 284
    :cond_45
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4f

    .line 285
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 288
    :cond_4f
    sget-object v0, Lcom/google/googlenav/ui/aV;->aa:Lcom/google/googlenav/ui/aV;

    if-ne p3, v0, :cond_12b

    move-object v0, v1

    .line 289
    check-cast v0, Lcom/google/googlenav/ui/android/PieLineView;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/android/PieLineView;Ljava/lang/CharSequence;)V

    .line 294
    :goto_59
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:Z

    if-eqz v0, :cond_67

    .line 295
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 296
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 300
    :cond_67
    invoke-virtual {p0, v1, p5, p6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)V

    .line 303
    sget-object v0, Lcom/google/googlenav/ui/aV;->bc:Lcom/google/googlenav/ui/aV;

    if-eq p3, v0, :cond_76

    sget-object v0, Lcom/google/googlenav/ui/aV;->bk:Lcom/google/googlenav/ui/aV;

    if-eq p3, v0, :cond_76

    sget-object v0, Lcom/google/googlenav/ui/aV;->aW:Lcom/google/googlenav/ui/aV;

    if-ne p3, v0, :cond_77

    :cond_76
    move p2, v2

    .line 307
    :cond_77
    invoke-virtual {p0, p2, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ZLandroid/widget/TextView;)V

    .line 308
    return-object v1

    :cond_7b
    move v1, v2

    .line 238
    goto :goto_1f

    .line 239
    :cond_7d
    invoke-static {p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/aV;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 240
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto :goto_1f

    .line 241
    :cond_8d
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/aV;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 242
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto :goto_1f

    .line 243
    :cond_9d
    if-eqz p6, :cond_aa

    .line 244
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->l:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto/16 :goto_1f

    .line 246
    :cond_aa
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    if-eq v4, v5, :cond_1f

    move v1, v2

    goto/16 :goto_1f

    .line 259
    :cond_b5
    sget-object v0, Lcom/google/googlenav/ui/aV;->bM:Lcom/google/googlenav/ui/aV;

    if-ne p3, v0, :cond_cd

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040170

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 262
    :cond_cd
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/aV;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 263
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0401ba

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 266
    :cond_e7
    if-eqz p6, :cond_fd

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0401bb

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 273
    :cond_fd
    invoke-static {p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/aV;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0401bd

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 278
    :cond_117
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0401b9

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    sget-object v1, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 291
    :cond_12b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    :cond_130
    move-object v1, v0

    goto/16 :goto_27
.end method

.method public a()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget-object v1, v1, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bf;)V

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget-object v1, v1, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bf;)V

    .line 193
    return-void
.end method

.method protected a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 213
    :cond_8
    :goto_8
    return-void

    .line 202
    :cond_9
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->d:Lcom/google/googlenav/ui/af;

    if-eqz v0, :cond_31

    .line 203
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->d:Lcom/google/googlenav/ui/af;

    iget-object v1, p2, Lcom/google/googlenav/ui/bf;->c:Lcom/google/googlenav/ui/ag;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    .line 209
    :goto_15
    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget v0, v0, Lcom/google/googlenav/ui/bd;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget v0, v0, Lcom/google/googlenav/ui/bd;->l:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget v1, v1, Lcom/google/googlenav/ui/bd;->q:I

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ILandroid/widget/ImageView;I)V

    goto :goto_8

    .line 204
    :cond_31
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p2, Lcom/google/googlenav/ui/bf;->a:LS/f;

    goto :goto_15
.end method

.method protected a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 589
    if-eqz p2, :cond_20

    iget-object v0, p2, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 590
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 591
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 593
    :cond_14
    invoke-static {p2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    :goto_1f
    return-void

    .line 596
    :cond_20
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f
.end method

.method protected a(Landroid/widget/TextView;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 323
    if-eqz p2, :cond_22

    if-eqz p3, :cond_22

    .line 324
    invoke-static {p1, p2, p3}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 325
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_15

    .line 326
    const v1, 0x7f020299

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 334
    :cond_15
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 348
    :cond_21
    :goto_21
    return-void

    .line 335
    :cond_22
    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 340
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 341
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 342
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 344
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_21

    .line 345
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_21
.end method

.method protected a(Landroid/widget/TextView;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 610
    if-eqz p2, :cond_1f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_d
    move v3, v2

    .line 611
    :goto_e
    if-ge v3, v1, :cond_21

    .line 612
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 611
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_1f
    move v1, v2

    .line 610
    goto :goto_d

    .line 614
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3c

    .line 615
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 616
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 618
    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    :goto_3b
    return-void

    .line 621
    :cond_3c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3b
.end method

.method protected a(ZLandroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 381
    if-nez p1, :cond_b

    .line 382
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 383
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 388
    :goto_a
    return-void

    .line 385
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_a
.end method

.method a(Lcom/google/googlenav/ui/aV;)Z
    .registers 3
    .parameter

    .prologue
    .line 312
    sget-object v0, Lcom/google/googlenav/ui/aV;->bn:Lcom/google/googlenav/ui/aV;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/google/googlenav/ui/aV;->bo:Lcom/google/googlenav/ui/aV;

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Lcom/google/googlenav/ui/bd;
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    return-object v0
.end method

.method protected c()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected d()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 123
    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f10004f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    .line 126
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->z:Lcom/google/googlenav/ui/view/K;

    if-eqz v0, :cond_2a

    .line 649
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->z:Lcom/google/googlenav/ui/view/K;

    new-instance v1, Lcom/google/googlenav/ui/view/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bd;->i()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bd;->j()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/K;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 653
    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 660
    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_95

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_95

    .line 661
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3f
    if-ltz v3, :cond_72

    .line 662
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 663
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_6e

    .line 664
    check-cast v0, Landroid/widget/TextView;

    .line 665
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 666
    const/4 v2, 0x0

    .line 667
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_58
    if-ltz v1, :cond_65

    .line 668
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 667
    add-int/lit8 v1, v1, -0x1

    goto :goto_58

    .line 670
    :cond_65
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 661
    :cond_6e
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3f

    .line 673
    :cond_72
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 676
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7e
    if-ltz v1, :cond_95

    .line 677
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 678
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_91

    .line 679
    check-cast v0, Landroid/widget/TextView;

    .line 680
    iget v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 676
    :cond_91
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7e

    .line 684
    :cond_95
    return-void
.end method

.method public setCenterAlignText(Z)V
    .registers 2
    .parameter

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:Z

    .line 492
    return-void
.end method

.method public setTemplateContent(Lcom/google/googlenav/ui/bd;)V
    .registers 7
    .parameter

    .prologue
    const/16 v1, 0x35

    const/4 v4, 0x0

    .line 495
    iput-object p1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    .line 497
    if-eqz p1, :cond_48

    iget v0, p1, Lcom/google/googlenav/ui/bd;->r:I

    if-eq v0, v1, :cond_48

    .line 498
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    if-eqz v0, :cond_17

    .line 499
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateView;->g()V

    .line 503
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bd;

    if-eq v0, p1, :cond_17

    .line 544
    :goto_16
    return-void

    .line 507
    :cond_17
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bd;)I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    invoke-static {v1, p1, v2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bf;I)Z

    move-result v1

    .line 512
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    invoke-static {v2, p1, v3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bf;I)Z

    move-result v0

    or-int/2addr v0, v1

    .line 515
    if-eqz v0, :cond_31

    .line 516
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    .line 522
    :cond_31
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    .line 528
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    array-length v0, v0

    if-nez v0, :cond_44

    .line 530
    invoke-static {p0, p1}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 533
    :cond_44
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_16

    .line 535
    :cond_48
    if-eqz p1, :cond_51

    iget v0, p1, Lcom/google/googlenav/ui/bd;->r:I

    if-ne v0, v1, :cond_51

    .line 540
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setMinimumHeight(I)V

    .line 542
    :cond_51
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_16
.end method
