.class LCM;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static a:[LCM;


# instance fields
.field private a:F

.field private a:I

.field private a:LCm;

.field private a:LCp;

.field private a:Landroid/text/Spanned;

.field private a:Landroid/text/TextPaint;

.field private a:Ljava/lang/CharSequence;

.field private a:Z

.field private a:[C

.field private b:I

.field private final b:Landroid/text/TextPaint;

.field private b:Z

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [LCM;

    sput-object v0, LCM;->a:[LCM;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, LCM;->b:Landroid/text/TextPaint;

    .line 1064
    return-void
.end method

.method private a(IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 44
    .parameter
    .parameter
    .parameter
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
    .line 903
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_2c

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, LCM;->b:Landroid/text/TextPaint;

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 906
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v2 .. v15}, LCM;->a(Landroid/text/TextPaint;IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    .line 978
    :goto_2b
    return v2

    :cond_2c
    move/from16 v6, p2

    move/from16 v10, p7

    .line 915
    :goto_30
    move/from16 v0, p3

    if-ge v6, v0, :cond_185

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, LCM;->b:Landroid/text/TextPaint;

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/Spanned;

    if-nez v2, :cond_77

    move/from16 v14, p3

    move/from16 v16, p4

    .line 954
    :goto_49
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/Spanned;

    if-eqz v2, :cond_51

    if-nez p6, :cond_101

    .line 955
    :cond_51
    if-nez p12, :cond_57

    move/from16 v0, p3

    if-ge v14, v0, :cond_fd

    :cond_57
    const/16 v24, 0x1

    :goto_59
    move-object/from16 v11, p0

    move-object v12, v4

    move v13, v6

    move v15, v6

    move/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, v10

    move/from16 v20, p8

    move/from16 v21, p9

    move/from16 v22, p10

    move-object/from16 v23, p11

    invoke-direct/range {v11 .. v24}, LCM;->a(Landroid/text/TextPaint;IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float v25, v10, v2

    :cond_72
    :goto_72
    move/from16 v6, v16

    move/from16 v10, v25

    .line 915
    goto :goto_30

    .line 924
    :cond_77
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v5, v0, LCM;->a:I

    add-int v5, v5, p4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v3, v5, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:I

    sub-int v16, v2, v3

    .line 927
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_d3

    move/from16 v7, v16

    .line 928
    :goto_9a
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v5, v0, LCM;->a:I

    add-int/2addr v5, v7

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v3, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, LCM;->a:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v5}, LCu;->a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 932
    array-length v3, v2

    if-lez v3, :cond_189

    .line 933
    const/4 v5, 0x0

    .line 934
    const/4 v3, 0x0

    move v8, v3

    move-object v3, v5

    :goto_c3
    array-length v5, v2

    if-ge v8, v5, :cond_da

    .line 935
    aget-object v5, v2, v8

    .line 936
    instance-of v9, v5, Landroid/text/style/ReplacementSpan;

    if-eqz v9, :cond_d6

    move-object v3, v5

    .line 937
    check-cast v3, Landroid/text/style/ReplacementSpan;

    .line 934
    :goto_cf
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_c3

    :cond_d3
    move/from16 v7, p3

    .line 927
    goto :goto_9a

    .line 941
    :cond_d6
    invoke-virtual {v5, v4}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_cf

    .line 945
    :cond_da
    if-eqz v3, :cond_189

    .line 946
    if-nez p12, :cond_e2

    move/from16 v0, p3

    if-ge v7, v0, :cond_fb

    :cond_e2
    const/4 v15, 0x1

    :goto_e3
    move-object/from16 v2, p0

    move/from16 v5, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v2 .. v15}, LCM;->a(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float v25, v10, v2

    .line 949
    goto/16 :goto_72

    .line 946
    :cond_fb
    const/4 v15, 0x0

    goto :goto_e3

    .line 955
    :cond_fd
    const/16 v24, 0x0

    goto/16 :goto_59

    :cond_101
    move/from16 v19, v6

    move/from16 v25, v10

    .line 958
    :goto_105
    move/from16 v0, v19

    if-ge v0, v14, :cond_72

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:I

    add-int v3, v3, v19

    move-object/from16 v0, p0

    iget v5, v0, LCM;->a:I

    add-int/2addr v5, v14

    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v3, v5, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:I

    sub-int v20, v2, v3

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:I

    add-int v3, v3, v19

    move-object/from16 v0, p0

    iget v5, v0, LCM;->a:I

    add-int v5, v5, v20

    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v3, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, LCM;->a:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-static {v2, v3, v5}, LCu;->a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, LCM;->a:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 967
    const/4 v3, 0x0

    :goto_150
    array-length v5, v2

    if-ge v3, v5, :cond_15b

    .line 968
    aget-object v5, v2, v3

    .line 969
    invoke-virtual {v5, v4}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 967
    add-int/lit8 v3, v3, 0x1

    goto :goto_150

    .line 972
    :cond_15b
    if-nez p12, :cond_163

    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_182

    :cond_163
    const/16 v30, 0x1

    :goto_165
    move-object/from16 v17, p0

    move-object/from16 v18, v4

    move/from16 v21, v6

    move/from16 v22, v16

    move/from16 v23, p5

    move-object/from16 v24, p6

    move/from16 v26, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, p11

    invoke-direct/range {v17 .. v30}, LCM;->a(Landroid/text/TextPaint;IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float v25, v25, v2

    move/from16 v19, v20

    .line 958
    goto :goto_105

    .line 972
    :cond_182
    const/16 v30, 0x0

    goto :goto_165

    .line 978
    :cond_185
    sub-float v2, v10, p7

    goto/16 :goto_2b

    :cond_189
    move v14, v7

    goto/16 :goto_49
.end method

.method private a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v12}, LCM;->a(IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private a(LCQ;IIIZFIIIZ)F
    .registers 26
    .parameter
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
    .line 386
    iget v1, p0, LCM;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    const/4 v1, 0x1

    :goto_6
    move/from16 v0, p5

    if-ne v1, v0, :cond_39

    .line 387
    const/4 v7, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, LCM;->a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v14, v1

    .line 388
    add-float v8, p6, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p1

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v13}, LCM;->a(IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move v1, v14

    .line 393
    :goto_36
    return v1

    .line 386
    :cond_37
    const/4 v1, 0x0

    goto :goto_6

    .line 393
    :cond_39
    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v13, p10

    invoke-direct/range {v1 .. v13}, LCM;->a(IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    goto :goto_36
.end method

.method private a(Landroid/text/TextPaint;IIIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 31
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 728
    const/16 v16, 0x0

    .line 730
    sub-int v3, p3, p2

    .line 731
    sub-int v3, p5, p4

    .line 734
    move-object/from16 v0, p0

    iget-boolean v3, v0, LCM;->b:Z

    if-eqz v3, :cond_40

    .line 735
    new-instance v3, LCN;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, LCN;-><init>(LCM;)V

    move-object v14, v3

    .line 760
    :goto_14
    if-nez p13, :cond_20

    if-eqz p7, :cond_55

    move-object/from16 v0, p1

    iget v3, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v3, :cond_20

    if-eqz p6, :cond_55

    .line 761
    :cond_20
    const/4 v3, 0x0

    .line 762
    move-object/from16 v0, p0

    iget v4, v0, LCM;->a:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_49

    move/from16 v4, p2

    .line 763
    :goto_2c
    move/from16 v0, p3

    if-ge v4, v0, :cond_49

    .line 764
    invoke-interface {v14, v4}, LCP;->a(I)C

    move-result v5

    .line 765
    const/16 v6, 0x20

    if-ne v5, v6, :cond_3d

    .line 766
    move-object/from16 v0, p0

    iget v5, v0, LCM;->a:F

    add-float/2addr v3, v5

    .line 763
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 747
    :cond_40
    new-instance v3, LCO;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, LCO;-><init>(LCM;)V

    move-object v14, v3

    goto :goto_14

    .line 770
    :cond_49
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, LCP;->a(Landroid/text/TextPaint;II)F

    move-result v4

    add-float v16, v4, v3

    .line 773
    :cond_55
    if-eqz p12, :cond_5e

    .line 774
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, LCM;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 777
    :cond_5e
    if-eqz p7, :cond_10f

    .line 778
    if-eqz p6, :cond_135

    .line 779
    sub-float v4, p8, v16

    .line 782
    :goto_64
    move-object/from16 v0, p1

    iget v3, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v3, :cond_9b

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v10

    .line 785
    move-object/from16 v0, p1

    iget v3, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 786
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 788
    move/from16 v0, p9

    int-to-float v5, v0

    add-float v6, v4, v16

    move/from16 v0, p11

    int-to-float v7, v0

    move-object/from16 v3, p7

    move-object/from16 v8, p1

    invoke-interface/range {v3 .. v8}, LCQ;->a(FFFFLandroid/graphics/Paint;)V

    .line 790
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 791
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 794
    :cond_9b
    move-object/from16 v0, p0

    iget v3, v0, LCM;->a:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_115

    .line 797
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, LCM;->a:F

    add-float/2addr v5, v3

    .line 800
    if-eqz p6, :cond_f0

    const/4 v3, -0x1

    .line 801
    :goto_b4
    int-to-float v6, v3

    mul-float/2addr v5, v6

    .line 802
    int-to-float v3, v3

    mul-float v15, v5, v3

    move/from16 v7, p2

    move/from16 v6, p2

    move v11, v4

    .line 806
    :goto_be
    move/from16 v0, p3

    if-ge v7, v0, :cond_f2

    .line 807
    invoke-interface {v14, v7}, LCP;->a(I)C

    move-result v3

    .line 808
    const/16 v4, 0x20

    if-ne v3, v4, :cond_ed

    .line 810
    if-ge v6, v7, :cond_ea

    .line 811
    move-object/from16 v0, p1

    iget v3, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v12, p10, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v13, p12

    invoke-direct/range {v3 .. v13}, LCM;->a(LCQ;Landroid/text/TextPaint;IIIIZFILandroid/graphics/Paint$FontMetricsInt;)V

    .line 813
    move-object/from16 v0, p1

    invoke-interface {v14, v0, v6, v7}, LCP;->a(Landroid/text/TextPaint;II)F

    move-result v3

    add-float/2addr v11, v3

    .line 815
    :cond_ea
    add-float/2addr v11, v15

    .line 817
    add-int/lit8 v6, v7, 0x1

    .line 806
    :cond_ed
    add-int/lit8 v7, v7, 0x1

    goto :goto_be

    .line 800
    :cond_f0
    const/4 v3, 0x1

    goto :goto_b4

    .line 821
    :cond_f2
    move/from16 v0, p3

    if-ge v6, v0, :cond_10f

    .line 822
    move-object/from16 v0, p1

    iget v3, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v12, p10, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v13, p12

    invoke-direct/range {v3 .. v13}, LCM;->a(LCQ;Landroid/text/TextPaint;IIIIZFILandroid/graphics/Paint$FontMetricsInt;)V

    .line 832
    :cond_10f
    :goto_10f
    if-eqz p6, :cond_132

    move/from16 v0, v16

    neg-float v3, v0

    :goto_114
    return v3

    .line 827
    :cond_115
    move-object/from16 v0, p1

    iget v3, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v14, p10, v3

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move v13, v4

    move-object/from16 v15, p12

    invoke-direct/range {v5 .. v15}, LCM;->a(LCQ;Landroid/text/TextPaint;IIIIZFILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_10f

    :cond_132
    move/from16 v3, v16

    .line 832
    goto :goto_114

    :cond_135
    move/from16 v4, p8

    goto/16 :goto_64
.end method

.method private a(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIIZLCQ;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 859
    const/4 v10, 0x0

    .line 861
    iget v0, p0, LCM;->a:I

    add-int v3, v0, p4

    .line 862
    iget v0, p0, LCM;->a:I

    add-int v4, v0, p5

    .line 864
    if-nez p13, :cond_f

    if-eqz p7, :cond_1a

    if-eqz p6, :cond_1a

    .line 865
    :cond_f
    iget-object v2, p0, LCM;->a:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v5, p12

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v10, v0

    .line 868
    :cond_1a
    if-eqz p7, :cond_31

    .line 869
    if-eqz p6, :cond_37

    .line 870
    sub-float v5, p8, v10

    .line 872
    :goto_20
    invoke-interface/range {p7 .. p7}, LCQ;->a()Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, LCM;->a:Ljava/lang/CharSequence;

    move-object v0, p1

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 876
    :cond_31
    if-eqz p6, :cond_35

    neg-float v0, v10

    :goto_34
    return v0

    :cond_35
    move v0, v10

    goto :goto_34

    :cond_37
    move/from16 v5, p8

    goto :goto_20
.end method

.method private a(IIIZIZ)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 614
    if-ltz p1, :cond_9

    if-eqz p6, :cond_19

    iget v0, p0, LCM;->b:I

    :goto_7
    if-ne p5, v0, :cond_29

    .line 618
    :cond_9
    if-eqz p6, :cond_1b

    .line 619
    iget-object v0, p0, LCM;->a:Ljava/lang/CharSequence;

    iget v1, p0, LCM;->a:I

    add-int/2addr v1, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, LCM;->a:I

    sub-int v3, v0, v1

    .line 680
    :cond_18
    :goto_18
    return v3

    :cond_19
    move v0, v2

    .line 614
    goto :goto_7

    .line 621
    :cond_1b
    iget-object v0, p0, LCM;->a:Ljava/lang/CharSequence;

    iget v1, p0, LCM;->a:I

    add-int/2addr v1, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, LCM;->a:I

    sub-int v3, v0, v1

    goto :goto_18

    .line 624
    :cond_29
    iget-object v0, p0, LCM;->b:Landroid/text/TextPaint;

    .line 625
    iget-object v1, p0, LCM;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 629
    iget-object v1, p0, LCM;->a:Landroid/text/Spanned;

    if-nez v1, :cond_47

    move v3, p3

    move v2, p2

    .line 666
    :goto_36
    if-eqz p4, :cond_9e

    const/4 v4, -0x1

    .line 676
    :goto_39
    iget-boolean v1, p0, LCM;->b:Z

    if-eqz v1, :cond_a0

    .line 677
    iget-object v1, p0, LCM;->a:[C

    sub-int/2addr v3, v2

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, LCx;->a(Landroid/graphics/Paint;[CIIIIZ)I

    move-result v3

    goto :goto_18

    .line 632
    :cond_47
    if-eqz p6, :cond_8e

    add-int/lit8 v1, p5, 0x1

    .line 633
    :goto_4b
    iget v3, p0, LCM;->a:I

    add-int v4, v3, p3

    .line 635
    :goto_4f
    iget-object v3, p0, LCM;->a:Landroid/text/Spanned;

    iget v5, p0, LCM;->a:I

    add-int/2addr v5, p2

    const-class v6, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v4, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    iget v5, p0, LCM;->a:I

    sub-int/2addr v3, v5

    .line 637
    if-lt v3, v1, :cond_90

    .line 643
    iget-object v1, p0, LCM;->a:Landroid/text/Spanned;

    iget v4, p0, LCM;->a:I

    add-int/2addr v4, p2

    iget v5, p0, LCM;->a:I

    add-int/2addr v5, v3

    const-class v6, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 645
    iget-object v4, p0, LCM;->a:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v1, v4, v5}, LCu;->a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 647
    array-length v4, v1

    if-lez v4, :cond_b6

    .line 648
    const/4 v4, 0x0

    move v5, v2

    .line 649
    :goto_7e
    array-length v2, v1

    if-ge v5, v2, :cond_97

    .line 650
    aget-object v2, v1, v5

    .line 651
    instance-of v6, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v6, :cond_92

    .line 652
    check-cast v2, Landroid/text/style/ReplacementSpan;

    .line 649
    :goto_89
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v2

    goto :goto_7e

    :cond_8e
    move v1, p5

    .line 632
    goto :goto_4b

    :cond_90
    move p2, v3

    .line 640
    goto :goto_4f

    .line 654
    :cond_92
    invoke-virtual {v2, v0}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    move-object v2, v4

    goto :goto_89

    .line 658
    :cond_97
    if-eqz v4, :cond_b6

    .line 661
    if-nez p6, :cond_18

    move v3, p2

    goto/16 :goto_18

    .line 666
    :cond_9e
    const/4 v4, 0x1

    goto :goto_39

    .line 680
    :cond_a0
    iget-object v1, p0, LCM;->a:Ljava/lang/CharSequence;

    iget v5, p0, LCM;->a:I

    add-int/2addr v2, v5

    iget v5, p0, LCM;->a:I

    add-int/2addr v3, v5

    iget v5, p0, LCM;->a:I

    add-int/2addr v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, LCx;->a(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIIIZ)I

    move-result v0

    iget v1, p0, LCM;->a:I

    sub-int v3, v0, v1

    goto/16 :goto_18

    :cond_b6
    move v2, p2

    goto/16 :goto_36
.end method

.method static synthetic a(LCM;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, LCM;->a:I

    return v0
.end method

.method static a()LCM;
    .registers 5

    .prologue
    .line 71
    sget-object v2, LCM;->a:[LCM;

    monitor-enter v2

    .line 72
    :try_start_3
    sget-object v0, LCM;->a:[LCM;

    array-length v0, v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1b

    .line 73
    sget-object v0, LCM;->a:[LCM;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3d

    .line 74
    sget-object v0, LCM;->a:[LCM;

    aget-object v0, v0, v1

    .line 75
    sget-object v3, LCM;->a:[LCM;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 76
    monitor-exit v2

    .line 82
    :goto_1a
    return-object v0

    .line 79
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_3a

    .line 80
    new-instance v0, LCM;

    invoke-direct {v0}, LCM;-><init>()V

    .line 81
    const-string v1, "TLINE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 79
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    move v0, v1

    goto :goto_6
.end method

.method static a(LCM;)LCM;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 93
    iput-object v3, p0, LCM;->a:Ljava/lang/CharSequence;

    .line 94
    iput-object v3, p0, LCM;->a:Landroid/text/Spanned;

    .line 95
    iput-object v3, p0, LCM;->a:[C

    .line 96
    iput-object v3, p0, LCM;->a:Landroid/text/TextPaint;

    .line 97
    iput-object v3, p0, LCM;->a:LCm;

    .line 98
    sget-object v1, LCM;->a:[LCM;

    monitor-enter v1

    .line 99
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    sget-object v2, LCM;->a:[LCM;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 100
    sget-object v2, LCM;->a:[LCM;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    .line 101
    sget-object v2, LCM;->a:[LCM;

    aput-object p0, v2, v0

    .line 105
    :cond_1e
    monitor-exit v1

    .line 106
    return-object v3

    .line 99
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 105
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_23

    throw v0
.end method

.method static synthetic a(LCM;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LCM;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private a(LCQ;Landroid/text/TextPaint;IIIIZFILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 20
    .parameter
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
    .line 997
    iget-boolean v1, p0, LCM;->b:Z

    if-eqz v1, :cond_18

    .line 998
    sub-int v4, p4, p3

    .line 999
    sub-int v1, p6, p5

    .line 1001
    iget-object v2, p0, LCM;->a:[C

    move/from16 v0, p9

    int-to-float v6, v0

    move-object v1, p1

    move v3, p3

    move/from16 v5, p8

    move-object v7, p2

    move-object/from16 v8, p10

    invoke-interface/range {v1 .. v8}, LCQ;->a([CIIFFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1017
    :goto_17
    return-void

    .line 1003
    :cond_18
    iget v1, p0, LCM;->a:I

    .line 1004
    iget-object v2, p0, LCM;->a:Ljava/lang/CharSequence;

    add-int v3, v1, p3

    add-int v4, v1, p4

    move/from16 v0, p9

    int-to-float v6, v0

    move-object v1, p1

    move/from16 v5, p8

    move-object v7, p2

    move-object/from16 v8, p10

    invoke-interface/range {v1 .. v8}, LCQ;->a(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_17
.end method

.method private static a(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 690
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 691
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 692
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 693
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 694
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 696
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 698
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 699
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 700
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 701
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 702
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 703
    return-void
.end method

.method static synthetic a(LCM;)[C
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LCM;->a:[C

    return-object v0
.end method


# virtual methods
.method a(FZ)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, LCM;->a:LCp;

    if-eqz v0, :cond_b

    .line 1054
    iget-object v0, p0, LCM;->a:LCp;

    invoke-virtual {v0, p1, p2}, LCp;->a(FZ)F

    move-result v0

    .line 1056
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x14

    invoke-static {p1, v0, p2}, LCp;->a(FIZ)F

    move-result v0

    goto :goto_a
.end method

.method a(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    if-eqz p2, :cond_9

    add-int/lit8 v1, p1, -0x1

    move v13, v1

    .line 281
    :goto_5
    if-gez v13, :cond_c

    .line 282
    const/4 v1, 0x0

    .line 363
    :cond_8
    :goto_8
    return v1

    :cond_9
    move/from16 v13, p1

    .line 280
    goto :goto_5

    .line 285
    :cond_c
    const/4 v1, 0x0

    .line 287
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCM;->a:Z

    if-nez v2, :cond_47

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:LCm;

    sget-object v3, LCl;->a:LCm;

    if-ne v2, v3, :cond_2d

    .line 289
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, LCM;->b:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, LCM;->a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    goto :goto_8

    .line 291
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:LCm;

    sget-object v3, LCl;->b:LCm;

    if-ne v2, v3, :cond_47

    .line 292
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, LCM;->b:I

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, LCM;->a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    goto :goto_8

    .line 296
    :cond_47
    move-object/from16 v0, p0

    iget-object v14, v0, LCM;->a:[C

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:LCm;

    iget-object v15, v2, LCm;->a:[I

    .line 298
    const/4 v2, 0x0

    :goto_52
    array-length v3, v15

    if-ge v2, v3, :cond_8

    .line 299
    aget v4, v15, v2

    .line 300
    add-int/lit8 v3, v2, 0x1

    aget v3, v15, v3

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int/2addr v3, v4

    .line 301
    move-object/from16 v0, p0

    iget v5, v0, LCM;->b:I

    if-le v3, v5, :cond_135

    .line 302
    move-object/from16 v0, p0

    iget v3, v0, LCM;->b:I

    move v9, v3

    .line 304
    :goto_6b
    add-int/lit8 v3, v2, 0x1

    aget v3, v15, v3

    const/high16 v5, 0x400

    and-int/2addr v3, v5

    if-eqz v3, :cond_a8

    const/4 v6, 0x1

    .line 307
    :goto_75
    move-object/from16 v0, p0

    iget-boolean v3, v0, LCM;->a:Z

    if-eqz v3, :cond_aa

    move v3, v4

    :goto_7c
    move v5, v3

    move v8, v1

    move v3, v4

    :goto_7f
    if-gt v5, v9, :cond_12b

    .line 308
    const/4 v1, 0x0

    .line 311
    move-object/from16 v0, p0

    iget-boolean v4, v0, LCM;->a:Z

    if-eqz v4, :cond_ac

    if-ge v5, v9, :cond_ac

    .line 312
    aget-char v1, v14, v5

    .line 313
    const v4, 0xd800

    if-lt v1, v4, :cond_132

    const v4, 0xdc00

    if-ge v1, v4, :cond_132

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v9, :cond_132

    .line 314
    invoke-static {v14, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 318
    const v4, 0xffff

    if-le v1, v4, :cond_ac

    .line 319
    add-int/lit8 v5, v5, 0x1

    .line 307
    :cond_a5
    :goto_a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 304
    :cond_a8
    const/4 v6, 0x0

    goto :goto_75

    :cond_aa
    move v3, v9

    .line 307
    goto :goto_7c

    :cond_ac
    move v12, v1

    .line 326
    :goto_ad
    if-eq v5, v9, :cond_b3

    const/16 v1, 0x9

    if-ne v12, v1, :cond_a5

    .line 327
    :cond_b3
    if-lt v13, v3, :cond_d6

    if-ge v13, v5, :cond_d6

    const/4 v1, 0x1

    move v10, v1

    .line 329
    :goto_b9
    move-object/from16 v0, p0

    iget v1, v0, LCM;->c:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_d9

    const/4 v1, 0x1

    :goto_c1
    if-ne v1, v6, :cond_db

    const/4 v1, 0x1

    move v11, v1

    .line 330
    :goto_c5
    if-eqz v10, :cond_de

    if-eqz v11, :cond_de

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v7, p3

    .line 331
    invoke-direct/range {v1 .. v7}, LCM;->a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v1, v8

    goto/16 :goto_8

    .line 327
    :cond_d6
    const/4 v1, 0x0

    move v10, v1

    goto :goto_b9

    .line 329
    :cond_d9
    const/4 v1, 0x0

    goto :goto_c1

    :cond_db
    const/4 v1, 0x0

    move v11, v1

    goto :goto_c5

    :cond_de
    move-object/from16 v1, p0

    move v4, v5

    move-object/from16 v7, p3

    .line 334
    invoke-direct/range {v1 .. v7}, LCM;->a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 335
    if-eqz v11, :cond_f8

    :goto_e9
    add-float/2addr v8, v1

    .line 337
    if-eqz v10, :cond_fa

    .line 338
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v7}, LCM;->a(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v1, v8

    goto/16 :goto_8

    .line 335
    :cond_f8
    neg-float v1, v1

    goto :goto_e9

    .line 341
    :cond_fa
    const/16 v1, 0x9

    if-ne v12, v1, :cond_130

    .line 342
    move/from16 v0, p1

    if-ne v0, v5, :cond_105

    move v1, v8

    .line 343
    goto/16 :goto_8

    .line 345
    :cond_105
    move-object/from16 v0, p0

    iget v1, v0, LCM;->c:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, LCM;->c:I

    int-to-float v1, v1

    mul-float v4, v8, v1

    move-object/from16 v0, p0

    iget v1, v0, LCM;->a:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_129

    const/4 v1, 0x1

    :goto_11b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1}, LCM;->a(FZ)F

    move-result v1

    mul-float/2addr v1, v3

    .line 346
    if-eq v13, v5, :cond_8

    .line 358
    :goto_124
    add-int/lit8 v3, v5, 0x1

    move v8, v1

    goto/16 :goto_a5

    .line 345
    :cond_129
    const/4 v1, 0x0

    goto :goto_11b

    .line 298
    :cond_12b
    add-int/lit8 v2, v2, 0x2

    move v1, v8

    goto/16 :goto_52

    :cond_130
    move v1, v8

    goto :goto_124

    :cond_132
    move v12, v1

    goto/16 :goto_ad

    :cond_135
    move v9, v3

    goto/16 :goto_6b
.end method

.method a(Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 4
    .parameter

    .prologue
    .line 263
    iget v0, p0, LCM;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, LCM;->a(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method a(IZ)I
    .registers 21
    .parameter
    .parameter

    .prologue
    .line 446
    const/4 v10, 0x0

    .line 447
    move-object/from16 v0, p0

    iget v9, v0, LCM;->b:I

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, LCM;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_61

    const/4 v1, 0x1

    move v8, v1

    .line 449
    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, LCM;->a:LCm;

    iget-object v14, v1, LCm;->a:[I

    .line 451
    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 452
    const/4 v4, 0x0

    .line 454
    move/from16 v0, p1

    if-ne v0, v10, :cond_64

    .line 455
    const/4 v2, -0x2

    move v1, v13

    move v4, v2

    .line 533
    :goto_1e
    move/from16 v0, p2

    if-ne v0, v8, :cond_fb

    const/4 v2, 0x1

    move v3, v2

    .line 534
    :goto_24
    if-eqz v3, :cond_ff

    const/4 v2, 0x2

    :goto_27
    add-int/2addr v2, v4

    .line 535
    if-ltz v2, :cond_114

    array-length v4, v14

    if-ge v2, v4, :cond_114

    .line 536
    aget v3, v14, v2

    add-int/2addr v3, v10

    .line 537
    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 539
    if-le v4, v9, :cond_3c

    move v4, v9

    .line 542
    :cond_3c
    add-int/lit8 v5, v2, 0x1

    aget v5, v14, v5

    ushr-int/lit8 v5, v5, 0x1a

    and-int/lit8 v11, v5, 0x3f

    .line 544
    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_102

    const/4 v5, 0x1

    .line 546
    :goto_49
    move/from16 v0, p2

    if-ne v0, v5, :cond_105

    const/4 v7, 0x1

    .line 547
    :goto_4e
    const/4 v6, -0x1

    if-ne v1, v6, :cond_10e

    .line 548
    if-eqz v7, :cond_108

    move v6, v3

    :goto_54
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, LCM;->a(IIIZIZ)I

    move-result v1

    .line 551
    if-eqz v7, :cond_10b

    :goto_5c
    if-ne v1, v4, :cond_12b

    move v12, v11

    move v4, v2

    .line 556
    goto :goto_1e

    .line 448
    :cond_61
    const/4 v1, 0x0

    move v8, v1

    goto :goto_e

    .line 456
    :cond_64
    move/from16 v0, p1

    if-ne v0, v9, :cond_6c

    .line 457
    array-length v2, v14

    move v1, v13

    move v4, v2

    goto :goto_1e

    .line 461
    :cond_6c
    const/4 v1, 0x0

    move v2, v10

    move v3, v1

    move v1, v9

    :goto_70
    array-length v5, v14

    if-ge v3, v5, :cond_142

    .line 462
    aget v2, v14, v3

    add-int/2addr v2, v10

    .line 463
    move/from16 v0, p1

    if-lt v0, v2, :cond_ef

    .line 464
    add-int/lit8 v1, v3, 0x1

    aget v1, v14, v1

    const v5, 0x3ffffff

    and-int/2addr v1, v5

    add-int v6, v2, v1

    .line 465
    if-le v6, v9, :cond_87

    move v6, v9

    .line 468
    :cond_87
    move/from16 v0, p1

    if-ge v0, v6, :cond_ee

    .line 469
    add-int/lit8 v1, v3, 0x1

    aget v1, v14, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v12, v1, 0x3f

    .line 471
    move/from16 v0, p1

    if-ne v0, v2, :cond_13a

    .line 476
    add-int/lit8 v15, p1, -0x1

    .line 477
    const/4 v1, 0x0

    :goto_9a
    array-length v5, v14

    if-ge v1, v5, :cond_134

    .line 478
    aget v5, v14, v1

    add-int v7, v10, v5

    .line 479
    if-lt v15, v7, :cond_eb

    .line 480
    add-int/lit8 v5, v1, 0x1

    aget v5, v14, v5

    const v11, 0x3ffffff

    and-int/2addr v5, v11

    add-int/2addr v5, v7

    .line 482
    if-le v5, v9, :cond_af

    move v5, v9

    .line 485
    :cond_af
    if-ge v15, v5, :cond_eb

    .line 486
    add-int/lit8 v11, v1, 0x1

    aget v11, v14, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v11, v11, 0x3f

    .line 488
    if-ge v11, v12, :cond_eb

    .line 494
    const/4 v2, 0x1

    move v3, v7

    move v4, v11

    move/from16 v16, v2

    move v2, v5

    move v5, v1

    move/from16 v1, v16

    :goto_c4
    move v12, v4

    move v4, v2

    move v2, v5

    .line 511
    :goto_c7
    array-length v5, v14

    if-eq v2, v5, :cond_130

    .line 512
    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_f3

    const/4 v5, 0x1

    .line 513
    :goto_cf
    move/from16 v0, p2

    if-ne v0, v5, :cond_f5

    const/4 v7, 0x1

    .line 514
    :goto_d4
    if-eqz v7, :cond_f7

    move v6, v4

    :goto_d7
    move/from16 v0, p1

    if-ne v0, v6, :cond_dd

    if-eq v7, v1, :cond_130

    :cond_dd
    move-object/from16 v1, p0

    move/from16 v6, p1

    .line 516
    invoke-direct/range {v1 .. v7}, LCM;->a(IIIZIZ)I

    move-result v1

    .line 520
    if-eqz v7, :cond_f9

    :goto_e7
    if-eq v1, v4, :cond_12d

    move v3, v1

    .line 591
    :cond_ea
    :goto_ea
    return v3

    .line 477
    :cond_eb
    add-int/lit8 v1, v1, 0x2

    goto :goto_9a

    :cond_ee
    move v1, v6

    .line 461
    :cond_ef
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_70

    .line 512
    :cond_f3
    const/4 v5, 0x0

    goto :goto_cf

    .line 513
    :cond_f5
    const/4 v7, 0x0

    goto :goto_d4

    :cond_f7
    move v6, v3

    .line 514
    goto :goto_d7

    :cond_f9
    move v4, v3

    .line 520
    goto :goto_e7

    .line 533
    :cond_fb
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_24

    .line 534
    :cond_ff
    const/4 v2, -0x2

    goto/16 :goto_27

    .line 544
    :cond_102
    const/4 v5, 0x0

    goto/16 :goto_49

    .line 546
    :cond_105
    const/4 v7, 0x0

    goto/16 :goto_4e

    :cond_108
    move v6, v4

    .line 548
    goto/16 :goto_54

    :cond_10b
    move v4, v3

    .line 551
    goto/16 :goto_5c

    .line 562
    :cond_10e
    if-ge v11, v12, :cond_12b

    .line 564
    if-nez v7, :cond_ea

    move v3, v4

    goto :goto_ea

    .line 569
    :cond_114
    const/4 v2, -0x1

    if-ne v1, v2, :cond_123

    .line 573
    if-eqz v3, :cond_121

    move-object/from16 v0, p0

    iget v1, v0, LCM;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_11f
    move v3, v1

    .line 574
    goto :goto_ea

    .line 573
    :cond_121
    const/4 v1, -0x1

    goto :goto_11f

    .line 585
    :cond_123
    if-gt v1, v9, :cond_12b

    .line 586
    if-eqz v3, :cond_129

    :goto_127
    move v3, v9

    goto :goto_ea

    :cond_129
    move v9, v10

    goto :goto_127

    :cond_12b
    move v3, v1

    goto :goto_ea

    :cond_12d
    move v4, v2

    goto/16 :goto_1e

    :cond_130
    move v1, v13

    move v4, v2

    goto/16 :goto_1e

    :cond_134
    move v1, v4

    move v5, v3

    move v3, v2

    move v4, v12

    move v2, v6

    goto :goto_c4

    :cond_13a
    move v1, v4

    move v4, v6

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    goto :goto_c7

    :cond_142
    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    goto/16 :goto_c7
.end method

.method a(LCQ;FIII)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-boolean v1, v0, LCM;->a:Z

    if-nez v1, :cond_46

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, LCM;->a:LCm;

    sget-object v2, LCl;->a:LCm;

    if-ne v1, v2, :cond_26

    .line 185
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, LCM;->b:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v1 .. v11}, LCM;->a(LCQ;IIIZFIIIZ)F

    .line 254
    :cond_25
    :goto_25
    return-void

    .line 188
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, LCM;->a:LCm;

    sget-object v2, LCl;->b:LCm;

    if-ne v1, v2, :cond_46

    .line 189
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, LCM;->b:I

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v1 .. v11}, LCM;->a(LCQ;IIIZFIIIZ)F

    goto :goto_25

    .line 194
    :cond_46
    const/4 v1, 0x0

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, LCM;->a:LCm;

    iget-object v15, v2, LCm;->a:[I

    .line 198
    array-length v2, v15

    add-int/lit8 v16, v2, -0x2

    .line 199
    const/4 v3, 0x0

    :goto_51
    array-length v2, v15

    if-ge v3, v2, :cond_25

    .line 200
    aget v4, v15, v3

    .line 201
    add-int/lit8 v2, v3, 0x1

    aget v2, v15, v2

    const v5, 0x3ffffff

    and-int/2addr v2, v5

    add-int/2addr v2, v4

    .line 202
    move-object/from16 v0, p0

    iget v5, v0, LCM;->b:I

    if-le v2, v5, :cond_109

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, LCM;->b:I

    move v13, v2

    .line 205
    :goto_6a
    add-int/lit8 v2, v3, 0x1

    aget v2, v15, v2

    const/high16 v5, 0x400

    and-int/2addr v2, v5

    if-eqz v2, :cond_ae

    const/4 v6, 0x1

    .line 208
    :goto_74
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCM;->a:Z

    if-eqz v2, :cond_b0

    move v2, v4

    :goto_7b
    move v5, v2

    move v12, v1

    :goto_7d
    if-gt v5, v13, :cond_100

    .line 209
    const/4 v1, 0x0

    .line 212
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCM;->a:Z

    if-eqz v2, :cond_b2

    if-ge v5, v13, :cond_b2

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, LCM;->a:[C

    aget-char v1, v1, v5

    .line 214
    const v2, 0xd800

    if-lt v1, v2, :cond_107

    const v2, 0xdc00

    if-ge v1, v2, :cond_107

    add-int/lit8 v2, v5, 0x1

    if-ge v2, v13, :cond_107

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, LCM;->a:[C

    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 219
    const v2, 0xffff

    if-le v1, v2, :cond_b2

    .line 220
    add-int/lit8 v5, v5, 0x1

    .line 208
    :cond_ab
    :goto_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 205
    :cond_ae
    const/4 v6, 0x0

    goto :goto_74

    :cond_b0
    move v2, v13

    .line 208
    goto :goto_7b

    :cond_b2
    move v14, v1

    .line 227
    :goto_b3
    if-eq v5, v13, :cond_b9

    const/16 v1, 0x9

    if-ne v14, v1, :cond_ab

    .line 228
    :cond_b9
    add-float v7, p2, v12

    move/from16 v0, v16

    if-ne v3, v0, :cond_c5

    move-object/from16 v0, p0

    iget v1, v0, LCM;->b:I

    if-eq v5, v1, :cond_fa

    :cond_c5
    const/4 v11, 0x1

    :goto_c6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v1 .. v11}, LCM;->a(LCQ;IIIZFIIIZ)F

    move-result v1

    add-float v2, v12, v1

    .line 231
    const/16 v1, 0x9

    if-ne v14, v1, :cond_105

    .line 232
    move-object/from16 v0, p0

    iget v1, v0, LCM;->c:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_fc

    const/4 v1, 0x1

    .line 233
    :goto_e2
    int-to-float v4, v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, LCM;->a:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_fe

    const/4 v1, 0x1

    :goto_ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, LCM;->a(FZ)F

    move-result v1

    mul-float/2addr v1, v4

    .line 250
    :goto_f6
    add-int/lit8 v4, v5, 0x1

    move v12, v1

    goto :goto_ab

    .line 228
    :cond_fa
    const/4 v11, 0x0

    goto :goto_c6

    .line 232
    :cond_fc
    const/4 v1, -0x1

    goto :goto_e2

    .line 233
    :cond_fe
    const/4 v1, 0x0

    goto :goto_ef

    .line 199
    :cond_100
    add-int/lit8 v3, v3, 0x2

    move v1, v12

    goto/16 :goto_51

    :cond_105
    move v1, v2

    goto :goto_f6

    :cond_107
    move v14, v1

    goto :goto_b3

    :cond_109
    move v13, v2

    goto/16 :goto_6a
.end method

.method a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V
    .registers 16
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iput-object p1, p0, LCM;->a:Landroid/text/TextPaint;

    .line 125
    iput-object p2, p0, LCM;->a:Ljava/lang/CharSequence;

    .line 126
    iput p3, p0, LCM;->a:I

    .line 127
    sub-int v0, p4, p3

    iput v0, p0, LCM;->b:I

    .line 128
    iput p5, p0, LCM;->c:I

    .line 129
    iput-object p6, p0, LCM;->a:LCm;

    .line 130
    iput-boolean p7, p0, LCM;->a:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, LCM;->a:Landroid/text/Spanned;

    .line 132
    iput p9, p0, LCM;->a:F

    .line 135
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_a6

    move-object v0, p2

    .line 136
    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, LCM;->a:Landroid/text/Spanned;

    .line 137
    iget-object v0, p0, LCM;->a:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p3, p4, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 138
    iget-object v3, p0, LCM;->a:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/ReplacementSpan;

    invoke-static {v0, v3, v4}, LCu;->a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 139
    array-length v0, v0

    if-lez v0, :cond_9d

    move v0, v1

    .line 142
    :goto_38
    if-nez v0, :cond_40

    if-nez p7, :cond_40

    sget-object v3, LCl;->a:LCm;

    if-eq p6, v3, :cond_9f

    :cond_40
    :goto_40
    iput-boolean v1, p0, LCM;->b:Z

    .line 144
    iget-boolean v1, p0, LCM;->b:Z

    if-eqz v1, :cond_a3

    .line 145
    iget-object v1, p0, LCM;->a:[C

    if-eqz v1, :cond_51

    iget-object v1, p0, LCM;->a:[C

    array-length v1, v1

    iget v3, p0, LCM;->b:I

    if-ge v1, v3, :cond_5b

    .line 146
    :cond_51
    iget v1, p0, LCM;->b:I

    invoke-static {v1}, LBZ;->b(I)I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, LCM;->a:[C

    .line 148
    :cond_5b
    iget-object v1, p0, LCM;->a:[C

    invoke-static {p2, p3, p4, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 149
    if-eqz v0, :cond_a3

    .line 155
    iget-object v3, p0, LCM;->a:[C

    move v1, p3

    .line 156
    :goto_65
    if-ge v1, p4, :cond_a3

    .line 157
    iget-object v0, p0, LCM;->a:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, v1, p4, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 158
    iget-object v0, p0, LCM;->a:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 159
    iget-object v4, p0, LCM;->a:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/ReplacementSpan;

    invoke-static {v0, v4, v5}, LCu;->a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 160
    array-length v0, v0

    if-lez v0, :cond_a1

    .line 162
    sub-int v0, v1, p3

    const v4, 0xfffc

    aput-char v4, v3, v0

    .line 163
    sub-int v0, v1, p3

    add-int/lit8 v0, v0, 0x1

    sub-int v1, v2, p3

    :goto_93
    if-ge v0, v1, :cond_a1

    .line 164
    const v4, 0xfeff

    aput-char v4, v3, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_9d
    move v0, v2

    .line 139
    goto :goto_38

    :cond_9f
    move v1, v2

    .line 142
    goto :goto_40

    :cond_a1
    move v1, v2

    .line 156
    goto :goto_65

    .line 170
    :cond_a3
    iput-object p8, p0, LCM;->a:LCp;

    .line 171
    return-void

    :cond_a6
    move v0, v2

    goto :goto_38
.end method
