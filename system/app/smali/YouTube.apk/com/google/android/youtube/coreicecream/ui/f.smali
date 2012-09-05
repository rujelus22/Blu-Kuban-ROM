.class final Lcom/google/android/youtube/coreicecream/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xff

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, v5, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/f;->a:[Landroid/graphics/Paint;

    .line 24
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v5, :cond_28

    .line 25
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    mul-int/lit8 v2, v0, 0x40

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 28
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/f;->a:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 30
    :cond_28
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 35
    const/4 v0, 0x0

    move v6, v0

    :goto_b
    const/4 v0, 0x2

    if-ge v6, v0, :cond_2d

    .line 36
    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/f;->a:[Landroid/graphics/Paint;

    aget-object v0, v0, v6

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 37
    int-to-float v2, v6

    int-to-float v3, v7

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 38
    sub-int v0, v8, v6

    int-to-float v2, v0

    int-to-float v3, v7

    sub-int v0, v8, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_b

    .line 40
    :cond_2d
    return-void
.end method
