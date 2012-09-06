.class public LAO;
.super LEm;
.source "KixTextFormatingSpan.java"


# instance fields
.field private a:LwH;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;LwH;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct/range {p0 .. p6}, LEm;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;)V

    .line 25
    iput-object p7, p0, LAO;->a:LwH;

    .line 26
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, LEm;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LAO;->a:LwH;

    invoke-interface {v1}, LwH;->a()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, LEm;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 36
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, LAO;->a:LwH;

    invoke-interface {v1}, LwH;->a()F

    move-result v1

    mul-float/2addr v0, v1

    .line 37
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 38
    return-void
.end method
