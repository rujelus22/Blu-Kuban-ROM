.class Lcom/google/googlenav/ui/bv;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private final a:LS/g;

.field private final b:LT/e;


# direct methods
.method public constructor <init>(LS/g;)V
    .registers 4
    .parameter

    .prologue
    .line 3696
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 3694
    new-instance v0, LT/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bv;->b:LT/e;

    .line 3697
    iput-object p1, p0, Lcom/google/googlenav/ui/bv;->a:LS/g;

    .line 3698
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3703
    add-int/lit8 v0, p4, -0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3704
    iget-object v1, p0, Lcom/google/googlenav/ui/bv;->b:LT/e;

    invoke-virtual {v1, p1}, LT/e;->a(Landroid/graphics/Canvas;)V

    .line 3709
    add-int v1, p6, p8

    iget-object v2, p0, Lcom/google/googlenav/ui/bv;->a:LS/g;

    invoke-interface {v2, v0}, LS/g;->b(C)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 3711
    iget-object v2, p0, Lcom/google/googlenav/ui/bv;->a:LS/g;

    iget-object v3, p0, Lcom/google/googlenav/ui/bv;->b:LT/e;

    float-to-int v4, p5

    invoke-interface {v2, v0, v3, v4, v1}, LS/g;->a(CLS/e;II)Z

    .line 3712
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3717
    add-int/lit8 v0, p4, -0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3718
    iget-object v1, p0, Lcom/google/googlenav/ui/bv;->a:LS/g;

    invoke-interface {v1, v0}, LS/g;->c(C)I

    move-result v0

    return v0
.end method
