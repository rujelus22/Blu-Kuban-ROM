.class Lcom/google/googlenav/ui/bE;
.super Landroid/text/style/ReplacementSpan;


# instance fields
.field private final a:Lah/g;

.field private final b:Lai/e;


# direct methods
.method public constructor <init>(Lah/g;)V
    .registers 4

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Lai/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lai/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bE;->b:Lai/e;

    iput-object p1, p0, Lcom/google/googlenav/ui/bE;->a:Lah/g;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 15

    add-int/lit8 v0, p4, -0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bE;->b:Lai/e;

    invoke-virtual {v1, p1}, Lai/e;->a(Landroid/graphics/Canvas;)V

    add-int v1, p6, p8

    iget-object v2, p0, Lcom/google/googlenav/ui/bE;->a:Lah/g;

    invoke-interface {v2, v0}, Lah/g;->b(C)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ui/bE;->a:Lah/g;

    iget-object v3, p0, Lcom/google/googlenav/ui/bE;->b:Lai/e;

    float-to-int v4, p5

    invoke-interface {v2, v0, v3, v4, v1}, Lah/g;->a(CLah/e;II)Z

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 8

    add-int/lit8 v0, p4, -0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bE;->a:Lah/g;

    invoke-interface {v1, v0}, Lah/g;->c(C)I

    move-result v0

    return v0
.end method
