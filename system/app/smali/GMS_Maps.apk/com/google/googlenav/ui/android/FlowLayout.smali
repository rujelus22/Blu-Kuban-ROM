.class public Lcom/google/googlenav/ui/android/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:I

.field private final c:I

.field private final d:I

.field private e:Z

.field private f:Lcom/google/googlenav/ui/android/Z;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/android/FlowLayout;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    .line 52
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    .line 53
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    .line 54
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 55
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    .line 59
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    .line 61
    new-instance v0, Lcom/google/googlenav/ui/android/Z;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/Z;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    .line 52
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    .line 53
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    .line 54
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 55
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    .line 66
    const-string v0, "horizontalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    .line 68
    const-string v0, "verticalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    .line 70
    new-instance v0, Lcom/google/googlenav/ui/android/Z;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ui/android/Z;-><init>(Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    .line 52
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    .line 53
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    .line 54
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 55
    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    .line 75
    const-string v0, "horizontalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    .line 77
    const-string v0, "verticalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    .line 79
    new-instance v0, Lcom/google/googlenav/ui/android/Z;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ui/android/Z;-><init>(Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    .line 80
    return-void
.end method

.method private a(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:Z

    if-nez v1, :cond_8

    .line 226
    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 233
    :goto_7
    return v0

    .line 229
    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 230
    :cond_16
    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    add-int/2addr v0, v1

    .line 231
    div-int v1, p1, v0

    .line 232
    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 233
    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iget v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_7
.end method

.method private a()V
    .registers 3

    .prologue
    .line 241
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    .line 242
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    .line 243
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 244
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    .line 245
    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 268
    add-int/2addr v0, p2

    if-gt v0, p3, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 255
    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private b()Landroid/view/View;
    .registers 5

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_1a

    .line 283
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_16

    .line 288
    :goto_15
    return-object v0

    .line 282
    :cond_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 288
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private c()I
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    iget v0, v0, Lcom/google/googlenav/ui/android/Z;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    iget v1, v1, Lcom/google/googlenav/ui/android/Z;->b:I

    if-ne v0, v1, :cond_f

    .line 298
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    iget v0, v0, Lcom/google/googlenav/ui/android/Z;->a:I

    .line 306
    :goto_e
    return v0

    .line 301
    :cond_f
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->E()I

    move-result v0

    .line 302
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->F()I

    move-result v1

    .line 303
    if-le v1, v0, :cond_26

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    iget v0, v0, Lcom/google/googlenav/ui/android/Z;->a:I

    goto :goto_e

    .line 306
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    iget v0, v0, Lcom/google/googlenav/ui/android/Z;->b:I

    goto :goto_e
.end method

.method private c(I)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    .line 272
    add-int/lit8 v0, p1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_16

    move-object v0, v1

    .line 278
    :goto_15
    return-object v0

    .line 272
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 278
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->b(I)I

    move-result v5

    .line 138
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->c()I

    move-result v6

    .line 140
    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(I)I

    move-result v3

    .line 141
    iget v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    .line 145
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2b

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 152
    :cond_2e
    const/4 v1, 0x1

    .line 153
    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_50

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 155
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v8, 0x8

    if-eq v4, v8, :cond_76

    .line 156
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 157
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 158
    add-int v4, v3, v8

    if-le v4, v5, :cond_5d

    .line 160
    if-lt v1, v6, :cond_51

    .line 222
    :cond_50
    :goto_50
    return-void

    .line 165
    :cond_51
    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(I)I

    move-result v3

    .line 166
    iget v4, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iget v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    add-int/2addr v4, v10

    add-int/2addr v2, v4

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_5d
    add-int v4, v3, v8

    iget v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    add-int/2addr v4, v10

    .line 176
    if-lt v1, v6, :cond_6c

    iget-object v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    iget-object v10, v10, Lcom/google/googlenav/ui/android/Z;->c:Lcom/google/googlenav/ui/android/Y;

    sget-object v11, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    if-ne v10, v11, :cond_79

    .line 177
    :cond_6c
    add-int/2addr v8, v3

    add-int/2addr v9, v2

    invoke-virtual {v7, v3, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    .line 153
    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 186
    :cond_79
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->c(I)Landroid/view/View;

    move-result-object v10

    .line 187
    if-eqz v10, :cond_b8

    .line 188
    invoke-direct {p0, v10, v4, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_90

    .line 191
    add-int/2addr v8, v3

    add-int/2addr v9, v2

    invoke-virtual {v7, v3, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    .line 193
    goto :goto_76

    .line 200
    :cond_90
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->b()Landroid/view/View;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0, v4, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 202
    add-int v1, v3, v8

    add-int v5, v2, v9

    invoke-virtual {v7, v3, v2, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    .line 207
    :cond_a6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 209
    add-int/2addr v1, v3

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    .line 216
    :cond_b8
    add-int v0, v3, v8

    add-int v1, v2, v9

    invoke-virtual {v7, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x8

    const/high16 v10, -0x8000

    const/4 v1, 0x0

    .line 84
    sget-boolean v0, Lcom/google/googlenav/ui/android/FlowLayout;->a:Z

    if-nez v0, :cond_15

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->a()V

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->b(I)I

    move-result v5

    .line 89
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->c()I

    move-result v6

    .line 91
    iget v4, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 92
    iget v3, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    move v0, v1

    move v2, v1

    .line 96
    :goto_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_50

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 98
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_4d

    .line 99
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 96
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 104
    :cond_50
    iput v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    .line 108
    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    .line 109
    :goto_55
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7e

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v11, :cond_9a

    .line 112
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    const/high16 v9, 0x4000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 115
    add-int v7, v3, v4

    if-le v7, v5, :cond_96

    .line 117
    if-lt v0, v6, :cond_8c

    .line 131
    :cond_7e
    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    add-int/2addr v0, v1

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->setMeasuredDimension(II)V

    .line 133
    return-void

    .line 122
    :cond_8c
    iget v3, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    .line 123
    iget v7, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iget v8, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_96
    iget v7, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 109
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_55
.end method

.method public setCenterChildren(Z)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:Z

    .line 313
    return-void
.end method

.method public setParams(Lcom/google/googlenav/ui/android/Z;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/Z;

    .line 317
    return-void
.end method
