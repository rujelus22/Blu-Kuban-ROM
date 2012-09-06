.class public Lcom/google/googlenav/ui/android/GridFlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/google/googlenav/ui/android/GridFlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/android/GridFlowLayout;->a:Z

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

    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->c:I

    .line 44
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->d:I

    .line 45
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    .line 46
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->f:I

    .line 50
    new-instance v0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->c:I

    .line 44
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->d:I

    .line 45
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    .line 46
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->f:I

    .line 55
    new-instance v0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->c:I

    .line 44
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->d:I

    .line 45
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    .line 46
    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->f:I

    .line 60
    new-instance v0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    .line 61
    return-void
.end method

.method private a(I)I
    .registers 6
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x1

    .line 139
    iget-object v1, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v1

    sub-int v1, p1, v1

    .line 140
    if-gez v1, :cond_d

    .line 142
    const/4 v0, 0x0

    .line 146
    :goto_c
    return v0

    .line 144
    :cond_d
    iget-object v2, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->d(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 146
    goto :goto_c
.end method

.method private a()V
    .registers 3

    .prologue
    .line 154
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->c:I

    .line 155
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->d:I

    .line 156
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    .line 157
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->f:I

    .line 158
    return-void
.end method

.method private b()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 172
    move v1, v0

    .line 173
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_16

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 173
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_19
    return v1
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->f:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->b(I)I

    move-result v0

    .line 105
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->a(I)I

    move-result v5

    .line 106
    if-nez v5, :cond_e

    .line 134
    :cond_d
    return-void

    .line 111
    :cond_e
    iget-object v2, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v2

    mul-int/2addr v2, v5

    add-int/lit8 v3, v5, -0x1

    iget-object v4, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v4}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->d(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 113
    sub-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    .line 115
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    add-int v2, v0, v6

    .line 116
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->c:I

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 119
    :goto_2c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_d

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 121
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_74

    .line 122
    if-lt v2, v5, :cond_53

    .line 124
    iget v2, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->e:I

    add-int v4, v2, v6

    .line 125
    iget-object v2, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->a(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v2

    iget-object v8, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v8}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->b(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v8

    add-int/2addr v2, v8

    add-int/2addr v3, v2

    move v2, v1

    .line 129
    :cond_53
    iget-object v8, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v8}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v9}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->a(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v4, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 130
    iget-object v7, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v7}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v7

    iget-object v8, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v8}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->d(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 119
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 68
    sget-boolean v0, Lcom/google/googlenav/ui/android/GridFlowLayout;->a:Z

    if-nez v0, :cond_12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->a()V

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 73
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/GridFlowLayout;->b(I)I

    move-result v0

    .line 75
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->a(I)I

    move-result v2

    .line 76
    if-nez v2, :cond_24

    .line 96
    :goto_23
    return-void

    .line 80
    :cond_24
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->b()I

    move-result v0

    div-int/2addr v0, v2

    .line 81
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->b()I

    move-result v3

    mul-int/2addr v2, v0

    if-le v3, v2, :cond_32

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    :cond_32
    iget v2, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->c:I

    iget-object v3, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->a(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->b(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->d:I

    add-int/2addr v2, v0

    .line 88
    const/4 v0, 0x0

    :goto_4a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_76

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_73

    .line 91
    iget-object v4, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v4}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    invoke-static {v5}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->a(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 88
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 95
    :cond_76
    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/android/GridFlowLayout;->setMeasuredDimension(II)V

    goto :goto_23
.end method

.method public setParams(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/googlenav/ui/android/GridFlowLayout;->b:Lcom/google/googlenav/ui/android/GridFlowLayout$Params;

    .line 184
    return-void
.end method
