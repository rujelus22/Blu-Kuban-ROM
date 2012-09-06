.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/av;


# static fields
.field private static final m:[I

.field private static final n:[I

.field private static final p:Landroid/support/v4/view/z;


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private final l:Landroid/support/v4/view/y;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->m:[I

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->n:[I

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    .line 97
    new-instance v0, Landroid/support/v4/view/ab;

    invoke-direct {v0}, Landroid/support/v4/view/ab;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->p:Landroid/support/v4/view/z;

    .line 101
    :goto_20
    return-void

    .line 99
    :cond_21
    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0}, Landroid/support/v4/view/aa;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->p:Landroid/support/v4/view/z;

    goto :goto_20

    .line 61
    nop

    :array_2a
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0xaft 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    .line 52
    const/high16 v1, -0x4080

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    .line 59
    new-instance v1, Landroid/support/v4/view/y;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/view/y;-><init>(Landroid/support/v4/view/PagerTitleStrip;B)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/y;

    .line 114
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 115
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 118
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->m:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 120
    if-eqz v2, :cond_4c

    .line 121
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 122
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 123
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 125
    :cond_4c
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 126
    if-eqz v3, :cond_57

    .line 127
    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 129
    :cond_57
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 130
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 131
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :cond_70
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/PagerTitleStrip;->i:I

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    .line 139
    const v1, 0x3f19999a

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 141
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    if-eqz v2, :cond_b2

    .line 147
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->n:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 149
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    :cond_b2
    if-eqz v0, :cond_d4

    .line 153
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/widget/TextView;)V

    .line 154
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/widget/TextView;)V

    .line 155
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/widget/TextView;)V

    .line 162
    :goto_c3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 163
    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    .line 164
    return-void

    .line 157
    :cond_d4
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 158
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_c3
.end method

.method private static a(Landroid/widget/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->p:Landroid/support/v4/view/z;

    invoke-interface {v0, p0}, Landroid/support/v4/view/z;->a(Landroid/widget/TextView;)V

    .line 105
    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_b

    .line 459
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 461
    :cond_b
    return v0
.end method

.method a(IFZ)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_127

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/v;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/v;)V

    .line 333
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->k:Z

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 338
    div-int/lit8 v4, v3, 0x2

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v8

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v9

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v10

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    .line 346
    add-int v2, v9, v4

    .line 347
    add-int v13, v10, v4

    .line 348
    sub-int v2, v7, v2

    sub-int v14, v2, v13

    .line 350
    const/high16 v2, 0x3f00

    add-float v2, v2, p2

    .line 351
    const/high16 v15, 0x3f80

    cmpl-float v15, v2, v15

    if-lez v15, :cond_63

    .line 352
    const/high16 v15, 0x3f80

    sub-float/2addr v2, v15

    .line 354
    :cond_63
    sub-int v13, v7, v13

    int-to-float v14, v14

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sub-int v2, v13, v2

    .line 355
    sub-int v13, v2, v4

    .line 356
    add-int v14, v13, v3

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v4

    .line 361
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 362
    sub-int v2, v15, v2

    .line 363
    sub-int v3, v15, v3

    .line 364
    sub-int/2addr v15, v4

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v3

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v15

    .line 368
    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->i:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x70

    .line 376
    sparse-switch v16, :sswitch_data_148

    .line 379
    add-int v4, v11, v2

    .line 380
    add-int v2, v11, v3

    .line 381
    add-int v3, v11, v15

    .line 398
    :goto_d1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v8, v13, v2, v14, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 401
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    sub-int v2, v13, v2

    sub-int/2addr v2, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 402
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    add-int/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v2, v4, v5, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 405
    sub-int v2, v7, v10

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    add-int/2addr v4, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    add-int v5, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 410
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->g:F

    .line 411
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->k:Z

    .line 412
    :goto_126
    return-void

    .line 329
    :cond_127
    if-nez p3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_17

    goto :goto_126

    .line 384
    :sswitch_132
    sub-int/2addr v8, v11

    sub-int/2addr v8, v12

    .line 385
    sub-int v4, v8, v4

    div-int/lit8 v8, v4, 0x2

    .line 386
    add-int v4, v8, v2

    .line 387
    add-int v2, v8, v3

    .line 388
    add-int v3, v8, v15

    .line 389
    goto :goto_d1

    .line 391
    :sswitch_13f
    sub-int/2addr v8, v12

    sub-int/2addr v8, v4

    .line 392
    add-int v4, v8, v2

    .line 393
    add-int v2, v8, v3

    .line 394
    add-int v3, v8, v15

    goto :goto_d1

    .line 376
    :sswitch_data_148
    .sparse-switch
        0x10 -> :sswitch_132
        0x50 -> :sswitch_13f
    .end sparse-switch
.end method

.method final a(ILandroid/support/v4/view/v;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v1, 0x0

    .line 267
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/support/v4/view/v;->a()I

    .line 268
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Z

    .line 270
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_15

    :cond_15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 288
    int-to-float v0, v0

    const v2, 0x3f4ccccd

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 290
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 291
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 292
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 293
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 295
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    .line 297
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->k:Z

    if-nez v0, :cond_61

    .line 298
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    invoke-virtual {p0, p1, v0, v4}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 301
    :cond_61
    iput-boolean v4, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Z

    .line 302
    return-void
.end method

.method final a(Landroid/support/v4/view/v;Landroid/support/v4/view/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 312
    if-eqz p1, :cond_7

    .line 313
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/y;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/v;->b(Landroid/database/DataSetObserver;)V

    .line 315
    :cond_7
    if-eqz p2, :cond_e

    .line 316
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/y;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/v;->a(Landroid/database/DataSetObserver;)V

    .line 318
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_25

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    .line 320
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    .line 321
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/v;)V

    .line 322
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 324
    :cond_25
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 241
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 247
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/v;

    move-result-object v1

    .line 249
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/y;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/az;)Landroid/support/v4/view/az;

    .line 250
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/y;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ay;)V

    .line 251
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/v;Landroid/support/v4/view/v;)V

    .line 253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 258
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1d

    .line 259
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/v;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/v;Landroid/support/v4/view/v;)V

    .line 260
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/az;)Landroid/support/v4/view/az;

    .line 261
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ay;)V

    .line 262
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    .line 264
    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_17

    .line 450
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_d

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    .line 451
    :cond_d
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 453
    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    .line 416
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 417
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 418
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 419
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 421
    if-eq v0, v9, :cond_1e

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1e
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->a()I

    move-result v0

    .line 427
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 429
    sub-int v5, v3, v4

    .line 431
    int-to-float v6, v2

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 433
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 435
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 436
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 437
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 439
    if-ne v1, v9, :cond_50

    .line 440
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 445
    :goto_4f
    return-void

    .line 442
    :cond_50
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 443
    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_4f
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Z

    if-nez v0, :cond_7

    .line 307
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 309
    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->i:I

    .line 233
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 234
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 5
    .parameter

    .prologue
    .line 189
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->o:I

    .line 190
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->o:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 191
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    return-void
.end method

.method public setTextColor(I)V
    .registers 5
    .parameter

    .prologue
    .line 202
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    .line 203
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->o:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 205
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    .line 173
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 174
    return-void
.end method
