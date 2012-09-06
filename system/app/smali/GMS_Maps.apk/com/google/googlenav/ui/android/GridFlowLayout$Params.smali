.class public Lcom/google/googlenav/ui/android/GridFlowLayout$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x4

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    sget-object v0, Lcom/google/android/apps/maps/R$styleable;->GridFlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->a:I

    .line 224
    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->b:I

    .line 227
    const/4 v1, 0x2

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c:I

    .line 230
    const/4 v1, 0x3

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->d:I

    .line 233
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I
    .registers 2
    .parameter

    .prologue
    .line 189
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I
    .registers 2
    .parameter

    .prologue
    .line 189
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->d:I

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I
    .registers 2
    .parameter

    .prologue
    .line 189
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->a:I

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/GridFlowLayout$Params;)I
    .registers 2
    .parameter

    .prologue
    .line 189
    iget v0, p0, Lcom/google/googlenav/ui/android/GridFlowLayout$Params;->c:I

    return v0
.end method
