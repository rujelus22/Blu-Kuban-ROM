.class Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;
.super Ljava/lang/Object;
.source "SwypeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/SwypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpecialTextAdjuster"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method adjustTextPosition(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)Z
    .registers 11
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "fontMetric"
    .parameter "paint"

    .prologue
    const/4 v4, 0x1

    .line 852
    iput p2, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->x:I

    .line 853
    iput p3, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    .line 854
    iput-object p1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    .line 856
    iget v1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v0, v1, v2

    .line 857
    .local v0, font_height:I
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 859
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    div-int/lit8 v2, v0, 0x5

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    move v1, v4

    .line 902
    :goto_1d
    return v1

    .line 861
    :cond_1e
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 863
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    div-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    move v1, v4

    .line 864
    goto :goto_1d

    .line 865
    :cond_2f
    const-string v1, "\u00a1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 867
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    div-int/lit8 v2, v0, 0x5

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    move v1, v4

    .line 868
    goto :goto_1d

    .line 869
    :cond_40
    const-string v1, "\u3001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 871
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->x:I

    int-to-float v1, v1

    const-string v2, "\u3001"

    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->x:I

    move v1, v4

    .line 872
    goto :goto_1d

    .line 873
    :cond_5a
    const-string v1, "\u2026"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 875
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->x:I

    int-to-float v1, v1

    const-string v2, "\u2026"

    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->x:I

    move v1, v4

    .line 876
    goto :goto_1d

    .line 877
    :cond_74
    const-string v1, "\u0302"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 878
    const-string v1, "\u02c6"

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    move v1, v4

    .line 879
    goto :goto_1d

    .line 880
    :cond_82
    const-string v1, "\u031b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 881
    const-string v1, ","

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    .line 883
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    move v1, v4

    .line 884
    goto :goto_1d

    .line 885
    :cond_99
    const-string v1, "\u0306"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 886
    const-string v1, "\u02d8"

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    move v1, v4

    .line 887
    goto/16 :goto_1d

    .line 888
    :cond_a8
    const-string v1, "\u0304"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 889
    const-string v1, "\u00af"

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    move v1, v4

    .line 890
    goto/16 :goto_1d

    .line 891
    :cond_b7
    const-string v1, "\u06d4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 892
    const-string v1, "."

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    move v1, v4

    .line 893
    goto/16 :goto_1d

    .line 894
    :cond_c6
    const-string v1, "\u0625"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    const-string v1, "\u0623"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    const-string v1, "\u0622"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 899
    :cond_de
    iget v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    div-int/lit8 v2, v0, 0xa

    add-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    move v1, v4

    .line 900
    goto/16 :goto_1d

    .line 902
    :cond_e8
    const/4 v1, 0x0

    goto/16 :goto_1d
.end method
