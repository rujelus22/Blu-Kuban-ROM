.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements LaX;


# static fields
.field private static final a:[I


# instance fields
.field private a:F

.field private a:I

.field private final a:LaD;

.field public a:Landroid/support/v4/view/ViewPager;

.field private a:Landroid/widget/TextView;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/TextView;

.field private b:Z

.field private c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:I

    .line 49
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:F

    .line 55
    new-instance v0, LaD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LaD;-><init>(Landroid/support/v4/view/PagerTitleStrip;LaC;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:LaD;

    .line 73
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 77
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 79
    if-eqz v1, :cond_4d

    .line 80
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 82
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_4d
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 85
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 86
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    :cond_66
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 91
    if-eqz v1, :cond_7f

    .line 92
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    :cond_7f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 99
    const/high16 v1, -0x6700

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 107
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 108
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 111
    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:I

    .line 112
    return-void
.end method


# virtual methods
.method public a(IF)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/high16 v11, 0x3f80

    .line 201
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:I

    if-eq p1, v0, :cond_90

    .line 202
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()LaB;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->a(ILaB;)V

    .line 207
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Z

    .line 209
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 210
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 211
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 212
    div-int/lit8 v0, v2, 0x2

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v4

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v5

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v6

    .line 217
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v7

    .line 218
    add-int v8, v5, v0

    .line 219
    add-int v9, v6, v0

    .line 220
    sub-int v0, v4, v8

    sub-int v8, v0, v9

    .line 222
    const/high16 v0, 0x3f00

    add-float/2addr v0, p2

    .line 223
    cmpl-float v10, v0, v11

    if-lez v10, :cond_46

    .line 224
    sub-float/2addr v0, v11

    .line 226
    :cond_46
    sub-int v9, v4, v9

    int-to-float v8, v8

    mul-float/2addr v0, v8

    float-to-int v0, v0

    sub-int v0, v9, v0

    .line 227
    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v0, v8

    .line 228
    add-int/2addr v2, v0

    .line 230
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v8, v0, v7, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 233
    iget v8, p0, Landroid/support/v4/view/PagerTitleStrip;->b:I

    sub-int/2addr v0, v8

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    add-int/2addr v1, v0

    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5, v0, v7, v1, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 237
    sub-int v0, v4, v6

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 239
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    add-int v2, v0, v3

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v1, v0, v7, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 242
    iput p2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:F

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Z

    .line 244
    :goto_8f
    return-void

    .line 203
    :cond_90
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_f

    goto :goto_8f
.end method

.method public a(ILaB;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 142
    if-eqz p2, :cond_81

    invoke-virtual {p2}, LaB;->a()I

    move-result v0

    .line 143
    :goto_9
    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Z

    .line 146
    if-lt p1, v2, :cond_85

    if-eqz p2, :cond_85

    .line 147
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, LaB;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 149
    :goto_15
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_83

    invoke-virtual {p2, p1}, LaB;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_22
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_31

    if-eqz p2, :cond_31

    .line 155
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, LaB;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 157
    :cond_31
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 161
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 162
    int-to-float v0, v0

    const v3, 0x3f4ccccd

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/high16 v3, -0x8000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 164
    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 165
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 166
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 167
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 169
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:I

    .line 171
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Z

    if-nez v0, :cond_7e

    .line 172
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    .line 175
    :cond_7e
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Z

    .line 176
    return-void

    :cond_81
    move v0, v1

    .line 142
    goto :goto_9

    :cond_83
    move-object v2, v3

    .line 151
    goto :goto_22

    :cond_85
    move-object v2, v3

    goto :goto_15
.end method

.method public a(LaB;LaB;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 186
    if-eqz p1, :cond_7

    .line 187
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:LaD;

    invoke-virtual {p1, v0}, LaB;->b(Landroid/database/DataSetObserver;)V

    .line 189
    :cond_7
    if-eqz p2, :cond_e

    .line 190
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:LaD;

    invoke-virtual {p2, v0}, LaB;->a(Landroid/database/DataSetObserver;)V

    .line 192
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_25

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:I

    .line 194
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:F

    .line 195
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILaB;)V

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 198
    :cond_25
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 119
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 125
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()LaB;

    move-result-object v1

    .line 127
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:LaD;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Lbb;)Lbb;

    .line 128
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->a:LaD;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Lba;)V

    .line 129
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(LaB;LaB;)V

    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()LaB;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(LaB;LaB;)V

    .line 136
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lbb;)Lbb;

    .line 137
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lba;)V

    .line 138
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_e

    .line 286
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    .line 288
    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 250
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 251
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 253
    if-eq v0, v8, :cond_1c

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1c
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 261
    if-eqz v4, :cond_27

    .line 262
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 264
    :cond_27
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 265
    sub-int v5, v3, v4

    .line 267
    int-to-float v6, v2

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, -0x8000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 269
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 271
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 272
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 273
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 275
    if-ne v1, v8, :cond_57

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 281
    :goto_56
    return-void

    .line 278
    :cond_57
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 279
    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_56
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Z

    if-nez v0, :cond_7

    .line 181
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 183
    :cond_7
    return-void
.end method
