.class public LAR;
.super Ljava/lang/Object;
.source "ParagraphSpacingSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;
.implements Landroid/text/style/UpdateLayout;


# instance fields
.field private final a:D

.field private final a:LwH;

.field private final b:D

.field private final c:D


# direct methods
.method public constructor <init>(DDDLwH;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, LAR;->a:D

    .line 30
    iput-wide p3, p0, LAR;->b:D

    .line 31
    const-wide/high16 v0, 0x3ff0

    sub-double v0, p5, v0

    iput-wide v0, p0, LAR;->c:D

    .line 32
    iput-object p7, p0, LAR;->a:LwH;

    .line 33
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, v0, v1

    move-object v0, p1

    .line 40
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 41
    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 43
    if-ne p2, v0, :cond_26

    .line 44
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-double v3, v0

    iget-wide v5, p0, LAR;->a:D

    iget-object v0, p0, LAR;->a:LwH;

    invoke-interface {v0}, LwH;->a()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 48
    :cond_26
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-double v3, v0

    iget-wide v5, p0, LAR;->c:D

    int-to-double v0, v1

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 50
    if-ne p3, v2, :cond_44

    .line 51
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-double v0, v0

    iget-wide v2, p0, LAR;->b:D

    iget-object v4, p0, LAR;->a:LwH;

    invoke-interface {v4}, LwH;->a()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 53
    :cond_44
    return-void
.end method
