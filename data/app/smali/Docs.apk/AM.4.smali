.class public LAM;
.super Landroid/text/style/MetricAffectingSpan;
.source "FootnoteNumberSpan.java"


# instance fields
.field private final a:LEm;


# direct methods
.method public constructor <init>(LEm;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 23
    iput-object p1, p0, LAM;->a:LEm;

    .line 24
    return-void
.end method

.method private a(Landroid/text/TextPaint;)V
    .registers 8
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LAM;->a:LEm;

    invoke-virtual {v0}, LEm;->a()I

    move-result v0

    .line 32
    if-lez v0, :cond_17

    .line 33
    int-to-double v0, v0

    const-wide v2, 0x3fe5555555555555L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 35
    :cond_17
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-long v0, v0

    const-wide/high16 v2, 0x3fe0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 36
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LAM;->a:LEm;

    invoke-virtual {v0, p1}, LEm;->updateDrawState(Landroid/text/TextPaint;)V

    .line 47
    invoke-direct {p0, p1}, LAM;->a(Landroid/text/TextPaint;)V

    .line 48
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, LAM;->a:LEm;

    invoke-virtual {v0, p1}, LEm;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 41
    invoke-direct {p0, p1}, LAM;->a(Landroid/text/TextPaint;)V

    .line 42
    return-void
.end method
