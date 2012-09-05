.class public Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;
.super Landroid/widget/ImageView;
.source "MXSelectedImageView.java"


# static fields
.field private static innerLinePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x3b

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->innerLinePaint:Landroid/graphics/Paint;

    .line 29
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->innerLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 76
    .local v9, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 78
    .local v8, height:I
    int-to-float v4, v8

    sget-object v5, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->innerLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    int-to-float v3, v9

    sget-object v5, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->innerLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    int-to-float v3, v9

    int-to-float v5, v9

    add-int/lit8 v0, v8, 0x1

    int-to-float v6, v0

    sget-object v7, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->innerLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    sget-object v5, Lcom/sec/android/app/myfiles/fileselector/views/MXSelectedImageView;->innerLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method
