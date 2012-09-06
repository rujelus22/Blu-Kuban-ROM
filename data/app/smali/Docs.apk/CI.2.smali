.class public LCI;
.super LCl;
.source "StaticLayout.java"


# instance fields
.field private a:LCt;

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:[I

.field private a:[LCm;

.field private a:[S

.field private b:Landroid/graphics/Paint$FontMetricsInt;

.field private b:[S

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 112
    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, LCl;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1046
    iput v3, p0, LCI;->h:I

    .line 1080
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, LCI;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 1081
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, LCI;->b:Landroid/graphics/Paint$FontMetricsInt;

    .line 114
    const/4 v0, 0x5

    iput v0, p0, LCI;->f:I

    .line 115
    iget v0, p0, LCI;->f:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, LBZ;->c(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, LCI;->a:[I

    .line 116
    iget v0, p0, LCI;->f:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, LBZ;->c(I)I

    move-result v0

    new-array v0, v0, [LCm;

    iput-object v0, p0, LCI;->a:[LCm;

    .line 118
    invoke-static {}, LCt;->a()LCt;

    move-result-object v0

    iput-object v0, p0, LCI;->a:LCt;

    .line 119
    return-void
.end method

.method private a(Ljava/lang/CharSequence;IIIIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .registers 47
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 637
    iget v12, p0, LCI;->c:I

    .line 638
    iget v2, p0, LCI;->f:I

    mul-int v13, v12, v2

    .line 639
    iget v2, p0, LCI;->f:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x1

    .line 640
    iget-object v3, p0, LCI;->a:[I

    .line 642
    array-length v4, v3

    if-lt v2, v4, :cond_1d3

    .line 643
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, LBZ;->c(I)I

    move-result v4

    .line 644
    new-array v2, v4, [I

    .line 645
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    iput-object v2, p0, LCI;->a:[I

    .line 649
    new-array v3, v4, [LCm;

    .line 650
    iget-object v4, p0, LCI;->a:[LCm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, LCI;->a:[LCm;

    array-length v7, v7

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iput-object v3, p0, LCI;->a:[LCm;

    move-object v11, v2

    .line 655
    :goto_2f
    if-eqz p13, :cond_1c9

    .line 656
    move/from16 v0, p8

    move-object/from16 v1, p15

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 657
    move/from16 v0, p9

    move-object/from16 v1, p15

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 658
    move/from16 v0, p6

    move-object/from16 v1, p15

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 659
    move/from16 v0, p7

    move-object/from16 v1, p15

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 661
    const/4 v2, 0x0

    move v10, v2

    :goto_4b
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v10, v2, :cond_81

    .line 662
    aget-object v2, p13, v10

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_6f

    .line 663
    aget-object v2, p13, v10

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p14, v10

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p10

    move-object/from16 v8, p15

    move-object/from16 v9, p31

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 661
    :goto_6b
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_4b

    .line 667
    :cond_6f
    aget-object v2, p13, v10

    aget v6, p14, v10

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p10

    move-object/from16 v8, p15

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_6b

    .line 671
    :cond_81
    move-object/from16 v0, p15

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 672
    move-object/from16 v0, p15

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 673
    move-object/from16 v0, p15

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 674
    move-object/from16 v0, p15

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 679
    :goto_91
    move/from16 v0, p4

    if-ge v5, v0, :cond_1c5

    .line 683
    :goto_95
    move/from16 v0, p5

    if-le v3, v0, :cond_1c1

    .line 687
    :goto_99
    if-nez v12, :cond_1be

    .line 688
    if-eqz p24, :cond_a1

    .line 689
    sub-int v6, v4, v5

    iput v6, p0, LCI;->d:I

    .line 692
    :cond_a1
    if-eqz p23, :cond_1be

    .line 696
    :goto_a3
    if-eqz p22, :cond_ae

    .line 697
    if-eqz p24, :cond_ab

    .line 698
    sub-int v5, v2, v3

    iput v5, p0, LCI;->e:I

    .line 701
    :cond_ab
    if-eqz p23, :cond_ae

    move v3, v2

    .line 708
    :cond_ae
    if-eqz p17, :cond_170

    .line 709
    sub-int v2, v3, v4

    int-to-float v2, v2

    const/high16 v5, 0x3f80

    sub-float v5, p11, v5

    mul-float/2addr v2, v5

    add-float v2, v2, p12

    float-to-double v5, v2

    .line 710
    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_168

    .line 711
    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 719
    :goto_c5
    add-int/lit8 v5, v13, 0x0

    aput p2, v11, v5

    .line 720
    add-int/lit8 v5, v13, 0x1

    aput p10, v11, v5

    .line 721
    add-int/lit8 v5, v13, 0x2

    add-int v6, v3, v2

    aput v6, v11, v5

    .line 723
    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int v14, p10, v2

    .line 724
    iget v2, p0, LCI;->f:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x0

    aput p3, v11, v2

    .line 725
    iget v2, p0, LCI;->f:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x1

    aput v14, v11, v2

    .line 727
    if-eqz p16, :cond_f0

    .line 728
    add-int/lit8 v2, v13, 0x0

    aget v3, v11, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v11, v2

    .line 730
    :cond_f0
    add-int/lit8 v3, v13, 0x0

    aget v4, v11, v3

    const/4 v2, 0x1

    move/from16 v0, p20

    if-ne v0, v2, :cond_173

    const/4 v2, 0x0

    :goto_fa
    or-int/2addr v2, v4

    aput v2, v11, v3

    .line 731
    sget-object v2, LCI;->a:LCm;

    .line 735
    if-eqz p21, :cond_176

    .line 736
    iget-object v3, p0, LCI;->a:[LCm;

    aput-object v2, v3, v12

    .line 743
    :goto_105
    if-eqz p28, :cond_124

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p28

    if-ne v0, v2, :cond_10f

    if-eqz v12, :cond_124

    :cond_10f
    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p26

    move/from16 v6, p27

    move/from16 v7, p29

    move-object/from16 v8, p28

    move v9, v12

    move/from16 v10, p30

    move-object/from16 v11, p31

    .line 744
    invoke-direct/range {v2 .. v11}, LCI;->a(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 749
    :cond_124
    iget v2, p0, LCI;->c:I

    iget-object v3, p0, LCI;->a:[S

    array-length v3, v3

    if-lt v2, v3, :cond_14b

    .line 750
    iget-object v2, p0, LCI;->a:[S

    .line 751
    iget v3, p0, LCI;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, LBZ;->d(I)I

    move-result v3

    .line 752
    new-array v4, v3, [S

    .line 753
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iput-object v4, p0, LCI;->a:[S

    .line 756
    iget-object v2, p0, LCI;->b:[S

    .line 757
    new-array v3, v3, [S

    .line 758
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    iput-object v3, p0, LCI;->b:[S

    .line 762
    :cond_14b
    invoke-direct/range {p0 .. p3}, LCI;->a(Ljava/lang/CharSequence;II)S

    move-result v4

    .line 763
    move/from16 v0, p30

    float-to-int v2, v0

    int-to-short v2, v2

    .line 764
    if-lez v4, :cond_1ab

    .line 767
    add-int/lit8 v3, p3, -0x1

    .line 768
    :goto_157
    move/from16 v0, p2

    if-lt v3, v0, :cond_18c

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_18c

    .line 769
    add-int/lit8 v3, v3, -0x1

    goto :goto_157

    .line 713
    :cond_168
    neg-double v5, v5

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    neg-int v2, v2

    goto/16 :goto_c5

    .line 716
    :cond_170
    const/4 v2, 0x0

    goto/16 :goto_c5

    .line 730
    :cond_173
    const/high16 v2, 0x4000

    goto :goto_fa

    .line 738
    :cond_176
    iget-object v8, p0, LCI;->a:[LCm;

    sub-int v4, p2, p27

    sub-int v6, p2, p27

    sub-int v7, p3, p2

    move/from16 v2, p20

    move-object/from16 v3, p19

    move-object/from16 v5, p25

    invoke-static/range {v2 .. v7}, LBY;->a(I[BI[CII)LCm;

    move-result-object v2

    aput-object v2, v8, v12

    goto/16 :goto_105

    .line 771
    :cond_18c
    add-int/lit8 v5, p3, -0x1

    if-ge v3, v5, :cond_1ab

    .line 773
    const/4 v2, 0x0

    .line 774
    :goto_191
    move/from16 v0, p2

    if-gt v0, v3, :cond_1a9

    .line 775
    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1a3

    .line 778
    const/high16 v5, 0x41a0

    add-float/2addr v2, v5

    .line 774
    :goto_1a0
    add-int/lit8 p2, p2, 0x1

    goto :goto_191

    .line 780
    :cond_1a3
    sub-int v5, p2, p27

    aget v5, p26, v5

    add-float/2addr v2, v5

    goto :goto_1a0

    .line 783
    :cond_1a9
    float-to-int v2, v2

    int-to-short v2, v2

    .line 786
    :cond_1ab
    iget-object v3, p0, LCI;->b:[S

    iget v5, p0, LCI;->c:I

    aput-short v4, v3, v5

    .line 787
    iget-object v3, p0, LCI;->a:[S

    iget v4, p0, LCI;->c:I

    aput-short v2, v3, v4

    .line 789
    iget v2, p0, LCI;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LCI;->c:I

    .line 790
    return v14

    :cond_1be
    move v4, v5

    goto/16 :goto_a3

    :cond_1c1
    move/from16 v3, p5

    goto/16 :goto_99

    :cond_1c5
    move/from16 v5, p4

    goto/16 :goto_95

    :cond_1c9
    move/from16 v3, p9

    move/from16 v5, p8

    move/from16 v2, p7

    move/from16 v4, p6

    goto/16 :goto_91

    :cond_1d3
    move-object v11, v3

    goto/16 :goto_2f
.end method

.method private a(Ljava/lang/CharSequence;II)S
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x20

    const/4 v2, 0x0

    .line 794
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4d

    .line 795
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 796
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p1

    .line 797
    check-cast v0, Landroid/text/Spanned;

    const-class v4, LEg;

    invoke-static {v0, v1, v3, v4}, LCI;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEg;

    .line 800
    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4d

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-le v0, v1, :cond_4d

    .line 803
    add-int/lit8 v0, p3, -0x1

    move v1, v0

    .line 804
    :goto_32
    if-lt v1, p2, :cond_3e

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3e

    .line 805
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_32

    :cond_3e
    move v0, v2

    .line 809
    :goto_3f
    if-gt p2, v1, :cond_4e

    .line 810
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4a

    .line 811
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 809
    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    :cond_4d
    move v0, v2

    .line 817
    :cond_4e
    return v0
.end method

.method private a(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .registers 18
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
    .line 825
    cmpg-float v1, p8, p5

    if-gtz v1, :cond_19

    .line 827
    iget-object v1, p0, LCI;->a:[I

    iget v2, p0, LCI;->f:I

    mul-int/2addr v2, p7

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 828
    iget-object v1, p0, LCI;->a:[I

    iget v2, p0, LCI;->f:I

    mul-int/2addr v2, p7

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 900
    :goto_18
    return-void

    .line 832
    :cond_19
    const-string v1, "\u2026"

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 834
    sub-int v3, p2, p1

    .line 836
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne p6, v1, :cond_51

    .line 837
    const/4 v1, 0x0

    move v2, v1

    move v1, v3

    .line 840
    :goto_2a
    if-ltz v1, :cond_39

    .line 841
    add-int/lit8 v3, v1, -0x1

    add-int/2addr v3, p1

    sub-int/2addr v3, p4

    aget v3, p3, v3

    .line 843
    add-float v4, v3, v2

    add-float/2addr v4, v5

    cmpl-float v4, v4, p5

    if-lez v4, :cond_4d

    .line 850
    :cond_39
    const/4 v2, 0x0

    .line 898
    :goto_3a
    iget-object v3, p0, LCI;->a:[I

    iget v4, p0, LCI;->f:I

    mul-int/2addr v4, p7

    add-int/lit8 v4, v4, 0x3

    aput v2, v3, v4

    .line 899
    iget-object v2, p0, LCI;->a:[I

    iget v3, p0, LCI;->f:I

    mul-int/2addr v3, p7

    add-int/lit8 v3, v3, 0x4

    aput v1, v2, v3

    goto :goto_18

    .line 847
    :cond_4d
    add-float/2addr v2, v3

    .line 840
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 852
    :cond_51
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq p6, v1, :cond_59

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p6, v1, :cond_70

    .line 853
    :cond_59
    const/4 v1, 0x0

    .line 856
    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v3, :cond_69

    .line 857
    add-int v4, v2, p1

    sub-int/2addr v4, p4

    aget v4, p3, v4

    .line 859
    add-float v6, v4, v1

    add-float/2addr v6, v5

    cmpl-float v6, v6, p5

    if-lez v6, :cond_6c

    .line 867
    :cond_69
    sub-int v1, v3, v2

    .line 868
    goto :goto_3a

    .line 863
    :cond_6c
    add-float/2addr v1, v4

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 869
    :cond_70
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 872
    sub-float v4, p5, v5

    const/high16 v6, 0x4000

    div-float v6, v4, v6

    .line 873
    :goto_78
    if-ltz v3, :cond_86

    .line 874
    add-int/lit8 v4, v3, -0x1

    add-int/2addr v4, p1

    sub-int/2addr v4, p4

    aget v4, p3, v4

    .line 876
    add-float v7, v4, v2

    cmpl-float v7, v7, v6

    if-lez v7, :cond_9a

    .line 883
    :cond_86
    sub-float v4, p5, v5

    sub-float/2addr v4, v2

    .line 884
    const/4 v2, 0x0

    :goto_8a
    if-ge v2, v3, :cond_97

    .line 885
    add-int v5, v2, p1

    sub-int/2addr v5, p4

    aget v5, p3, v5

    .line 887
    add-float v6, v5, v1

    cmpl-float v6, v6, v4

    if-lez v6, :cond_a0

    .line 895
    :cond_97
    sub-int v1, v3, v2

    goto :goto_3a

    .line 880
    :cond_9a
    add-float/2addr v4, v2

    .line 873
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v4

    goto :goto_78

    .line 891
    :cond_a0
    add-float/2addr v1, v5

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a
.end method

.method private static final a(CZ)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 545
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_b

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_b

    .line 622
    :cond_a
    :goto_a
    return v0

    .line 548
    :cond_b
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_a

    .line 551
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_1f

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_1f

    .line 552
    if-nez p1, :cond_a

    .line 553
    sparse-switch p0, :sswitch_data_74

    goto :goto_a

    :sswitch_1d
    move v0, v1

    .line 570
    goto :goto_a

    .line 575
    :cond_1f
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_2f

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_2f

    .line 576
    if-nez p1, :cond_a

    .line 577
    sparse-switch p0, :sswitch_data_b6

    goto :goto_a

    :sswitch_2d
    move v0, v1

    .line 595
    goto :goto_a

    .line 600
    :cond_2f
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_37

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_a

    .line 603
    :cond_37
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_40

    const v2, 0x9fbb

    if-le p0, v2, :cond_a

    .line 606
    :cond_40
    const v2, 0xf900

    if-lt p0, v2, :cond_4a

    const v2, 0xfad9

    if-le p0, v2, :cond_a

    .line 609
    :cond_4a
    const v2, 0xa000

    if-lt p0, v2, :cond_54

    const v2, 0xa48f

    if-le p0, v2, :cond_a

    .line 612
    :cond_54
    const v2, 0xa490

    if-lt p0, v2, :cond_5e

    const v2, 0xa4cf

    if-le p0, v2, :cond_a

    .line 615
    :cond_5e
    const v2, 0xfe62

    if-lt p0, v2, :cond_68

    const v2, 0xfe66

    if-le p0, v2, :cond_a

    .line 618
    :cond_68
    const v2, 0xff10

    if-lt p0, v2, :cond_72

    const v2, 0xff19

    if-le p0, v2, :cond_a

    :cond_72
    move v0, v1

    .line 622
    goto :goto_a

    .line 553
    :sswitch_data_74
    .sparse-switch
        0x3041 -> :sswitch_1d
        0x3043 -> :sswitch_1d
        0x3045 -> :sswitch_1d
        0x3047 -> :sswitch_1d
        0x3049 -> :sswitch_1d
        0x3063 -> :sswitch_1d
        0x3083 -> :sswitch_1d
        0x3085 -> :sswitch_1d
        0x3087 -> :sswitch_1d
        0x308e -> :sswitch_1d
        0x3095 -> :sswitch_1d
        0x3096 -> :sswitch_1d
        0x309b -> :sswitch_1d
        0x309c -> :sswitch_1d
        0x309d -> :sswitch_1d
        0x309e -> :sswitch_1d
    .end sparse-switch

    .line 577
    :sswitch_data_b6
    .sparse-switch
        0x30a0 -> :sswitch_2d
        0x30a1 -> :sswitch_2d
        0x30a3 -> :sswitch_2d
        0x30a5 -> :sswitch_2d
        0x30a7 -> :sswitch_2d
        0x30a9 -> :sswitch_2d
        0x30c3 -> :sswitch_2d
        0x30e3 -> :sswitch_2d
        0x30e5 -> :sswitch_2d
        0x30e7 -> :sswitch_2d
        0x30ee -> :sswitch_2d
        0x30f5 -> :sswitch_2d
        0x30f6 -> :sswitch_2d
        0x30fb -> :sswitch_2d
        0x30fc -> :sswitch_2d
        0x30fd -> :sswitch_2d
        0x30fe -> :sswitch_2d
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 929
    iget v0, p0, LCI;->c:I

    return v0
.end method

.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    .line 935
    iget v1, p0, LCI;->h:I

    if-lez v1, :cond_1a

    iget v1, p0, LCI;->h:I

    if-lt p1, v1, :cond_1a

    iget v1, p0, LCI;->c:I

    if-eq p1, v1, :cond_1a

    .line 937
    invoke-virtual {p0}, LCI;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    :cond_1a
    return v0
.end method

.method public final a(I)LCm;
    .registers 3
    .parameter

    .prologue
    .line 970
    iget-object v0, p0, LCI;->a:[LCm;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(I)S
    .registers 3
    .parameter

    .prologue
    .line 1016
    iget-object v0, p0, LCI;->a:[S

    aget-short v0, v0, p1

    return v0
.end method

.method a(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 130
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
    .line 127
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, LCI;->c:I

    .line 129
    const/4 v4, 0x6

    invoke-static {v4}, LBZ;->c(I)I

    move-result v4

    new-array v4, v4, [S

    move-object/from16 v0, p0

    iput-object v4, v0, LCI;->a:[S

    .line 130
    const/4 v4, 0x6

    invoke-static {v4}, LBZ;->c(I)I

    move-result v4

    new-array v4, v4, [S

    move-object/from16 v0, p0

    iput-object v4, v0, LCI;->b:[S

    .line 132
    const/4 v14, 0x0

    .line 133
    const/high16 v4, 0x3f80

    cmpl-float v4, p7, v4

    if-nez v4, :cond_27

    const/4 v4, 0x0

    cmpl-float v4, p8, v4

    if-eqz v4, :cond_ae

    :cond_27
    const/16 v21, 0x1

    .line 135
    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, LCI;->a:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, LCI;->b:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v112, v0

    .line 138
    const/4 v6, 0x0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, LCI;->a:LCt;

    move-object/from16 v113, v0

    .line 142
    const/4 v4, 0x0

    .line 143
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_6a7

    move-object/from16 v4, p1

    .line 144
    check-cast v4, Landroid/text/Spanned;

    move-object/from16 v98, v4

    :goto_49
    move/from16 v22, p2

    .line 147
    :goto_4b
    move/from16 v0, v22

    move/from16 v1, p3

    if-gt v0, v1, :cond_595

    .line 148
    const/16 v4, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 149
    if-gez v4, :cond_b2

    move/from16 v103, p3

    .line 155
    :goto_61
    move-object/from16 v0, p0

    iget v4, v0, LCI;->c:I

    add-int/lit8 v4, v4, 0x1

    .line 159
    const/4 v4, 0x0

    .line 161
    if-eqz v98, :cond_5ff

    .line 162
    const-class v4, LEh;

    move-object/from16 v0, v98

    move/from16 v1, v22

    move/from16 v2, v103

    invoke-static {v0, v1, v2, v4}, LCI;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [LEh;

    .line 164
    const/4 v5, 0x0

    move v9, v5

    move/from16 v7, p5

    move/from16 v8, p5

    :goto_7e
    array-length v5, v4

    if-ge v9, v5, :cond_b7

    .line 165
    aget-object v5, v4, v9

    .line 166
    aget-object v10, v4, v9

    const/4 v11, 0x1

    invoke-interface {v10, v11}, LEh;->a(Z)I

    move-result v10

    sub-int/2addr v8, v10

    .line 167
    aget-object v10, v4, v9

    const/4 v11, 0x0

    invoke-interface {v10, v11}, LEh;->a(Z)I

    move-result v10

    sub-int/2addr v7, v10

    .line 173
    instance-of v10, v5, LEi;

    if-eqz v10, :cond_aa

    .line 174
    check-cast v5, LEi;

    .line 175
    move-object/from16 v0, v98

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, LCI;->h(I)I

    move-result v10

    .line 176
    invoke-interface {v5}, LEi;->a()I

    move-result v5

    add-int/2addr v5, v10

    .line 164
    :cond_aa
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_7e

    .line 133
    :cond_ae
    const/16 v21, 0x0

    goto/16 :goto_29

    .line 152
    :cond_b2
    add-int/lit8 v4, v4, 0x1

    move/from16 v103, v4

    goto :goto_61

    .line 180
    :cond_b7
    const-class v4, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v98

    move/from16 v1, v22

    move/from16 v2, v103

    invoke-static {v0, v1, v2, v4}, LCI;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LineHeightSpan;

    .line 182
    array-length v5, v4

    if-eqz v5, :cond_f9

    .line 183
    if-eqz v6, :cond_ce

    array-length v5, v6

    array-length v9, v4

    if-ge v5, v9, :cond_5fc

    .line 185
    :cond_ce
    array-length v5, v4

    invoke-static {v5}, LBZ;->c(I)I

    move-result v5

    new-array v5, v5, [I

    .line 189
    :goto_d5
    const/4 v6, 0x0

    :goto_d6
    array-length v9, v4

    if-ge v6, v9, :cond_69e

    .line 190
    aget-object v9, v4, v6

    move-object/from16 v0, v98

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 192
    move/from16 v0, v22

    if-ge v9, v0, :cond_f6

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, LCI;->h(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, LCI;->a(I)I

    move-result v9

    aput v9, v5, v6

    .line 189
    :goto_f3
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 200
    :cond_f6
    aput v14, v5, v6

    goto :goto_f3

    :cond_f9
    move-object/from16 v17, v4

    move/from16 v99, v7

    move-object/from16 v18, v6

    move v4, v8

    .line 206
    :goto_100
    move-object/from16 v0, v113

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v103

    invoke-virtual {v0, v1, v2, v3}, LCt;->a(Ljava/lang/CharSequence;II)V

    .line 207
    move-object/from16 v0, v113

    iget-object v0, v0, LCt;->a:[C

    move-object/from16 v29, v0

    .line 208
    move-object/from16 v0, v113

    iget-object v0, v0, LCt;->a:[F

    move-object/from16 v30, v0

    .line 209
    move-object/from16 v0, v113

    iget-object v0, v0, LCt;->a:[B

    move-object/from16 v23, v0

    .line 210
    move-object/from16 v0, v113

    iget v0, v0, LCt;->b:I

    move/from16 v24, v0

    .line 211
    move-object/from16 v0, v113

    iget-boolean v0, v0, LCt;->a:Z

    move/from16 v25, v0

    .line 215
    const/16 v65, 0x0

    .line 220
    const/16 v28, 0x0

    const/16 v27, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v7, 0x0

    .line 226
    const/16 v26, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    .line 227
    const/4 v12, 0x0

    .line 228
    const/4 v13, 0x0

    .line 230
    const/16 v20, 0x0

    .line 231
    const/4 v6, 0x0

    .line 232
    const/4 v5, 0x0

    move/from16 v31, v6

    move/from16 v38, v22

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v37, v27

    move/from16 v39, v28

    move/from16 v40, v65

    move/from16 v41, v22

    move/from16 v42, v22

    move/from16 v34, v65

    move/from16 v101, v4

    move/from16 v27, v22

    move-object/from16 v28, v5

    move/from16 v4, v22

    .line 235
    :goto_15f
    move/from16 v0, v27

    move/from16 v1, v103

    if-ge v0, v1, :cond_544

    .line 237
    move/from16 v0, v27

    if-ne v0, v4, :cond_610

    .line 238
    if-nez v98, :cond_32c

    move/from16 v10, v103

    .line 244
    :goto_16d
    sub-int v7, v10, v27

    .line 245
    if-nez v98, :cond_33a

    .line 246
    move-object/from16 v0, v113

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v7, v2}, LCt;->a(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move/from16 v102, v10

    .line 258
    :goto_17c
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v111, v0

    .line 259
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    .line 260
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v110, v0

    .line 261
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v109, v0

    .line 262
    move-object/from16 v0, v112

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v108, v0

    .line 263
    move-object/from16 v0, v112

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v107, v0

    move/from16 v5, v27

    move/from16 v100, v27

    move-object/from16 v7, v28

    move/from16 v4, v31

    move/from16 v44, v13

    move/from16 v43, v12

    move/from16 v10, v36

    move/from16 v9, v37

    move/from16 v8, v39

    move/from16 v6, v42

    move/from16 v13, v32

    move/from16 v12, v33

    move/from16 v42, v11

    move/from16 v39, v26

    move/from16 v32, v41

    move/from16 v11, v35

    move/from16 v41, v15

    move/from16 v15, v34

    move/from16 v34, v40

    move/from16 v40, v16

    .line 266
    :goto_1c8
    move/from16 v0, v102

    if-ge v5, v0, :cond_51a

    .line 267
    sub-int v16, v5, v22

    aget-char v33, v29, v16

    .line 269
    const/16 v16, 0xa

    move/from16 v0, v33

    move/from16 v1, v16

    if-ne v0, v1, :cond_35f

    move-object/from16 v104, v7

    move/from16 v105, v4

    move/from16 v28, v15

    .line 327
    :goto_1de
    move/from16 v0, v101

    int-to-float v4, v0

    cmpg-float v4, v28, v4

    if-gtz v4, :cond_3fe

    .line 329
    add-int/lit8 v31, v5, 0x1

    .line 331
    move/from16 v0, v111

    move/from16 v1, v41

    if-ge v0, v1, :cond_69a

    move/from16 v16, v111

    .line 333
    :goto_1ef
    move/from16 v0, v110

    move/from16 v1, v39

    if-ge v0, v1, :cond_696

    move/from16 v27, v110

    .line 335
    :goto_1f7
    move/from16 v0, v109

    move/from16 v1, v40

    if-le v0, v1, :cond_692

    move/from16 v26, v109

    .line 337
    :goto_1ff
    move/from16 v0, v108

    move/from16 v1, v43

    if-ge v0, v1, :cond_68e

    move/from16 v7, v108

    .line 339
    :goto_207
    move/from16 v0, v107

    move/from16 v1, v44

    if-le v0, v1, :cond_68a

    move/from16 v4, v107

    .line 341
    :goto_20f
    move/from16 v0, v106

    move/from16 v1, v42

    if-le v0, v1, :cond_686

    move/from16 v15, v106

    .line 360
    :goto_217
    const/16 v35, 0x20

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_2bf

    const/16 v35, 0x9

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_2bf

    const/16 v35, 0x2e

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_247

    const/16 v35, 0x2c

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_247

    const/16 v35, 0x3a

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_247

    const/16 v35, 0x3b

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_26d

    :cond_247
    add-int/lit8 v35, v5, -0x1

    move/from16 v0, v35

    if-lt v0, v6, :cond_259

    add-int/lit8 v35, v5, -0x1

    sub-int v35, v35, v22

    aget-char v35, v29, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->isDigit(C)Z

    move-result v35

    if-nez v35, :cond_26d

    :cond_259
    add-int/lit8 v35, v5, 0x1

    move/from16 v0, v35

    move/from16 v1, v102

    if-ge v0, v1, :cond_2bf

    add-int/lit8 v35, v5, 0x1

    sub-int v35, v35, v22

    aget-char v35, v29, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->isDigit(C)Z

    move-result v35

    if-eqz v35, :cond_2bf

    :cond_26d
    const/16 v35, 0x2f

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_27d

    const/16 v35, 0x2d

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_291

    :cond_27d
    add-int/lit8 v35, v5, 0x1

    move/from16 v0, v35

    move/from16 v1, v102

    if-ge v0, v1, :cond_2bf

    add-int/lit8 v35, v5, 0x1

    sub-int v35, v35, v22

    aget-char v35, v29, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->isDigit(C)Z

    move-result v35

    if-eqz v35, :cond_2bf

    :cond_291
    const/16 v35, 0x2e80

    move/from16 v0, v33

    move/from16 v1, v35

    if-lt v0, v1, :cond_65c

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, LCI;->a(CZ)Z

    move-result v33

    if-eqz v33, :cond_65c

    add-int/lit8 v33, v5, 0x1

    move/from16 v0, v33

    move/from16 v1, v102

    if-ge v0, v1, :cond_65c

    add-int/lit8 v33, v5, 0x1

    sub-int v33, v33, v22

    aget-char v33, v29, v33

    const/16 v35, 0x0

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, LCI;->a(CZ)Z

    move-result v33

    if-eqz v33, :cond_65c

    .line 370
    :cond_2bf
    add-int/lit8 v32, v5, 0x1

    .line 372
    move/from16 v0, v16

    if-ge v0, v10, :cond_2c7

    move/from16 v10, v16

    .line 374
    :cond_2c7
    move/from16 v0, v27

    if-ge v0, v8, :cond_2cd

    move/from16 v8, v27

    .line 376
    :cond_2cd
    move/from16 v0, v26

    if-le v0, v9, :cond_2d3

    move/from16 v9, v26

    .line 378
    :cond_2d3
    if-ge v7, v12, :cond_2d6

    move v12, v7

    .line 380
    :cond_2d6
    if-le v4, v13, :cond_2d9

    move v13, v4

    .line 382
    :cond_2d9
    if-le v15, v11, :cond_630

    move/from16 v11, v27

    move/from16 v65, v28

    move/from16 v34, v28

    move/from16 v33, v101

    move/from16 v35, v14

    move v14, v12

    move/from16 v27, v8

    move/from16 v12, v31

    move v8, v15

    move/from16 v31, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v100

    move/from16 v114, v10

    move/from16 v10, v26

    move/from16 v26, v9

    move/from16 v9, v16

    move/from16 v16, v114

    move/from16 v115, v32

    move/from16 v32, v28

    move/from16 v28, v115

    .line 266
    :goto_301
    add-int/lit8 v4, v4, 0x1

    move/from16 v100, v5

    move/from16 v44, v6

    move/from16 v43, v7

    move/from16 v42, v8

    move/from16 v41, v9

    move/from16 v40, v10

    move/from16 v39, v11

    move/from16 v38, v12

    move/from16 v101, v33

    move v5, v4

    move v12, v14

    move v11, v15

    move/from16 v10, v16

    move/from16 v9, v26

    move/from16 v8, v27

    move/from16 v6, v31

    move-object/from16 v7, v104

    move/from16 v4, v105

    move/from16 v15, v32

    move/from16 v14, v35

    move/from16 v32, v28

    goto/16 :goto_1c8

    .line 241
    :cond_32c
    const-class v4, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v98

    move/from16 v1, v27

    move/from16 v2, v103

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v10

    goto/16 :goto_16d

    .line 248
    :cond_33a
    const-class v4, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v98

    move/from16 v1, v27

    invoke-interface {v0, v1, v10, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 250
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v98

    invoke-static {v4, v0, v5}, LCu;->a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v4, v113

    move-object/from16 v5, p4

    move-object/from16 v8, v19

    move-object/from16 v9, v112

    .line 252
    invoke-virtual/range {v4 .. v9}, LCt;->a(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)F

    move/from16 v102, v10

    goto/16 :goto_17c

    .line 271
    :cond_35f
    const/16 v16, 0x9

    move/from16 v0, v33

    move/from16 v1, v16

    if-ne v0, v1, :cond_3a9

    .line 272
    if-nez v4, :cond_614

    .line 273
    const/16 v105, 0x1

    .line 274
    const/16 v20, 0x1

    .line 275
    if-eqz v98, :cond_38b

    .line 277
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v98

    move/from16 v1, v22

    move/from16 v2, v103

    invoke-static {v0, v1, v2, v4}, LCI;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/TabStopSpan;

    .line 279
    array-length v0, v4

    move/from16 v16, v0

    if-lez v16, :cond_38b

    .line 280
    new-instance v7, LCp;

    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-direct {v7, v0, v4}, LCp;-><init>(I[Ljava/lang/Object;)V

    .line 285
    :cond_38b
    :goto_38b
    if-eqz v7, :cond_39e

    .line 286
    const/4 v4, 0x0

    invoke-virtual {v7, v15, v4}, LCp;->a(FZ)F

    move-result v4

    .line 290
    :goto_392
    sub-int v16, v5, v22

    sub-float v15, v4, v15

    aput v15, v30, v16

    move-object/from16 v104, v7

    move/from16 v28, v4

    .line 292
    goto/16 :goto_1de

    .line 288
    :cond_39e
    const/16 v4, 0x14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v4, v0}, LCp;->a(FIZ)F

    move-result v4

    goto :goto_392

    .line 292
    :cond_3a9
    const v16, 0xd800

    move/from16 v0, v33

    move/from16 v1, v16

    if-lt v0, v1, :cond_3e5

    const v16, 0xdfff

    move/from16 v0, v33

    move/from16 v1, v16

    if-gt v0, v1, :cond_3e5

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    move/from16 v1, v102

    if-ge v0, v1, :cond_3e5

    .line 294
    sub-int v16, v5, v22

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    .line 319
    sub-int v16, v5, v22

    aget v16, v30, v16

    move/from16 v0, v101

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v28, v15, v16

    move-object/from16 v104, v7

    move/from16 v105, v4

    .line 321
    goto/16 :goto_1de

    .line 322
    :cond_3e5
    sub-int v16, v5, v22

    aget v16, v30, v16

    move/from16 v0, v101

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v28, v15, v16

    move-object/from16 v104, v7

    move/from16 v105, v4

    goto/16 :goto_1de

    .line 386
    :cond_3fe
    move/from16 v0, v32

    if-eq v0, v6, :cond_45f

    move/from16 v7, v32

    .line 389
    :goto_404
    move/from16 v0, v102

    if-ge v7, v0, :cond_413

    sub-int v4, v7, v22

    aget-char v4, v29, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_413

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_404

    .line 393
    :cond_413
    move/from16 v0, p3

    if-ne v7, v0, :cond_45c

    const/16 v26, 0x1

    :goto_419
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move/from16 v31, v22

    move-object/from16 v32, p12

    move/from16 v33, p11

    move-object/from16 v35, p4

    invoke-direct/range {v4 .. v35}, LCI;->a(Ljava/lang/CharSequence;IIIIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v14

    move v9, v7

    .line 451
    :goto_432
    move/from16 v0, v100

    if-ge v9, v0, :cond_514

    move v4, v9

    move v5, v9

    .line 461
    :goto_438
    const/16 v28, 0x0

    .line 462
    const/4 v8, 0x0

    .line 463
    const/4 v7, 0x0

    .line 464
    const/4 v6, 0x0

    .line 466
    const/4 v11, 0x0

    .line 467
    const/4 v12, 0x0

    .line 468
    const/4 v13, 0x0

    .line 477
    move/from16 v0, v22

    if-eq v9, v0, :cond_618

    move v10, v8

    move v15, v11

    move/from16 v16, v11

    move/from16 v26, v11

    move/from16 v27, v11

    move/from16 v31, v9

    move/from16 v32, v28

    move/from16 v33, v99

    move/from16 v35, v14

    move/from16 v28, v9

    move v11, v8

    move v14, v12

    move v12, v9

    move v9, v8

    .line 478
    goto/16 :goto_301

    .line 393
    :cond_45c
    const/16 v26, 0x0

    goto :goto_419

    .line 406
    :cond_45f
    move/from16 v0, v38

    if-ge v0, v6, :cond_465

    move v9, v6

    goto :goto_432

    .line 411
    :cond_465
    move/from16 v0, v38

    if-eq v0, v6, :cond_4a9

    .line 413
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_4a6

    const/16 v57, 0x1

    :goto_471
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v6

    move/from16 v45, v14

    move/from16 v46, p7

    move/from16 v47, p8

    move-object/from16 v48, v17

    move-object/from16 v49, v18

    move-object/from16 v50, v19

    move/from16 v51, v20

    move/from16 v52, v21

    move/from16 v53, v22

    move-object/from16 v54, v23

    move/from16 v55, v24

    move/from16 v56, v25

    move/from16 v58, p9

    move/from16 v59, p10

    move-object/from16 v60, v29

    move-object/from16 v61, v30

    move/from16 v62, v22

    move-object/from16 v63, p12

    move/from16 v64, p11

    move-object/from16 v66, p4

    invoke-direct/range {v35 .. v66}, LCI;->a(Ljava/lang/CharSequence;IIIIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v14

    move/from16 v9, v38

    .line 426
    goto :goto_432

    .line 413
    :cond_4a6
    const/16 v57, 0x0

    goto :goto_471

    .line 434
    :cond_4a9
    add-int/lit8 v69, v6, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v70, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v71, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v72, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v73, v0

    move-object/from16 v0, v112

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object/from16 v0, v112

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    add-int/lit8 v4, v6, 0x1

    move/from16 v0, p3

    if-ne v4, v0, :cond_511

    const/16 v88, 0x1

    :goto_4d7
    sub-int v4, v6, v22

    aget v96, v30, v4

    move-object/from16 v66, p0

    move-object/from16 v67, p1

    move/from16 v68, v6

    move/from16 v76, v14

    move/from16 v77, p7

    move/from16 v78, p8

    move-object/from16 v79, v17

    move-object/from16 v80, v18

    move-object/from16 v81, v19

    move/from16 v82, v20

    move/from16 v83, v21

    move/from16 v84, v22

    move-object/from16 v85, v23

    move/from16 v86, v24

    move/from16 v87, v25

    move/from16 v89, p9

    move/from16 v90, p10

    move-object/from16 v91, v29

    move-object/from16 v92, v30

    move/from16 v93, v22

    move-object/from16 v94, p12

    move/from16 v95, p11

    move-object/from16 v97, p4

    invoke-direct/range {v66 .. v97}, LCI;->a(Ljava/lang/CharSequence;IIIIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v14

    .line 448
    add-int/lit8 v9, v6, 0x1

    goto/16 :goto_432

    .line 434
    :cond_511
    const/16 v88, 0x0

    goto :goto_4d7

    .line 457
    :cond_514
    add-int/lit8 v4, v9, -0x1

    move/from16 v5, v100

    goto/16 :goto_438

    :cond_51a
    move/from16 v27, v102

    move-object/from16 v28, v7

    move/from16 v31, v4

    move/from16 v16, v40

    move/from16 v26, v39

    move/from16 v33, v12

    move/from16 v35, v11

    move/from16 v36, v10

    move/from16 v37, v9

    move/from16 v12, v43

    move/from16 v11, v42

    move/from16 v4, v102

    move/from16 v39, v8

    move/from16 v40, v34

    move/from16 v42, v6

    move/from16 v34, v15

    move/from16 v15, v41

    move/from16 v41, v32

    move/from16 v32, v13

    move/from16 v13, v44

    .line 235
    goto/16 :goto_15f

    .line 484
    :cond_544
    move/from16 v0, v103

    move/from16 v1, v42

    if-eq v0, v1, :cond_58f

    .line 485
    or-int v4, v15, v11

    or-int v4, v4, v16

    or-int v4, v4, v26

    if-nez v4, :cond_609

    .line 486
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 488
    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 489
    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 490
    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 491
    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 492
    const/4 v12, 0x0

    .line 493
    const/4 v13, 0x0

    .line 498
    :goto_56b
    move/from16 v0, v103

    move/from16 v1, p3

    if-ne v0, v1, :cond_5f2

    const/16 v26, 0x1

    :goto_573
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v42

    move/from16 v7, v103

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move/from16 v31, v22

    move-object/from16 v32, p12

    move/from16 v33, p11

    move-object/from16 v35, p4

    invoke-direct/range {v4 .. v35}, LCI;->a(Ljava/lang/CharSequence;IIIIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v14

    .line 512
    :cond_58f
    move/from16 v0, v103

    move/from16 v1, p3

    if-ne v0, v1, :cond_5f6

    .line 516
    :cond_595
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_5a7

    add-int/lit8 v4, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5f1

    .line 519
    :cond_5a7
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 521
    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v34, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p3

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v22, p3

    move/from16 v27, p9

    move/from16 v28, p10

    move/from16 v31, p2

    move-object/from16 v32, p12

    move/from16 v33, p11

    move-object/from16 v35, p4

    invoke-direct/range {v4 .. v35}, LCI;->a(Ljava/lang/CharSequence;IIIIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    .line 532
    :cond_5f1
    return-void

    .line 498
    :cond_5f2
    const/16 v26, 0x0

    goto/16 :goto_573

    :cond_5f6
    move/from16 v22, v103

    move-object/from16 v6, v18

    .line 147
    goto/16 :goto_4b

    :cond_5fc
    move-object v5, v6

    goto/16 :goto_d5

    :cond_5ff
    move-object/from16 v17, v4

    move/from16 v99, p5

    move-object/from16 v18, v6

    move/from16 v4, p5

    goto/16 :goto_100

    :cond_609
    move v10, v15

    move/from16 v9, v16

    move/from16 v8, v26

    goto/16 :goto_56b

    :cond_610
    move/from16 v102, v4

    goto/16 :goto_17c

    :cond_614
    move/from16 v105, v4

    goto/16 :goto_38b

    :cond_618
    move v10, v8

    move v15, v11

    move/from16 v16, v11

    move/from16 v26, v11

    move/from16 v27, v11

    move/from16 v31, v9

    move/from16 v32, v28

    move/from16 v33, v101

    move/from16 v35, v14

    move/from16 v28, v9

    move v11, v8

    move v14, v12

    move v12, v9

    move v9, v8

    goto/16 :goto_301

    :cond_630
    move/from16 v65, v28

    move/from16 v34, v28

    move/from16 v33, v101

    move/from16 v35, v14

    move v14, v12

    move/from16 v12, v31

    move/from16 v31, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v100

    move/from16 v114, v11

    move/from16 v11, v27

    move/from16 v27, v8

    move v8, v15

    move/from16 v15, v114

    move/from16 v115, v16

    move/from16 v16, v10

    move/from16 v10, v26

    move/from16 v26, v9

    move/from16 v9, v115

    move/from16 v116, v32

    move/from16 v32, v28

    move/from16 v28, v116

    goto/16 :goto_301

    :cond_65c
    move/from16 v65, v28

    move/from16 v33, v101

    move/from16 v35, v14

    move v14, v12

    move/from16 v12, v31

    move/from16 v31, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v100

    move/from16 v114, v15

    move v15, v11

    move/from16 v11, v27

    move/from16 v27, v8

    move/from16 v8, v114

    move/from16 v115, v10

    move/from16 v10, v26

    move/from16 v26, v9

    move/from16 v9, v16

    move/from16 v16, v115

    move/from16 v116, v28

    move/from16 v28, v32

    move/from16 v32, v116

    goto/16 :goto_301

    :cond_686
    move/from16 v15, v42

    goto/16 :goto_217

    :cond_68a
    move/from16 v4, v44

    goto/16 :goto_20f

    :cond_68e
    move/from16 v7, v43

    goto/16 :goto_207

    :cond_692
    move/from16 v26, v40

    goto/16 :goto_1ff

    :cond_696
    move/from16 v27, v39

    goto/16 :goto_1f7

    :cond_69a
    move/from16 v16, v41

    goto/16 :goto_1ef

    :cond_69e
    move-object/from16 v17, v4

    move/from16 v99, v7

    move-object/from16 v18, v5

    move v4, v8

    goto/16 :goto_100

    :cond_6a7
    move-object/from16 v98, v4

    goto/16 :goto_49
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 1021
    iget-object v0, p0, LCI;->b:[S

    aget-short v0, v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1003
    iget v0, p0, LCI;->g:I

    return v0
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    .line 945
    iget v1, p0, LCI;->h:I

    if-lez v1, :cond_1c

    iget v1, p0, LCI;->h:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1c

    iget v1, p0, LCI;->c:I

    if-eq p1, v1, :cond_1c

    .line 947
    invoke-virtual {p0}, LCI;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 949
    :cond_1c
    return v0
.end method

.method public b(I)S
    .registers 3
    .parameter

    .prologue
    .line 1026
    iget-object v0, p0, LCI;->b:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public b(I)Z
    .registers 4
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 954
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public d(I)I
    .registers 4
    .parameter

    .prologue
    .line 959
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public e()I
    .registers 2

    .prologue
    .line 975
    iget v0, p0, LCI;->d:I

    return v0
.end method

.method public e(I)I
    .registers 4
    .parameter

    .prologue
    .line 994
    iget v0, p0, LCI;->f:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 995
    const/4 v0, 0x0

    .line 998
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public f()I
    .registers 2

    .prologue
    .line 980
    iget v0, p0, LCI;->e:I

    return v0
.end method

.method public f(I)I
    .registers 4
    .parameter

    .prologue
    .line 985
    iget v0, p0, LCI;->f:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 986
    const/4 v0, 0x0

    .line 989
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, LCI;->a:[I

    iget v1, p0, LCI;->f:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public g(I)I
    .registers 7
    .parameter

    .prologue
    .line 908
    iget v1, p0, LCI;->c:I

    .line 909
    const/4 v0, -0x1

    .line 911
    iget-object v3, p0, LCI;->a:[I

    move v2, v1

    .line 912
    :goto_6
    sub-int v1, v2, v0

    const/4 v4, 0x1

    if-le v1, v4, :cond_1c

    .line 913
    add-int v1, v2, v0

    shr-int/lit8 v1, v1, 0x1

    .line 914
    iget v4, p0, LCI;->f:I

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    aget v4, v3, v4

    if-le v4, p1, :cond_1a

    move v2, v1

    .line 915
    goto :goto_6

    :cond_1a
    move v0, v1

    .line 917
    goto :goto_6

    .line 920
    :cond_1c
    if-gez v0, :cond_1f

    .line 921
    const/4 v0, 0x0

    .line 923
    :cond_1f
    return v0
.end method
