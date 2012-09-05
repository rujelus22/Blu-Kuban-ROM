.class public Lcom/sec/android/app/ve/ui/DurationView;
.super Landroid/widget/TextView;
.source "DurationView.java"


# instance fields
.field mMsg:Ljava/lang/String;

.field private mTextPaintOutline:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mMsg:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/DurationView;->initLabelView()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mMsg:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/DurationView;->initLabelView()V

    .line 26
    return-void
.end method

.method private final initLabelView()V
    .registers 3

    .prologue
    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/DurationView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/DurationView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 33
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/DurationView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/DurationView;->getTextSize()F

    move-result v3

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_1a

    .line 37
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    return-void

    .line 34
    :catch_1a
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationView;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    return-void
.end method
