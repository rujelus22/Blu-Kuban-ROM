.class Lcom/google/googlenav/ui/bt;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 3792
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 3794
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/bt;->a:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    .line 3798
    :goto_9
    return-void

    .line 3795
    :catch_a
    move-exception v0

    .line 3796
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/bt;->a:I

    goto :goto_9
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10
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
    .line 3804
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3809
    iget v0, p0, Lcom/google/googlenav/ui/bt;->a:I

    return v0
.end method
