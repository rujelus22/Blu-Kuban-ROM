.class Lcom/google/googlenav/ui/bC;
.super Landroid/text/style/ReplacementSpan;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/bC;->a:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/bC;->a:I

    goto :goto_9
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7

    iget v0, p0, Lcom/google/googlenav/ui/bC;->a:I

    return v0
.end method
