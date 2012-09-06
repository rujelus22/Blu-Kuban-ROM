.class public Lcom/google/android/apps/translate/ExtTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ExtTypefaceSpan.java"


# instance fields
.field private mIsChangeTextSize:Z

.field private mTextSize:F

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "typeface"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translate/ExtTypefaceSpan;->set(Landroid/graphics/Typeface;F)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;F)V
    .registers 4
    .parameter "typeface"
    .parameter "textSize"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/translate/ExtTypefaceSpan;->set(Landroid/graphics/Typeface;F)V

    .line 35
    return-void
.end method

.method private applyTypeface(Landroid/graphics/Paint;)V
    .registers 6
    .parameter "paint"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 60
    .local v1, old:Landroid/graphics/Typeface;
    if-nez v1, :cond_31

    const/4 v2, 0x0

    .line 61
    .local v2, oldStyle:I
    :goto_7
    iget-object v3, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 63
    .local v0, fake:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_19

    .line 64
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 67
    :cond_19
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_22

    .line 68
    const/high16 v3, -0x4180

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 71
    :cond_22
    iget-boolean v3, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mIsChangeTextSize:Z

    if-eqz v3, :cond_2b

    .line 72
    iget v3, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTextSize:F

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    return-void

    .line 60
    .end local v0           #fake:I
    .end local v2           #oldStyle:I
    :cond_31
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_7
.end method


# virtual methods
.method public set(Landroid/graphics/Typeface;F)V
    .registers 4
    .parameter "typeface"
    .parameter "textSize"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 43
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mIsChangeTextSize:Z

    .line 44
    iput p2, p0, Lcom/google/android/apps/translate/ExtTypefaceSpan;->mTextSize:F

    .line 45
    return-void

    .line 43
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2
    .parameter "ds"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/ExtTypefaceSpan;->applyTypeface(Landroid/graphics/Paint;)V

    .line 50
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 2
    .parameter "paint"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/ExtTypefaceSpan;->applyTypeface(Landroid/graphics/Paint;)V

    .line 55
    return-void
.end method
