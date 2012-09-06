.class public LEm;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextFormatingSpan.java"


# instance fields
.field private final a:I

.field private final a:LEn;

.field private final a:Landroid/content/res/ColorStateList;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final b:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 59
    iput-object p1, p0, LEm;->a:Ljava/lang/String;

    .line 60
    iput p2, p0, LEm;->a:I

    .line 61
    iput p3, p0, LEm;->b:I

    .line 62
    iput-object p4, p0, LEm;->a:Landroid/content/res/ColorStateList;

    .line 63
    iput-object p5, p0, LEm;->b:Landroid/content/res/ColorStateList;

    .line 64
    iput-object p6, p0, LEm;->a:LEn;

    .line 65
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, LEm;->b:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0, p1}, LEm;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 111
    iget-object v0, p0, LEm;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_13

    .line 112
    iget-object v0, p0, LEm;->a:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 115
    :cond_13
    iget-object v0, p0, LEm;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    .line 116
    iget-object v0, p0, LEm;->a:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 118
    :cond_21
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 8
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LEm;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    iget v0, p0, LEm;->a:I

    if-eqz v0, :cond_3b

    .line 123
    :cond_8
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 124
    const/4 v0, 0x0

    .line 126
    if-eqz v1, :cond_13

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 130
    :cond_13
    iget v2, p0, LEm;->a:I

    or-int/2addr v2, v0

    .line 132
    iget-object v0, p0, LEm;->a:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 133
    iget-object v0, p0, LEm;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 140
    :goto_20
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    .line 142
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2f

    .line 143
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 146
    :cond_2f
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_38

    .line 147
    const/high16 v1, -0x4180

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 150
    :cond_38
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 153
    :cond_3b
    iget v0, p0, LEm;->b:I

    if-lez v0, :cond_4f

    .line 154
    iget v0, p0, LEm;->b:I

    int-to-double v0, v0

    iget-object v2, p0, LEm;->a:LEn;

    iget-wide v2, v2, LEn;->b:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 157
    :cond_4f
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-long v0, v0

    iget-object v2, p0, LEm;->a:LEn;

    iget-wide v2, v2, LEn;->a:D

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 158
    return-void

    .line 134
    :cond_65
    if-nez v1, :cond_6c

    .line 135
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_20

    .line 137
    :cond_6c
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_20
.end method
