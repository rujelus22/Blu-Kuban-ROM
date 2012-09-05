.class public final Lcom/google/android/youtube/app/ui/GlowingButton;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final c:[Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/BlurMaskFilter;

    sput-object v0, Lcom/google/android/youtube/app/ui/GlowingButton;->c:[Landroid/graphics/BlurMaskFilter;

    .line 29
    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lcom/google/android/youtube/app/ui/GlowingButton;->c:[Landroid/graphics/BlurMaskFilter;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 30
    sget-object v1, Lcom/google/android/youtube/app/ui/GlowingButton;->c:[Landroid/graphics/BlurMaskFilter;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 32
    :cond_1e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->b:Landroid/graphics/Rect;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/GlowingButton;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/GlowingButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/GlowingButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 58
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    const v2, -0x3ebdbe

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getTotalPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getBaseline()I

    move-result v3

    .line 64
    sget-object v4, Lcom/google/android/youtube/app/ui/GlowingButton;->c:[Landroid/graphics/BlurMaskFilter;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v5, :cond_57

    aget-object v6, v4, v0

    .line 65
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 66
    int-to-float v6, v2

    int-to-float v7, v3

    iget-object v8, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 68
    :cond_57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    int-to-float v0, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    :cond_64
    return-void
.end method
