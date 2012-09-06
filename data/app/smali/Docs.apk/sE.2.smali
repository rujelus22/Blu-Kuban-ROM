.class LsE;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static a:I

.field private static final a:[I

.field private static final b:[I


# instance fields
.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/RectF;

.field private a:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/view/View;

.field private final a:Landroid/widget/AbsListView;

.field private a:Landroid/widget/BaseAdapter;

.field private a:Landroid/widget/SectionIndexer;

.field a:Ljava/lang/String;

.field private a:LsF;

.field private a:Z

.field private a:[Ljava/lang/Object;

.field private b:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private c:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x4

    sput v0, LsE;->a:I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, LsE;->a:[I

    .line 61
    new-array v0, v2, [I

    sput-object v0, LsE;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, LsE;->h:I

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LsE;->a:Landroid/os/Handler;

    .line 99
    iput-object p2, p0, LsE;->a:Landroid/widget/AbsListView;

    .line 100
    iput-object p3, p0, LsE;->a:Landroid/view/View;

    .line 101
    invoke-direct {p0, p1}, LsE;->a(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method static synthetic a(LsE;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, LsE;->a:Landroid/view/View;

    return-object v0
.end method

.method private a(F)V
    .registers 15
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, LsE;->a:Z

    .line 353
    const/high16 v0, 0x3f80

    int-to-float v1, v7

    div-float/2addr v0, v1

    const/high16 v1, 0x4100

    div-float v8, v0, v1

    .line 354
    iget-object v9, p0, LsE;->a:[Ljava/lang/Object;

    .line 356
    if-eqz v9, :cond_d9

    array-length v0, v9

    const/4 v1, 0x1

    if-le v0, v1, :cond_d9

    .line 357
    array-length v10, v9

    .line 358
    int-to-float v0, v10

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 359
    if-lt v0, v10, :cond_21

    .line 360
    add-int/lit8 v0, v10, -0x1

    .line 364
    :cond_21
    iget-object v1, p0, LsE;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v1, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 374
    add-int/lit8 v5, v0, 0x1

    .line 376
    add-int/lit8 v1, v10, -0x1

    if-ge v0, v1, :cond_148

    .line 377
    iget-object v1, p0, LsE;->a:Landroid/widget/SectionIndexer;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    move v6, v1

    .line 381
    :goto_36
    if-ne v6, v2, :cond_144

    move v1, v2

    move v3, v0

    .line 383
    :goto_3a
    if-lez v3, :cond_13f

    .line 384
    add-int/lit8 v1, v3, -0x1

    .line 385
    iget-object v3, p0, LsE;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v3, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v3

    .line 386
    if-eq v3, v2, :cond_59

    move v2, v3

    move v3, v1

    .line 403
    :goto_48
    add-int/lit8 v4, v5, 0x1

    .line 405
    :goto_4a
    if-ge v4, v10, :cond_60

    iget-object v11, p0, LsE;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v11, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    if-ne v11, v6, :cond_60

    .line 406
    add-int/lit8 v4, v4, 0x1

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 390
    :cond_59
    if-nez v1, :cond_13a

    .line 393
    const/4 v1, 0x0

    move v2, v3

    move v3, v1

    move v1, v0

    .line 394
    goto :goto_48

    .line 412
    :cond_60
    int-to-float v4, v1

    int-to-float v11, v10

    div-float/2addr v4, v11

    .line 413
    int-to-float v5, v5

    int-to-float v10, v10

    div-float/2addr v5, v10

    .line 414
    if-ne v1, v0, :cond_b2

    sub-float v0, p1, v4

    cmpg-float v0, v0, v8

    if-gez v0, :cond_b2

    move v0, v2

    .line 421
    :goto_6f
    add-int/lit8 v1, v7, -0x1

    if-le v0, v1, :cond_137

    add-int/lit8 v0, v7, -0x1

    move v1, v0

    .line 423
    :goto_76
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_be

    .line 424
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 425
    iget v2, p0, LsE;->g:I

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 446
    :goto_8f
    if-ltz v3, :cond_133

    .line 447
    if-nez v9, :cond_112

    .line 448
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sectionIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for null sections. This should be impossible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 417
    :cond_b2
    sub-int v0, v6, v2

    int-to-float v0, v0

    sub-float v1, p1, v4

    mul-float/2addr v0, v1

    sub-float v1, v5, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_6f

    .line 427
    :cond_be
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_d0

    .line 428
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v2, p0, LsE;->g:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_8f

    .line 430
    :cond_d0
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    iget v2, p0, LsE;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_8f

    .line 433
    :cond_d9
    int-to-float v0, v7

    mul-float/2addr v0, p1

    float-to-int v1, v0

    .line 434
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_f7

    .line 435
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 436
    iget v2, p0, LsE;->g:I

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 443
    :goto_f5
    const/4 v3, -0x1

    goto :goto_8f

    .line 438
    :cond_f7
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_109

    .line 439
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v2, p0, LsE;->g:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_f5

    .line 441
    :cond_109
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    iget v2, p0, LsE;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_f5

    .line 451
    :cond_112
    aget-object v0, v9, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsE;->a:Ljava/lang/String;

    .line 452
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_131

    :cond_12a
    array-length v0, v9

    if-ge v3, v0, :cond_131

    const/4 v0, 0x1

    :goto_12e
    iput-boolean v0, p0, LsE;->c:Z

    .line 457
    :goto_130
    return-void

    .line 452
    :cond_131
    const/4 v0, 0x0

    goto :goto_12e

    .line 455
    :cond_133
    const/4 v0, 0x0

    iput-boolean v0, p0, LsE;->c:Z

    goto :goto_130

    :cond_137
    move v1, v0

    goto/16 :goto_76

    :cond_13a
    move v12, v3

    move v3, v1

    move v1, v12

    goto/16 :goto_3a

    :cond_13f
    move v2, v1

    move v3, v0

    move v1, v0

    goto/16 :goto_48

    :cond_144
    move v1, v0

    move v3, v0

    goto/16 :goto_48

    :cond_148
    move v6, v7

    goto/16 :goto_36
.end method

.method private a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_9e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    sget v2, LcR;->scrollbar_handle_accelerated_anim2:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p1, v2}, LsE;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    sget v1, LcR;->menu_submenu_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LsE;->c:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v4, p0, LsE;->a:Z

    .line 163
    invoke-virtual {p0}, LsE;->b()V

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcQ;->fastscroll_overlay_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LsE;->e:I

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LsE;->a:Landroid/graphics/RectF;

    .line 168
    new-instance v0, LsF;

    invoke-direct {v0, p0}, LsF;-><init>(LsE;)V

    iput-object v0, p0, LsE;->a:LsF;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LsE;->a:Landroid/graphics/Paint;

    .line 170
    iget-object v0, p0, LsE;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v0, p0, LsE;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    iget-object v0, p0, LsE;->a:Landroid/graphics/Paint;

    iget v1, p0, LsE;->e:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x1010036

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 177
    iget-object v1, p0, LsE;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, LsE;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iput v3, p0, LsE;->i:I

    .line 181
    invoke-direct {p0}, LsE;->d()V

    .line 182
    return-void

    .line 150
    :array_9e
    .array-data 0x4
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
    .end array-data
.end method

.method private a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p2, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcQ;->fastscroll_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LsE;->c:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcQ;->fastscroll_thumb_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LsE;->b:I

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, LsE;->d:Z

    .line 145
    return-void
.end method

.method private c()V
    .registers 6

    .prologue
    .line 132
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 134
    iget-object v1, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    iget v2, p0, LsE;->c:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, LsE;->b:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    iget-object v0, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 185
    iget v0, p0, LsE;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    sget-object v0, LsE;->a:[I

    .line 187
    :goto_7
    iget-object v1, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 188
    iget-object v1, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    :cond_18
    iget-object v1, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 191
    iget-object v1, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    :cond_29
    return-void

    .line 185
    :cond_2a
    sget-object v0, LsE;->b:[I

    goto :goto_7
.end method

.method private e()V
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 461
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 462
    iget-object v1, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 463
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 464
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, LsE;->i:I

    return v0
.end method

.method a()V
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LsE;->a(I)V

    .line 197
    return-void
.end method

.method public a(I)V
    .registers 8
    .parameter

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_3e

    .line 123
    :goto_3
    :pswitch_3
    iput p1, p0, LsE;->i:I

    .line 124
    invoke-direct {p0}, LsE;->d()V

    .line 125
    return-void

    .line 107
    :pswitch_9
    iget-object v0, p0, LsE;->a:Landroid/os/Handler;

    iget-object v1, p0, LsE;->a:LsF;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, LsE;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 111
    :pswitch_16
    iget v0, p0, LsE;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 112
    invoke-direct {p0}, LsE;->c()V

    .line 116
    :cond_1e
    :pswitch_1e
    iget-object v0, p0, LsE;->a:Landroid/os/Handler;

    iget-object v1, p0, LsE;->a:LsF;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 119
    :pswitch_26
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 120
    iget-object v1, p0, LsE;->a:Landroid/view/View;

    iget v2, p0, LsE;->c:I

    sub-int v2, v0, v2

    iget v3, p0, LsE;->d:I

    iget v4, p0, LsE;->d:I

    iget v5, p0, LsE;->b:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    .line 105
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3
        :pswitch_16
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method a(IIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 263
    iget-object v0, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, LsE;->c:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    iget v3, p0, LsE;->b:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    :cond_10
    iget-object v0, p0, LsE;->a:Landroid/graphics/RectF;

    .line 266
    iget v1, p0, LsE;->e:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 267
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, LsE;->e:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 268
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 269
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, LsE;->e:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 270
    iget-object v1, p0, LsE;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_45

    .line 271
    iget-object v1, p0, LsE;->c:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    :cond_45
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 205
    iget v0, p0, LsE;->i:I

    if-nez v0, :cond_8

    .line 250
    :cond_7
    :goto_7
    return-void

    .line 210
    :cond_8
    iget v1, p0, LsE;->d:I

    .line 211
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .line 212
    iget-object v3, p0, LsE;->a:LsF;

    .line 214
    const/4 v0, -0x1

    .line 215
    iget v4, p0, LsE;->i:I

    if-ne v4, v10, :cond_37

    .line 216
    invoke-virtual {v3}, LsF;->a()I

    move-result v0

    .line 217
    const/16 v3, 0x68

    if-ge v0, v3, :cond_26

    .line 218
    iget-object v3, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 220
    :cond_26
    iget v3, p0, LsE;->c:I

    mul-int/2addr v3, v0

    div-int/lit16 v3, v3, 0xd0

    sub-int v3, v2, v3

    .line 221
    iget-object v4, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    iget v5, p0, LsE;->b:I

    invoke-virtual {v4, v3, v9, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    const/4 v3, 0x1

    iput-boolean v3, p0, LsE;->d:Z

    .line 225
    :cond_37
    iget-object v3, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6b

    .line 226
    iget-object v3, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 227
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 228
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    .line 229
    iget-object v5, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 230
    iget v6, p0, LsE;->c:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    .line 231
    iget-object v6, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    add-int/2addr v5, v4

    iget-object v7, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v4, v3, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    iget-object v3, p0, LsE;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    :cond_6b
    int-to-float v3, v1

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget-object v3, p0, LsE;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 238
    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    iget v3, p0, LsE;->i:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_88

    iget-boolean v3, p0, LsE;->c:Z

    if-eqz v3, :cond_88

    .line 242
    iget-object v0, p0, LsE;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, LsE;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_7

    .line 243
    :cond_88
    iget v3, p0, LsE;->i:I

    if-ne v3, v10, :cond_7

    .line 244
    if-nez v0, :cond_93

    .line 245
    invoke-virtual {p0, v9}, LsE;->a(I)V

    goto/16 :goto_7

    .line 247
    :cond_93
    iget-object v0, p0, LsE;->a:Landroid/view/View;

    iget v3, p0, LsE;->c:I

    sub-int v3, v2, v3

    iget v4, p0, LsE;->b:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7
.end method

.method a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, LsE;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    iget-object v0, p0, LsE;->a:Landroid/graphics/Paint;

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 256
    iget-object v2, p0, LsE;->a:Landroid/graphics/RectF;

    .line 257
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, LsE;->e:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sub-float v1, v2, v1

    invoke-virtual {p1, p2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    return-void
.end method

.method a(Landroid/widget/AbsListView;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    iget v0, p0, LsE;->h:I

    if-eq v0, p4, :cond_15

    if-lez p3, :cond_15

    .line 280
    iput p4, p0, LsE;->h:I

    .line 281
    iget v0, p0, LsE;->h:I

    div-int/2addr v0, p3

    sget v3, LsE;->a:I

    if-lt v0, v3, :cond_21

    move v0, v1

    :goto_13
    iput-boolean v0, p0, LsE;->b:Z

    .line 283
    :cond_15
    iget-boolean v0, p0, LsE;->b:Z

    if-nez v0, :cond_23

    .line 284
    iget v0, p0, LsE;->i:I

    if-eqz v0, :cond_20

    .line 285
    invoke-virtual {p0, v2}, LsE;->a(I)V

    .line 310
    :cond_20
    :goto_20
    return-void

    :cond_21
    move v0, v2

    .line 281
    goto :goto_13

    .line 289
    :cond_23
    sub-int v0, p4, p3

    if-lez v0, :cond_4e

    iget v0, p0, LsE;->i:I

    if-eq v0, v5, :cond_4e

    .line 290
    iget v0, p0, LsE;->d:I

    .line 291
    iget-object v3, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget v4, p0, LsE;->b:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, p2

    sub-int v4, p4, p3

    div-int/2addr v3, v4

    iput v3, p0, LsE;->d:I

    .line 293
    iget-boolean v3, p0, LsE;->d:Z

    if-eqz v3, :cond_45

    .line 294
    invoke-direct {p0}, LsE;->c()V

    .line 295
    iput-boolean v2, p0, LsE;->d:Z

    .line 297
    :cond_45
    iget v2, p0, LsE;->d:I

    if-eq v2, v0, :cond_4e

    .line 298
    iget-object v0, p0, LsE;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 301
    :cond_4e
    iput-boolean v1, p0, LsE;->a:Z

    .line 302
    iget v0, p0, LsE;->f:I

    if-eq p2, v0, :cond_20

    .line 305
    iput p2, p0, LsE;->f:I

    .line 306
    iget v0, p0, LsE;->i:I

    if-eq v0, v5, :cond_20

    .line 307
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LsE;->a(I)V

    .line 308
    iget-object v0, p0, LsE;->a:Landroid/os/Handler;

    iget-object v1, p0, LsE;->a:LsF;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20
.end method

.method a()Z
    .registers 2

    .prologue
    .line 200
    iget v0, p0, LsE;->i:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method a(FF)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    iget v1, p0, LsE;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_21

    iget v0, p0, LsE;->d:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_21

    iget v0, p0, LsE;->d:I

    iget v1, p0, LsE;->b:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method a(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 467
    iget v0, p0, LsE;->i:I

    if-lez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LsE;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 469
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LsE;->a(I)V

    .line 470
    const/4 v0, 0x1

    .line 473
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method b()V
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, LsE;->a:Landroid/widget/SectionIndexer;

    .line 326
    instance-of v0, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_1c

    move-object v0, v1

    .line 327
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    iput v0, p0, LsE;->g:I

    .line 328
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 339
    :cond_1c
    instance-of v0, v1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_32

    move-object v0, v1

    .line 340
    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, LsE;->a:Landroid/widget/BaseAdapter;

    .line 341
    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, LsE;->a:Landroid/widget/SectionIndexer;

    .line 342
    iget-object v0, p0, LsE;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LsE;->a:[Ljava/lang/Object;

    .line 348
    :goto_31
    return-void

    .line 345
    :cond_32
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, LsE;->a:Landroid/widget/BaseAdapter;

    .line 346
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    iput-object v0, p0, LsE;->a:[Ljava/lang/Object;

    goto :goto_31
.end method

.method b(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 477
    iget v1, p0, LsE;->i:I

    if-nez v1, :cond_9

    .line 522
    :cond_8
    :goto_8
    return v0

    .line 481
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 483
    if-nez v1, :cond_30

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, LsE;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 485
    invoke-virtual {p0, v4}, LsE;->a(I)V

    .line 486
    iget-object v0, p0, LsE;->a:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_2b

    iget-object v0, p0, LsE;->a:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2b

    .line 487
    invoke-virtual {p0}, LsE;->b()V

    .line 490
    :cond_2b
    invoke-direct {p0}, LsE;->e()V

    move v0, v2

    .line 491
    goto :goto_8

    .line 493
    :cond_30
    if-ne v1, v2, :cond_49

    .line 494
    iget v1, p0, LsE;->i:I

    if-ne v1, v4, :cond_8

    .line 495
    invoke-virtual {p0, v5}, LsE;->a(I)V

    .line 496
    iget-object v0, p0, LsE;->a:Landroid/os/Handler;

    .line 497
    iget-object v1, p0, LsE;->a:LsF;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v1, p0, LsE;->a:LsF;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 499
    goto :goto_8

    .line 501
    :cond_49
    if-ne v1, v5, :cond_8

    .line 502
    iget v1, p0, LsE;->i:I

    if-ne v1, v4, :cond_8

    .line 503
    iget-object v1, p0, LsE;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v4, p0, LsE;->b:I

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0xa

    .line 506
    if-gez v1, :cond_6c

    .line 511
    :goto_61
    iget v1, p0, LsE;->d:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v5, :cond_76

    move v0, v2

    .line 512
    goto :goto_8

    .line 508
    :cond_6c
    iget v0, p0, LsE;->b:I

    add-int/2addr v0, v1

    if-le v0, v3, :cond_8b

    .line 509
    iget v0, p0, LsE;->b:I

    sub-int v0, v3, v0

    goto :goto_61

    .line 514
    :cond_76
    iput v0, p0, LsE;->d:I

    .line 516
    iget-boolean v0, p0, LsE;->a:Z

    if-eqz v0, :cond_88

    .line 517
    iget v0, p0, LsE;->d:I

    int-to-float v0, v0

    iget v1, p0, LsE;->b:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, LsE;->a(F)V

    :cond_88
    move v0, v2

    .line 519
    goto/16 :goto_8

    :cond_8b
    move v0, v1

    goto :goto_61
.end method
