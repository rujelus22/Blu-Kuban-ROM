.class public abstract LCl;
.super Ljava/lang/Object;
.source "Layout.java"


# static fields
.field static final a:I

.field static final a:LCm;

.field private static final a:Landroid/graphics/Rect;

.field private static final a:[Landroid/text/style/ParagraphStyle;

.field static final b:I

.field static final b:LCm;


# instance fields
.field private a:F

.field private a:Landroid/text/Layout$Alignment;

.field a:Landroid/text/TextPaint;

.field private a:Ljava/lang/CharSequence;

.field private a:Z

.field private b:F

.field private b:Landroid/text/TextPaint;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 51
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, LBZ;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, LCl;->a:[Landroid/text/style/ParagraphStyle;

    .line 56
    sput v1, LCl;->a:I

    .line 57
    sput v1, LCl;->b:I

    .line 1825
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LCl;->a:Landroid/graphics/Rect;

    .line 1843
    new-instance v0, LCm;

    new-array v1, v2, [I

    fill-array-data v1, :array_30

    invoke-direct {v0, v1}, LCm;-><init>([I)V

    sput-object v0, LCl;->a:LCm;

    .line 1845
    new-instance v0, LCm;

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    invoke-direct {v0, v1}, LCm;-><init>([I)V

    sput-object v0, LCl;->b:LCm;

    return-void

    .line 1843
    :array_30
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    .line 1845
    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LCl;->a:Landroid/text/Layout$Alignment;

    .line 109
    if-gez p3, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_29
    if-eqz p2, :cond_2f

    .line 116
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 117
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 120
    :cond_2f
    iput-object p1, p0, LCl;->a:Ljava/lang/CharSequence;

    .line 121
    iput-object p2, p0, LCl;->b:Landroid/text/TextPaint;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, LCl;->a:Landroid/text/TextPaint;

    .line 123
    iput p3, p0, LCl;->c:I

    .line 124
    iput-object p4, p0, LCl;->a:Landroid/text/Layout$Alignment;

    .line 125
    iput p5, p0, LCl;->a:F

    .line 126
    iput p6, p0, LCl;->b:F

    .line 127
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, LCl;->a:Z

    .line 128
    return-void
.end method

.method private a(III)F
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0, p1}, LCl;->b(I)S

    move-result v0

    .line 587
    if-nez v0, :cond_8

    .line 588
    const/4 v0, 0x0

    .line 591
    :goto_7
    return v0

    .line 590
    :cond_8
    invoke-virtual {p0, p1}, LCl;->a(I)S

    move-result v1

    sub-int v1, p2, v1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    .line 591
    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7
.end method

.method private a(ILCp;Z)F
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 889
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v3

    .line 890
    if-eqz p3, :cond_3c

    invoke-virtual {p0, p1}, LCl;->i(I)I

    move-result v4

    .line 891
    :goto_a
    invoke-virtual {p0, p1}, LCl;->b(I)Z

    move-result v7

    .line 892
    invoke-virtual {p0, p1}, LCl;->a(I)LCm;

    move-result-object v6

    .line 893
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v5

    .line 895
    invoke-static {}, LCM;->a()LCM;

    move-result-object v0

    .line 896
    const/4 v9, 0x0

    .line 897
    invoke-virtual {p0, p1}, LCl;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 898
    invoke-virtual {p0, p1}, LCl;->q(I)I

    move-result v1

    .line 899
    iget v2, p0, LCl;->c:I

    invoke-direct {p0, p1, v2, v1}, LCl;->a(III)F

    move-result v9

    .line 901
    :cond_2b
    iget-object v1, p0, LCl;->b:Landroid/text/TextPaint;

    iget-object v2, p0, LCl;->a:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, LCM;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V

    .line 903
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LCM;->a(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 904
    invoke-static {v0}, LCM;->a(LCM;)LCM;

    .line 905
    return v1

    .line 890
    :cond_3c
    invoke-virtual {p0, p1}, LCl;->j(I)I

    move-result v4

    goto :goto_a
.end method

.method private a(IZ)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 732
    invoke-virtual {p0, p1}, LCl;->h(I)I

    move-result v0

    .line 734
    invoke-direct {p0, p1, p2, v0}, LCl;->a(IZI)F

    move-result v0

    return v0
.end method

.method private a(IZI)F
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0, p3}, LCl;->c(I)I

    move-result v3

    .line 739
    invoke-virtual {p0, p3}, LCl;->i(I)I

    move-result v4

    .line 740
    invoke-virtual {p0, p3}, LCl;->d(I)I

    move-result v5

    .line 741
    invoke-virtual {p0, p3}, LCl;->b(I)Z

    move-result v7

    .line 742
    invoke-virtual {p0, p3}, LCl;->a(I)LCm;

    move-result-object v6

    .line 744
    const/4 v8, 0x0

    .line 745
    if-eqz v7, :cond_33

    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_33

    .line 748
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 749
    array-length v1, v0

    if-lez v1, :cond_33

    .line 750
    new-instance v8, LCp;

    const/16 v1, 0x14

    invoke-direct {v8, v1, v0}, LCp;-><init>(I[Ljava/lang/Object;)V

    .line 754
    :cond_33
    invoke-virtual {p0, p3}, LCl;->o(I)I

    move-result v10

    .line 755
    invoke-virtual {p0, p3}, LCl;->p(I)I

    move-result v11

    .line 757
    invoke-static {}, LCM;->a()LCM;

    move-result-object v0

    .line 758
    iget v1, p0, LCl;->c:I

    invoke-direct {p0, p3, v1, v10}, LCl;->a(III)F

    move-result v9

    .line 759
    iget-object v1, p0, LCl;->b:Landroid/text/TextPaint;

    iget-object v2, p0, LCl;->a:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v9}, LCM;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V

    .line 761
    sub-int v1, p1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, LCM;->a(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 762
    invoke-static {v0}, LCM;->a(LCM;)LCM;

    .line 764
    invoke-direct {p0, p3, v10, v11}, LCl;->a(III)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    return v0
.end method

.method static a(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1465
    invoke-static {}, LCt;->a()LCt;

    move-result-object v13

    .line 1466
    invoke-static {}, LCM;->a()LCM;

    move-result-object v14

    .line 1468
    :try_start_8
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v1, v2}, LCt;->a(Ljava/lang/CharSequence;II)V

    .line 1471
    iget-boolean v3, v13, LCt;->a:Z

    if-eqz v3, :cond_6b

    .line 1472
    sget-object v9, LCl;->a:LCm;

    .line 1473
    const/4 v8, 0x1

    .line 1478
    :goto_18
    iget-object v5, v13, LCt;->a:[C

    .line 1479
    iget v6, v13, LCt;->c:I

    .line 1480
    const/4 v10, 0x0

    .line 1481
    const/4 v4, 0x0

    .line 1482
    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v6, :cond_89

    .line 1483
    aget-char v7, v5, v3

    const/16 v11, 0x9

    if-ne v7, v11, :cond_7c

    .line 1484
    const/4 v10, 0x1

    .line 1485
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_89

    .line 1486
    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object v3, v0

    .line 1487
    const-class v5, Landroid/text/style/TabStopSpan;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v3, v0, v1, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 1488
    const-class v6, Landroid/text/style/TabStopSpan;

    move/from16 v0, p3

    invoke-static {v3, v0, v5, v6}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    .line 1489
    array-length v5, v3

    if-lez v5, :cond_87

    .line 1490
    new-instance v4, LCp;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v3}, LCp;-><init>(I[Ljava/lang/Object;)V

    move-object v3, v4

    :goto_52
    move-object v11, v3

    .line 1499
    :goto_53
    const/4 v12, 0x0

    move-object v3, v14

    move-object v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v12}, LCM;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V

    .line 1500
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, LCM;->a(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_7f

    move-result v3

    .line 1502
    invoke-static {v14}, LCM;->a(LCM;)LCM;

    .line 1503
    invoke-static {v13}, LCt;->a(LCt;)LCt;

    return v3

    .line 1475
    :cond_6b
    :try_start_6b
    iget v3, v13, LCt;->b:I

    iget-object v4, v13, LCt;->a:[B

    const/4 v5, 0x0

    iget-object v6, v13, LCt;->a:[C

    const/4 v7, 0x0

    iget v8, v13, LCt;->c:I

    invoke-static/range {v3 .. v8}, LBY;->a(I[BI[CII)LCm;

    move-result-object v9

    .line 1476
    iget v8, v13, LCt;->b:I
    :try_end_7b
    .catchall {:try_start_6b .. :try_end_7b} :catchall_7f

    goto :goto_18

    .line 1482
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1502
    :catchall_7f
    move-exception v3

    invoke-static {v14}, LCM;->a(LCM;)LCM;

    .line 1503
    invoke-static {v13}, LCt;->a(LCt;)LCt;

    throw v3

    :cond_87
    move-object v3, v4

    goto :goto_52

    :cond_89
    move-object v11, v4

    goto :goto_53
.end method

.method public static a(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 77
    :goto_6
    if-gt p1, p2, :cond_1d

    .line 78
    const/16 v0, 0xa

    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    .line 80
    if-gez v0, :cond_11

    move v0, p2

    .line 83
    :cond_11
    invoke-static {p3, v3, p0, p1, v0}, LCl;->a(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v1

    .line 85
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1e

    .line 87
    :goto_19
    add-int/lit8 p1, v0, 0x1

    move v2, v1

    .line 77
    goto :goto_6

    .line 90
    :cond_1d
    return v2

    :cond_1e
    move v1, v2

    goto :goto_19
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, LCl;->a(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private a(III)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 424
    invoke-virtual {p0, p1}, LCl;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 425
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v3

    .line 428
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v0, :cond_12

    .line 429
    if-ne v3, v7, :cond_10

    .line 457
    :goto_f
    return p2

    :cond_10
    move p2, p3

    .line 432
    goto :goto_f

    .line 435
    :cond_12
    const/4 v1, 0x0

    .line 436
    iget-boolean v0, p0, LCl;->a:Z

    if-eqz v0, :cond_5c

    invoke-virtual {p0, p1}, LCl;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 437
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 438
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v4

    .line 439
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 440
    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v4, v5, v6}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 441
    array-length v4, v0

    if-lez v4, :cond_5c

    .line 442
    new-instance v1, LCp;

    const/16 v4, 0x14

    invoke-direct {v1, v4, v0}, LCp;-><init>(I[Ljava/lang/Object;)V

    move-object v0, v1

    .line 445
    :goto_42
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LCl;->a(ILCp;Z)F

    move-result v0

    float-to-int v0, v0

    .line 446
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v1, :cond_53

    .line 447
    if-ne v3, v7, :cond_51

    .line 448
    sub-int p2, p3, v0

    goto :goto_f

    .line 450
    :cond_51
    sub-int/2addr p2, v0

    goto :goto_f

    .line 453
    :cond_53
    and-int/lit8 v0, v0, -0x2

    .line 454
    add-int v1, p2, p3

    sub-int v0, v1, v0

    shr-int/lit8 p2, v0, 0x1

    goto :goto_f

    :cond_5c
    move-object v0, v1

    goto :goto_42
.end method

.method private a(IZ)I
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 1100
    invoke-virtual {p0, p1}, LCl;->h(I)I

    move-result v2

    .line 1101
    invoke-virtual {p0, v2}, LCl;->c(I)I

    move-result v3

    .line 1102
    invoke-virtual {p0, v2}, LCl;->i(I)I

    move-result v4

    .line 1103
    invoke-virtual {p0, v2}, LCl;->d(I)I

    move-result v1

    .line 1106
    const/4 v5, -0x1

    if-ne v1, v5, :cond_69

    move v5, v0

    :goto_16
    if-ne p2, v5, :cond_6b

    move v5, v0

    .line 1108
    :goto_19
    if-eqz v5, :cond_6d

    .line 1109
    if-ne p1, v4, :cond_7a

    .line 1110
    invoke-virtual {p0}, LCl;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_68

    .line 1112
    add-int/lit8 v2, v2, 0x1

    move v8, v2

    move v2, v0

    .line 1128
    :goto_29
    if-eqz v2, :cond_78

    .line 1129
    invoke-virtual {p0, v8}, LCl;->c(I)I

    move-result v3

    .line 1130
    invoke-virtual {p0, v8}, LCl;->i(I)I

    move-result v4

    .line 1131
    invoke-virtual {p0, v8}, LCl;->d(I)I

    move-result v5

    .line 1132
    if-eq v5, v1, :cond_78

    .line 1136
    if-nez p2, :cond_76

    :goto_3b
    move p2, v0

    .line 1141
    :goto_3c
    invoke-virtual {p0, v8}, LCl;->a(I)LCm;

    move-result-object v6

    .line 1143
    invoke-static {}, LCM;->a()LCM;

    move-result-object v0

    .line 1145
    const/4 v9, 0x0

    .line 1146
    invoke-virtual {p0, v8}, LCl;->a(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1147
    invoke-virtual {p0, v8}, LCl;->q(I)I

    move-result v1

    .line 1148
    iget v2, p0, LCl;->c:I

    invoke-direct {p0, v8, v2, v1}, LCl;->a(III)F

    move-result v9

    .line 1150
    :cond_55
    iget-object v1, p0, LCl;->b:Landroid/text/TextPaint;

    iget-object v2, p0, LCl;->a:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, LCM;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V

    .line 1152
    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, LCM;->a(IZ)I

    move-result v1

    add-int p1, v3, v1

    .line 1153
    invoke-static {v0}, LCM;->a(LCM;)LCM;

    .line 1154
    :cond_68
    return p1

    :cond_69
    move v5, v7

    .line 1106
    goto :goto_16

    :cond_6b
    move v5, v7

    goto :goto_19

    .line 1118
    :cond_6d
    if-ne p1, v3, :cond_7a

    .line 1119
    if-lez v2, :cond_68

    .line 1121
    add-int/lit8 v2, v2, -0x1

    move v8, v2

    move v2, v0

    goto :goto_29

    :cond_76
    move v0, v7

    .line 1136
    goto :goto_3b

    :cond_78
    move v5, v1

    goto :goto_3c

    :cond_7a
    move v8, v2

    move v2, v7

    goto :goto_29
.end method

.method private a(Landroid/text/Layout$Alignment;LCp;IIII)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 390
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p1, v0, :cond_a

    .line 391
    if-ne p4, v2, :cond_8

    .line 409
    :goto_7
    return p5

    :cond_8
    move p5, p6

    .line 394
    goto :goto_7

    .line 397
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, LCl;->a(ILCp;Z)F

    move-result v0

    float-to-int v0, v0

    .line 398
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p1, v1, :cond_1b

    .line 399
    if-ne p4, v2, :cond_19

    .line 400
    sub-int p5, p6, v0

    goto :goto_7

    .line 402
    :cond_19
    sub-int/2addr p5, v0

    goto :goto_7

    .line 405
    :cond_1b
    and-int/lit8 v0, v0, -0x2

    .line 406
    add-int v1, p6, p5

    sub-int v0, v1, v0

    shr-int/lit8 p5, v0, 0x1

    goto :goto_7
.end method

.method private a(IIIIILandroid/graphics/Path;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1294
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v8

    .line 1295
    invoke-virtual {p0, p1}, LCl;->i(I)I

    move-result v0

    .line 1296
    invoke-virtual {p0, p1}, LCl;->a(I)LCm;

    move-result-object v9

    .line 1298
    if-le v0, v8, :cond_66

    iget-object v1, p0, LCl;->a:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_66

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    .line 1300
    :goto_1d
    const/4 v0, 0x0

    move v7, v0

    :goto_1f
    iget-object v0, v9, LCm;->a:[I

    array-length v0, v0

    if-ge v7, v0, :cond_65

    .line 1301
    iget-object v0, v9, LCm;->a:[I

    aget v0, v0, v7

    add-int v1, v8, v0

    .line 1302
    iget-object v0, v9, LCm;->a:[I

    add-int/lit8 v2, v7, 0x1

    aget v0, v0, v2

    const v2, 0x3ffffff

    and-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1304
    if-le v0, v6, :cond_38

    move v0, v6

    .line 1306
    :cond_38
    if-gt p2, v0, :cond_61

    if-lt p3, v1, :cond_61

    .line 1307
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1308
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1310
    if-eq v1, v0, :cond_61

    .line 1311
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, LCl;->a(IZI)F

    move-result v3

    .line 1312
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, LCl;->a(IZI)F

    move-result v0

    .line 1314
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v2, p4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1300
    :cond_61
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_1f

    .line 1318
    :cond_65
    return-void

    :cond_66
    move v6, v0

    goto :goto_1d
.end method

.method private a(III[CI)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1647
    invoke-virtual {p0, p3}, LCl;->f(I)I

    move-result v3

    .line 1649
    if-nez v3, :cond_7

    .line 1671
    :cond_6
    return-void

    .line 1653
    :cond_7
    invoke-virtual {p0, p3}, LCl;->e(I)I

    move-result v2

    .line 1654
    invoke-virtual {p0, p3}, LCl;->c(I)I

    move-result v4

    move v1, v2

    .line 1656
    :goto_10
    add-int v0, v2, v3

    if-ge v1, v0, :cond_6

    .line 1659
    if-ne v1, v2, :cond_26

    .line 1660
    const/16 v0, 0x2026

    .line 1665
    :goto_18
    add-int v5, v1, v4

    .line 1667
    if-lt v5, p1, :cond_22

    if-ge v5, p2, :cond_22

    .line 1668
    add-int/2addr v5, p5

    sub-int/2addr v5, p1

    aput-char v0, p4, v5

    .line 1656
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1662
    :cond_26
    const v0, 0xfeff

    goto :goto_18
.end method

.method static synthetic a(LCl;III[CI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, LCl;->a(III[CI)V

    return-void
.end method

.method static a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1639
    if-ne p1, p2, :cond_9

    if-lez p1, :cond_9

    .line 1640
    invoke-static {p3}, LBZ;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1643
    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method private b(IZ)F
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 850
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v3

    .line 851
    if-eqz p2, :cond_59

    invoke-virtual {p0, p1}, LCl;->i(I)I

    move-result v4

    .line 853
    :goto_b
    invoke-virtual {p0, p1}, LCl;->b(I)Z

    move-result v7

    .line 855
    if-eqz v7, :cond_5e

    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_5e

    .line 858
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 859
    array-length v1, v0

    if-lez v1, :cond_5e

    .line 860
    new-instance v8, LCp;

    const/16 v1, 0x14

    invoke-direct {v8, v1, v0}, LCp;-><init>(I[Ljava/lang/Object;)V

    .line 863
    :goto_2d
    invoke-virtual {p0, p1}, LCl;->a(I)LCm;

    move-result-object v6

    .line 864
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v5

    .line 866
    invoke-static {}, LCM;->a()LCM;

    move-result-object v0

    .line 867
    const/4 v9, 0x0

    .line 868
    invoke-virtual {p0, p1}, LCl;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 869
    invoke-virtual {p0, p1}, LCl;->q(I)I

    move-result v1

    .line 870
    iget v2, p0, LCl;->c:I

    invoke-direct {p0, p1, v2, v1}, LCl;->a(III)F

    move-result v9

    .line 872
    :cond_4a
    iget-object v1, p0, LCl;->b:Landroid/text/TextPaint;

    iget-object v2, p0, LCl;->a:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v9}, LCM;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V

    .line 874
    invoke-virtual {v0, v10}, LCM;->a(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 875
    invoke-static {v0}, LCM;->a(LCM;)LCM;

    .line 876
    return v1

    .line 851
    :cond_59
    invoke-virtual {p0, p1}, LCl;->j(I)I

    move-result v4

    goto :goto_b

    :cond_5e
    move-object v8, v10

    goto :goto_2d
.end method

.method private b(III)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1045
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    .line 1047
    invoke-virtual {p0}, LCl;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_d

    .line 1064
    :cond_a
    :goto_a
    return p3

    .line 1051
    :cond_b
    add-int/lit8 p3, p3, -0x1

    :cond_d
    if-le p3, p2, :cond_a

    .line 1052
    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1054
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1c

    .line 1055
    add-int/lit8 p3, p3, -0x1

    goto :goto_a

    .line 1058
    :cond_1c
    const/16 v2, 0x20

    if-eq v1, v2, :cond_b

    const/16 v2, 0x9

    if-eq v1, v2, :cond_b

    goto :goto_a
.end method

.method private d(I)Z
    .registers 14
    .parameter

    .prologue
    const v11, 0x3ffffff

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    invoke-virtual {p0, p1}, LCl;->h(I)I

    move-result v7

    .line 664
    invoke-virtual {p0, v7}, LCl;->c(I)I

    move-result v8

    .line 665
    invoke-virtual {p0, v7}, LCl;->i(I)I

    move-result v5

    .line 666
    invoke-virtual {p0, v7}, LCl;->a(I)LCm;

    move-result-object v0

    iget-object v9, v0, LCm;->a:[I

    move v0, v1

    .line 669
    :goto_19
    array-length v4, v9

    if-ge v0, v4, :cond_7f

    .line 670
    aget v4, v9, v0

    add-int v6, v8, v4

    .line 671
    add-int/lit8 v4, v0, 0x1

    aget v4, v9, v4

    and-int/2addr v4, v11

    add-int/2addr v4, v6

    .line 672
    if-le v4, v5, :cond_29

    move v4, v5

    .line 675
    :cond_29
    if-lt p1, v6, :cond_4f

    if-ge p1, v4, :cond_4f

    .line 676
    if-le p1, v6, :cond_30

    .line 708
    :goto_2f
    return v1

    .line 680
    :cond_30
    add-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v0, v0, 0x3f

    .line 684
    :goto_38
    if-ne v0, v3, :cond_7d

    .line 686
    invoke-virtual {p0, v7}, LCl;->d(I)I

    move-result v0

    if-ne v0, v2, :cond_52

    move v0, v1

    :goto_41
    move v6, v0

    .line 691
    :goto_42
    if-ne p1, v8, :cond_56

    .line 692
    invoke-virtual {p0, v7}, LCl;->d(I)I

    move-result v0

    if-ne v0, v2, :cond_54

    move v0, v1

    .line 708
    :goto_4b
    if-ge v0, v6, :cond_79

    :goto_4d
    move v1, v2

    goto :goto_2f

    .line 669
    :cond_4f
    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_52
    move v0, v2

    .line 686
    goto :goto_41

    :cond_54
    move v0, v2

    .line 692
    goto :goto_4b

    .line 694
    :cond_56
    add-int/lit8 v7, p1, -0x1

    move v0, v1

    .line 695
    :goto_59
    array-length v4, v9

    if-ge v0, v4, :cond_7b

    .line 696
    aget v4, v9, v0

    add-int v10, v8, v4

    .line 697
    add-int/lit8 v4, v0, 0x1

    aget v4, v9, v4

    and-int/2addr v4, v11

    add-int/2addr v4, v10

    .line 698
    if-le v4, v5, :cond_69

    move v4, v5

    .line 701
    :cond_69
    if-lt v7, v10, :cond_76

    if-ge v7, v4, :cond_76

    .line 702
    add-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v0, v0, 0x3f

    .line 703
    goto :goto_4b

    .line 695
    :cond_76
    add-int/lit8 v0, v0, 0x2

    goto :goto_59

    :cond_79
    move v2, v1

    .line 708
    goto :goto_4d

    :cond_7b
    move v0, v3

    goto :goto_4b

    :cond_7d
    move v6, v0

    goto :goto_42

    :cond_7f
    move v0, v3

    goto :goto_38
.end method

.method private r(I)I
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1160
    if-nez p1, :cond_4

    .line 1182
    :goto_3
    return v2

    .line 1162
    :cond_4
    iget-object v1, p0, LCl;->a:Ljava/lang/CharSequence;

    .line 1163
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1165
    const v3, 0xdc00

    if-lt v0, v3, :cond_26

    const v3, 0xdfff

    if-gt v0, v3, :cond_26

    .line 1166
    add-int/lit8 v0, p1, -0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1168
    const v3, 0xd800

    if-lt v0, v3, :cond_26

    const v3, 0xdbff

    if-gt v0, v3, :cond_26

    add-int/lit8 p1, p1, -0x1

    .line 1171
    :cond_26
    iget-boolean v0, p0, LCl;->a:Z

    if-eqz v0, :cond_54

    move-object v0, v1

    .line 1172
    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    move v3, v2

    .line 1174
    :goto_36
    array-length v2, v0

    if-ge v3, v2, :cond_54

    move-object v2, v1

    .line 1175
    check-cast v2, Landroid/text/Spanned;

    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object v2, v1

    .line 1176
    check-cast v2, Landroid/text/Spanned;

    aget-object v5, v0, v3

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1178
    if-ge v4, p1, :cond_50

    if-le v2, p1, :cond_50

    move p1, v4

    .line 1174
    :cond_50
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_36

    :cond_54
    move v2, p1

    .line 1182
    goto :goto_3
.end method


# virtual methods
.method public final a()F
    .registers 2

    .prologue
    .line 521
    iget v0, p0, LCl;->a:F

    return v0
.end method

.method public a(I)F
    .registers 3
    .parameter

    .prologue
    .line 717
    invoke-direct {p0, p1}, LCl;->d(I)Z

    move-result v0

    .line 718
    invoke-direct {p0, p1, v0}, LCl;->a(IZ)F

    move-result v0

    return v0
.end method

.method public abstract a()I
.end method

.method public abstract a(I)I
.end method

.method public a(IF)I
    .registers 17
    .parameter
    .parameter

    .prologue
    .line 961
    invoke-virtual {p0, p1}, LCl;->i(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 962
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v4

    .line 963
    invoke-virtual {p0, p1}, LCl;->a(I)LCm;

    move-result-object v11

    .line 965
    invoke-virtual {p0}, LCl;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 968
    :cond_18
    invoke-virtual {p0, v4}, LCl;->a(I)F

    move-result v1

    sub-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 970
    const/4 v1, 0x0

    move v3, v4

    :goto_24
    iget-object v5, v11, LCm;->a:[I

    array-length v5, v5

    if-ge v1, v5, :cond_bb

    .line 971
    iget-object v5, v11, LCm;->a:[I

    aget v5, v5, v1

    add-int v9, v4, v5

    .line 972
    iget-object v5, v11, LCm;->a:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    add-int/2addr v5, v9

    .line 973
    iget-object v6, v11, LCm;->a:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    const/high16 v7, 0x400

    and-int/2addr v6, v7

    if-eqz v6, :cond_6e

    const/4 v6, -0x1

    move v10, v6

    .line 975
    :goto_47
    if-le v5, v0, :cond_4a

    move v5, v0

    .line 976
    :cond_4a
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 978
    :goto_52
    sub-int v7, v8, v6

    const/4 v12, 0x1

    if-le v7, v12, :cond_74

    .line 979
    add-int v7, v8, v6

    div-int/lit8 v7, v7, 0x2

    .line 980
    invoke-direct {p0, v7}, LCl;->r(I)I

    move-result v12

    .line 982
    invoke-virtual {p0, v12}, LCl;->a(I)F

    move-result v12

    int-to-float v13, v10

    mul-float/2addr v12, v13

    int-to-float v13, v10

    mul-float v13, v13, p2

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_71

    :goto_6c
    move v8, v7

    .line 986
    goto :goto_52

    .line 973
    :cond_6e
    const/4 v6, 0x1

    move v10, v6

    goto :goto_47

    :cond_71
    move v6, v7

    move v7, v8

    .line 985
    goto :goto_6c

    .line 988
    :cond_74
    add-int/lit8 v7, v9, 0x1

    if-ge v6, v7, :cond_7a

    add-int/lit8 v6, v9, 0x1

    .line 990
    :cond_7a
    if-ge v6, v5, :cond_a7

    .line 991
    invoke-direct {p0, v6}, LCl;->r(I)I

    move-result v8

    .line 993
    invoke-virtual {p0, v8}, LCl;->a(I)F

    move-result v6

    sub-float v6, v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 995
    iget-object v7, p0, LCl;->a:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 996
    if-ge v7, v5, :cond_cc

    .line 997
    invoke-virtual {p0, v7}, LCl;->a(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 999
    cmpg-float v10, v5, v6

    if-gez v10, :cond_cc

    move v6, v7

    .line 1005
    :goto_a1
    cmpg-float v7, v5, v2

    if-gez v7, :cond_a7

    move v2, v5

    move v3, v6

    .line 1011
    :cond_a7
    invoke-virtual {p0, v9}, LCl;->a(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1013
    cmpg-float v6, v5, v2

    if-gez v6, :cond_b7

    move v2, v5

    move v3, v9

    .line 970
    :cond_b7
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_24

    .line 1019
    :cond_bb
    invoke-virtual {p0, v0}, LCl;->a(I)F

    move-result v1

    sub-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1021
    cmpg-float v1, v1, v2

    if-gez v1, :cond_ca

    .line 1026
    :goto_c9
    return v0

    :cond_ca
    move v0, v3

    goto :goto_c9

    :cond_cc
    move v5, v6

    move v6, v8

    goto :goto_a1
.end method

.method public a(ILandroid/graphics/Rect;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 546
    if-eqz p2, :cond_17

    .line 547
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 548
    invoke-virtual {p0, p1}, LCl;->a(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 549
    iget v0, p0, LCl;->c:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 550
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LCl;->a(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 552
    :cond_17
    invoke-virtual {p0, p1}, LCl;->l(I)I

    move-result v0

    return v0
.end method

.method public abstract a(I)LCm;
.end method

.method public final a()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, LCl;->a:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final a(I)Landroid/text/Layout$Alignment;
    .registers 7
    .parameter

    .prologue
    .line 1379
    iget-object v1, p0, LCl;->a:Landroid/text/Layout$Alignment;

    .line 1381
    iget-boolean v0, p0, LCl;->a:Z

    if-eqz v0, :cond_26

    .line 1382
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 1383
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v2

    invoke-virtual {p0, p1}, LCl;->i(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    invoke-static {v0, v2, v3, v4}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/AlignmentSpan;

    .line 1386
    array-length v2, v0

    .line 1387
    if-lez v2, :cond_26

    .line 1388
    add-int/lit8 v1, v2, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1392
    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    goto :goto_25
.end method

.method public final a()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, LCl;->b:Landroid/text/TextPaint;

    return-object v0
.end method

.method public a(I)Landroid/util/Pair;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1192
    invoke-virtual {p0, p1}, LCl;->h(I)I

    move-result v0

    .line 1193
    invoke-virtual {p0, v0}, LCl;->l(I)I

    move-result v2

    .line 1194
    iget-boolean v0, p0, LCl;->a:Z

    if-nez v0, :cond_2b

    .line 1195
    new-instance v0, Landroid/util/Pair;

    int-to-float v1, v2

    iget-object v3, p0, LCl;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    int-to-float v2, v2

    iget-object v3, p0, LCl;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1214
    :goto_2a
    return-object v0

    .line 1197
    :cond_2b
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 1199
    if-eqz p1, :cond_3d

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3d

    .line 1200
    add-int/lit8 p1, p1, -0x1

    .line 1202
    :cond_3d
    add-int/lit8 v3, p1, 0x1

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v0, p1, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 1203
    array-length v3, v0

    if-nez v3, :cond_68

    .line 1204
    new-instance v0, Landroid/util/Pair;

    int-to-float v1, v2

    iget-object v3, p0, LCl;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    int-to-float v2, v2

    iget-object v3, p0, LCl;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    .line 1207
    :cond_68
    iget-object v3, p0, LCl;->a:Landroid/text/TextPaint;

    .line 1208
    iget-object v4, p0, LCl;->b:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1209
    iput v1, v3, Landroid/text/TextPaint;->baselineShift:I

    .line 1210
    array-length v4, v0

    :goto_72
    if-ge v1, v4, :cond_7c

    aget-object v5, v0, v1

    .line 1211
    invoke-virtual {v5, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1210
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 1213
    :cond_7c
    iget v0, v3, Landroid/text/TextPaint;->baselineShift:I

    add-int v1, v2, v0

    .line 1214
    new-instance v0, Landroid/util/Pair;

    int-to-float v2, v1

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method public final a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract a(I)S
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 496
    iget v0, p0, LCl;->c:I

    if-ge p1, v0, :cond_c

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_c
    iput p1, p0, LCl;->c:I

    .line 501
    return-void
.end method

.method public a(IILandroid/graphics/Path;)V
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1329
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1372
    :goto_9
    return-void

    .line 1331
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_ec

    move/from16 v5, p1

    move/from16 v4, p2

    .line 1337
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, LCl;->h(I)I

    move-result v3

    .line 1338
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, LCl;->h(I)I

    move-result v14

    .line 1340
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->a(I)I

    move-result v6

    .line 1341
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->k(I)I

    move-result v7

    .line 1343
    if-ne v3, v14, :cond_36

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    .line 1344
    invoke-direct/range {v2 .. v8}, LCl;->a(IIIIILandroid/graphics/Path;)V

    goto :goto_9

    .line 1346
    :cond_36
    move-object/from16 v0, p0

    iget v2, v0, LCl;->c:I

    int-to-float v15, v2

    .line 1348
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->i(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->k(I)I

    move-result v12

    move-object/from16 v7, p0

    move v8, v3

    move v9, v4

    move v11, v6

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, LCl;->a(IIIIILandroid/graphics/Path;)V

    .line 1350
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->d(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8e

    .line 1351
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->c(I)F

    move-result v7

    int-to-float v8, v6

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->k(I)I

    move-result v2

    int-to-float v10, v2

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v6, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1356
    :goto_70
    add-int/lit8 v2, v3, 0x1

    :goto_72
    if-ge v2, v14, :cond_a5

    .line 1357
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, LCl;->a(I)I

    move-result v3

    .line 1358
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, LCl;->k(I)I

    move-result v4

    .line 1359
    const/4 v7, 0x0

    int-to-float v8, v3

    int-to-float v10, v4

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v6, p3

    move v9, v15

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1356
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 1353
    :cond_8e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->d(I)F

    move-result v7

    int-to-float v8, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->k(I)I

    move-result v2

    int-to-float v10, v2

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v6, p3

    move v9, v15

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_70

    .line 1362
    :cond_a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->a(I)I

    move-result v6

    .line 1363
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->k(I)I

    move-result v7

    .line 1365
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->c(I)I

    move-result v4

    move-object/from16 v2, p0

    move v3, v14

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, LCl;->a(IIIIILandroid/graphics/Path;)V

    .line 1367
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->d(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_da

    .line 1368
    int-to-float v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->d(I)F

    move-result v5

    int-to-float v6, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v2, p3

    move v3, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    .line 1370
    :cond_da
    const/4 v3, 0x0

    int-to-float v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->c(I)F

    move-result v5

    int-to-float v6, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    :cond_ec
    move/from16 v5, p2

    move/from16 v4, p1

    goto/16 :goto_14
.end method

.method public a(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v2, 0x3f00

    .line 1223
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1225
    invoke-virtual {p0, p1}, LCl;->a(I)Landroid/util/Pair;

    move-result-object v1

    .line 1227
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 1228
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v4

    .line 1230
    invoke-virtual {p0, p1}, LCl;->a(I)F

    move-result v0

    sub-float v1, v0, v2

    .line 1231
    invoke-virtual {p0, p1}, LCl;->c(I)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p0, p1}, LCl;->b(I)F

    move-result v0

    sub-float/2addr v0, v2

    .line 1233
    :goto_2c
    invoke-static {p3, v9}, LDW;->a(Ljava/lang/CharSequence;I)I

    move-result v3

    const/16 v6, 0x800

    invoke-static {p3, v6}, LDW;->a(Ljava/lang/CharSequence;I)I

    move-result v6

    or-int/2addr v6, v3

    .line 1236
    invoke-static {p3, v10}, LDW;->a(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 1237
    const/4 v3, 0x0

    .line 1239
    if-nez v6, :cond_40

    if-eqz v7, :cond_4a

    .line 1240
    :cond_40
    sub-int v3, v5, v4

    shr-int/lit8 v3, v3, 0x2

    .line 1242
    if-eqz v7, :cond_47

    add-int/2addr v4, v3

    .line 1243
    :cond_47
    if-eqz v6, :cond_4a

    sub-int/2addr v5, v3

    .line 1246
    :cond_4a
    cmpg-float v8, v1, v2

    if-gez v8, :cond_4f

    move v1, v2

    .line 1247
    :cond_4f
    cmpg-float v8, v0, v2

    if-gez v8, :cond_54

    move v0, v2

    .line 1249
    :cond_54
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_9a

    .line 1250
    int-to-float v8, v4

    invoke-virtual {p2, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1251
    int-to-float v8, v5

    invoke-virtual {p2, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1260
    :goto_62
    if-ne v6, v10, :cond_b3

    .line 1261
    int-to-float v6, v5

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1262
    int-to-float v6, v3

    sub-float v6, v0, v6

    add-int v8, v5, v3

    int-to-float v8, v8

    invoke-virtual {p2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1263
    int-to-float v6, v5

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1264
    int-to-float v6, v3

    add-float/2addr v0, v6

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1276
    :cond_7c
    :goto_7c
    if-ne v7, v10, :cond_e2

    .line 1277
    int-to-float v0, v4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1278
    int-to-float v0, v3

    sub-float v0, v1, v0

    sub-int v2, v4, v3

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1279
    int-to-float v0, v4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1280
    int-to-float v0, v3

    add-float/2addr v0, v1

    sub-int v1, v4, v3

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1291
    :cond_97
    :goto_97
    return-void

    :cond_98
    move v0, v1

    .line 1231
    goto :goto_2c

    .line 1253
    :cond_9a
    int-to-float v8, v4

    invoke-virtual {p2, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1254
    add-int v8, v4, v5

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1256
    add-int v8, v4, v5

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1257
    int-to-float v8, v5

    invoke-virtual {p2, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_62

    .line 1265
    :cond_b3
    if-ne v6, v9, :cond_7c

    .line 1266
    int-to-float v6, v5

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1267
    int-to-float v6, v3

    sub-float v6, v0, v6

    add-int v8, v5, v3

    int-to-float v8, v8

    invoke-virtual {p2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1269
    int-to-float v6, v3

    sub-float v6, v0, v6

    add-int v8, v5, v3

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-virtual {p2, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1270
    int-to-float v6, v3

    add-float/2addr v6, v0

    add-int v8, v5, v3

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-virtual {p2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1272
    int-to-float v6, v3

    add-float/2addr v6, v0

    add-int v8, v5, v3

    int-to-float v8, v8

    invoke-virtual {p2, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1273
    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7c

    .line 1281
    :cond_e2
    if-ne v7, v9, :cond_97

    .line 1282
    int-to-float v0, v4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1283
    int-to-float v0, v3

    sub-float v0, v1, v0

    sub-int v5, v4, v3

    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1285
    int-to-float v0, v3

    sub-float v0, v1, v0

    sub-int v5, v4, v3

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1286
    int-to-float v0, v3

    add-float/2addr v0, v1

    sub-int v5, v4, v3

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1288
    int-to-float v0, v3

    add-float/2addr v0, v1

    sub-int v2, v4, v3

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1289
    int-to-float v0, v4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_97
.end method

.method public a(LCQ;II)V
    .registers 49
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const/4 v4, 0x0

    .line 199
    invoke-virtual/range {p0 .. p0}, LCl;->a()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->a(I)I

    move-result v3

    .line 201
    move/from16 v0, p2

    if-le v0, v4, :cond_2af

    .line 204
    :goto_f
    move/from16 v0, p3

    if-ge v0, v3, :cond_2ab

    .line 208
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v35

    .line 209
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v40

    .line 211
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, LCl;->a(I)I

    move-result v9

    .line 212
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, LCl;->c(I)I

    move-result v8

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, LCl;->b:Landroid/text/TextPaint;

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, LCl;->a:Ljava/lang/CharSequence;

    .line 216
    move-object/from16 v0, p0

    iget v7, v0, LCl;->c:I

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, LCl;->a:Z

    move/from16 v41, v0

    .line 219
    sget-object v6, LCl;->a:[Landroid/text/style/ParagraphStyle;

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v3, 0x0

    .line 227
    if-eqz v41, :cond_2a4

    move-object v15, v11

    .line 228
    check-cast v15, Landroid/text/Spanned;

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, LCl;->i(I)I

    move-result v19

    move/from16 v14, v35

    move v3, v4

    move v12, v8

    move-object v4, v6

    move v8, v9

    .line 230
    :goto_5c
    move/from16 v0, v40

    if-gt v14, v0, :cond_b0

    .line 232
    add-int/lit8 v6, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, LCl;->c(I)I

    move-result v13

    .line 236
    add-int/lit8 v6, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, LCl;->a(I)I

    move-result v10

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, LCl;->b(I)I

    move-result v6

    sub-int v9, v10, v6

    .line 240
    if-lt v12, v3, :cond_29e

    .line 243
    const-class v3, LEj;

    move/from16 v0, v19

    invoke-interface {v15, v12, v0, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 246
    const-class v3, LEj;

    invoke-static {v15, v12, v13, v3}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    move/from16 v16, v4

    move-object/from16 v17, v3

    .line 249
    :goto_8e
    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_91
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_a7

    .line 250
    aget-object v3, v17, v18

    check-cast v3, LEj;

    .line 252
    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v14}, LEj;->a(LCQ;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 249
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    goto :goto_91

    .line 230
    :cond_a7
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    move v12, v13

    move v8, v10

    goto :goto_5c

    .line 257
    :cond_b0
    const/4 v3, 0x0

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, LCl;->a(I)I

    move-result v7

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, LCl;->c(I)I

    move-result v6

    .line 260
    sget-object v4, LCl;->a:[Landroid/text/style/ParagraphStyle;

    move v8, v7

    move/from16 v7, v19

    .line 263
    :goto_c6
    move-object/from16 v0, p0

    iget-object v13, v0, LCl;->a:Landroid/text/Layout$Alignment;

    .line 264
    const/4 v14, 0x0

    .line 265
    const/4 v9, 0x0

    .line 267
    invoke-static {}, LCM;->a()LCM;

    move-result-object v42

    move/from16 v15, v35

    move/from16 v36, v6

    move/from16 v38, v8

    move-object v8, v4

    move v6, v3

    move v4, v9

    .line 272
    :goto_d9
    move/from16 v0, v40

    if-gt v15, v0, :cond_286

    .line 276
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->c(I)I

    move-result v37

    .line 277
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v15, v1, v2}, LCl;->b(III)I

    move-result v19

    .line 280
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LCl;->a(I)I

    move-result v39

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, LCl;->b(I)I

    move-result v3

    sub-int v43, v39, v3

    .line 284
    move/from16 v0, v43

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v15, v3}, LCQ;->a(IF)V

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, LCl;->d(I)I

    move-result v16

    .line 287
    const/16 v17, 0x0

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, LCl;->c:I

    move/from16 v18, v0

    .line 290
    if-eqz v41, :cond_299

    move-object v3, v11

    .line 291
    check-cast v3, Landroid/text/Spanned;

    .line 292
    if-eqz v36, :cond_126

    add-int/lit8 v9, v36, -0x1

    invoke-interface {v11, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1d5

    :cond_126
    const/16 v31, 0x1

    .line 304
    :goto_128
    move/from16 v0, v36

    if-lt v0, v6, :cond_294

    move/from16 v0, v35

    if-eq v15, v0, :cond_132

    if-eqz v31, :cond_294

    .line 305
    :cond_132
    const-class v4, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v36

    invoke-interface {v3, v0, v7, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 306
    const-class v4, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v36

    invoke-static {v3, v0, v9, v4}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 308
    move-object/from16 v0, p0

    iget-object v6, v0, LCl;->a:Landroid/text/Layout$Alignment;

    .line 309
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    :goto_14b
    if-ltz v8, :cond_15b

    .line 310
    aget-object v10, v4, v8

    instance-of v10, v10, Landroid/text/style/AlignmentSpan;

    if-eqz v10, :cond_1d9

    .line 311
    aget-object v6, v4, v8

    check-cast v6, Landroid/text/style/AlignmentSpan;

    invoke-interface {v6}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 316
    :cond_15b
    const/4 v8, 0x0

    move-object v13, v6

    move v6, v8

    move v8, v9

    move-object v9, v4

    .line 321
    :goto_160
    array-length v0, v9

    move/from16 v44, v0

    .line 322
    const/4 v4, 0x0

    move/from16 v34, v4

    move/from16 v23, v18

    move/from16 v10, v17

    :goto_16a
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_1fe

    .line 323
    aget-object v4, v9, v34

    instance-of v4, v4, LEh;

    if-eqz v4, :cond_28e

    .line 324
    aget-object v20, v9, v34

    check-cast v20, LEh;

    .line 326
    move-object/from16 v0, v20

    instance-of v4, v0, LEi;

    if-eqz v4, :cond_28a

    move-object/from16 v4, v20

    .line 327
    check-cast v4, LEi;

    invoke-interface {v4}, LEi;->a()I

    move-result v4

    .line 328
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, LCl;->h(I)I

    move-result v12

    .line 329
    add-int/2addr v4, v12

    if-ge v15, v4, :cond_1dd

    const/4 v4, 0x1

    .line 332
    :goto_198
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, LEh;->a(Z)I

    move-result v4

    .line 334
    const/4 v12, -0x1

    move/from16 v0, v16

    if-ne v0, v12, :cond_1df

    .line 336
    sub-int v18, v23, v4

    move/from16 v17, v10

    .line 343
    :goto_1a7
    move-object/from16 v0, v20

    instance-of v4, v0, LBX;

    if-eqz v4, :cond_1e6

    move-object/from16 v12, p0

    .line 344
    invoke-direct/range {v12 .. v18}, LCl;->a(Landroid/text/Layout$Alignment;LCp;IIII)I

    move-result v33

    .line 345
    check-cast v20, LBX;

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    move/from16 v24, v16

    move/from16 v25, v38

    move/from16 v26, v43

    move/from16 v27, v39

    move-object/from16 v28, v11

    move/from16 v29, v36

    move/from16 v30, v19

    move-object/from16 v32, p0

    invoke-interface/range {v20 .. v33}, LBX;->a(LCQ;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLCl;I)V

    .line 322
    :goto_1cc
    add-int/lit8 v4, v34, 0x1

    move/from16 v34, v4

    move/from16 v23, v18

    move/from16 v10, v17

    goto :goto_16a

    .line 292
    :cond_1d5
    const/16 v31, 0x0

    goto/16 :goto_128

    .line 309
    :cond_1d9
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_14b

    .line 329
    :cond_1dd
    const/4 v4, 0x0

    goto :goto_198

    .line 339
    :cond_1df
    add-int v17, v10, v4

    move/from16 v18, v23

    move/from16 v23, v10

    goto :goto_1a7

    :cond_1e6
    move-object/from16 v21, p1

    move-object/from16 v22, v5

    move/from16 v24, v16

    move/from16 v25, v38

    move/from16 v26, v43

    move/from16 v27, v39

    move-object/from16 v28, v11

    move/from16 v29, v36

    move/from16 v30, v19

    move-object/from16 v32, p0

    .line 349
    invoke-interface/range {v20 .. v32}, LEh;->a(LCQ;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLCl;)V

    goto :goto_1cc

    :cond_1fe
    move/from16 v18, v23

    move/from16 v17, v10

    move v3, v6

    .line 357
    :goto_203
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, LCl;->b(I)Z

    move-result v27

    .line 359
    if-eqz v27, :cond_217

    if-nez v3, :cond_217

    .line 360
    if-nez v14, :cond_252

    .line 361
    new-instance v14, LCp;

    const/16 v3, 0x14

    invoke-direct {v14, v3, v9}, LCp;-><init>(I[Ljava/lang/Object;)V

    .line 365
    :goto_216
    const/4 v3, 0x1

    :cond_217
    move-object/from16 v12, p0

    .line 368
    invoke-direct/range {v12 .. v18}, LCl;->a(Landroid/text/Layout$Alignment;LCp;IIII)I

    move-result v4

    .line 370
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, LCl;->a(I)LCm;

    move-result-object v26

    .line 371
    sget-object v6, LCl;->a:LCm;

    move-object/from16 v0, v26

    if-ne v0, v6, :cond_258

    if-nez v41, :cond_258

    if-nez v27, :cond_258

    .line 373
    int-to-float v0, v4

    move/from16 v20, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, v11

    move/from16 v18, v36

    move-object/from16 v22, v5

    invoke-interface/range {v16 .. v23}, LCQ;->a(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 381
    :goto_242
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, LCQ;->a(I)V

    .line 272
    add-int/lit8 v15, v15, 0x1

    move v4, v3

    move v6, v8

    move/from16 v36, v37

    move/from16 v38, v39

    move-object v8, v9

    goto/16 :goto_d9

    .line 363
    :cond_252
    const/16 v3, 0x14

    invoke-virtual {v14, v3, v9}, LCp;->a(I[Ljava/lang/Object;)V

    goto :goto_216

    .line 375
    :cond_258
    move-object/from16 v0, p0

    iget v6, v0, LCl;->c:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v6, v1}, LCl;->a(III)F

    move-result v29

    move-object/from16 v20, v42

    move-object/from16 v21, v5

    move-object/from16 v22, v11

    move/from16 v23, v36

    move/from16 v24, v19

    move/from16 v25, v16

    move-object/from16 v28, v14

    .line 376
    invoke-virtual/range {v20 .. v29}, LCM;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILCm;ZLCp;F)V

    .line 378
    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v16, v42

    move-object/from16 v17, p1

    move/from16 v19, v38

    move/from16 v20, v43

    move/from16 v21, v39

    invoke-virtual/range {v16 .. v21}, LCM;->a(LCQ;FIII)V

    goto :goto_242

    .line 384
    :cond_286
    invoke-static/range {v42 .. v42}, LCM;->a(LCM;)LCM;

    .line 385
    return-void

    :cond_28a
    move/from16 v4, v31

    goto/16 :goto_198

    :cond_28e
    move/from16 v18, v23

    move/from16 v17, v10

    goto/16 :goto_1cc

    :cond_294
    move-object v9, v8

    move v8, v6

    move v6, v4

    goto/16 :goto_160

    :cond_299
    move v3, v4

    move-object v9, v8

    move v8, v6

    goto/16 :goto_203

    :cond_29e
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_8e

    :cond_2a4
    move v7, v3

    move v3, v4

    move-object v4, v6

    move v6, v8

    move v8, v9

    goto/16 :goto_c6

    :cond_2ab
    move/from16 p3, v3

    goto/16 :goto_13

    :cond_2af
    move/from16 p2, v4

    goto/16 :goto_f
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 168
    sget-object v1, LCl;->a:Landroid/graphics/Rect;

    monitor-enter v1

    .line 169
    :try_start_4
    sget-object v0, LCl;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 170
    monitor-exit v1

    .line 192
    :cond_d
    :goto_d
    return-void

    .line 173
    :cond_e
    sget-object v0, LCl;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 174
    sget-object v2, LCl;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 175
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_32

    .line 177
    new-instance v1, LCb;

    invoke-direct {v1, p1}, LCb;-><init>(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1, v0, v2}, LCl;->a(LCQ;II)V

    .line 181
    if-eqz p2, :cond_d

    .line 182
    if-eqz p4, :cond_27

    .line 183
    int-to-float v0, p4

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    :cond_27
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 188
    if-eqz p4, :cond_d

    .line 189
    neg-int v0, p4

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_d

    .line 175
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public abstract a(I)Z
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 528
    iget v0, p0, LCl;->b:F

    return v0
.end method

.method public b(I)F
    .registers 3
    .parameter

    .prologue
    .line 727
    invoke-direct {p0, p1}, LCl;->d(I)Z

    move-result v0

    .line 728
    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, p1, v0}, LCl;->a(IZ)F

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()I
    .registers 2

    .prologue
    .line 487
    iget v0, p0, LCl;->c:I

    return v0
.end method

.method public abstract b(I)I
.end method

.method public abstract b(I)S
.end method

.method public abstract b(I)Z
.end method

.method public c(I)F
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v1

    .line 773
    invoke-virtual {p0, p1}, LCl;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 775
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_1b

    .line 776
    if-ne v1, v4, :cond_1a

    .line 777
    invoke-virtual {p0, p1}, LCl;->p(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, LCl;->e(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 790
    :cond_1a
    :goto_1a
    return v0

    .line 780
    :cond_1b
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_2a

    .line 781
    if-eq v1, v4, :cond_1a

    .line 784
    iget v0, p0, LCl;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, LCl;->e(I)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_1a

    .line 786
    :cond_2a
    invoke-virtual {p0, p1}, LCl;->o(I)I

    move-result v0

    .line 787
    invoke-virtual {p0, p1}, LCl;->p(I)I

    move-result v1

    .line 788
    invoke-virtual {p0, p1}, LCl;->e(I)F

    move-result v2

    float-to-int v2, v2

    and-int/lit8 v2, v2, -0x2

    .line 790
    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1a
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 479
    iget v0, p0, LCl;->c:I

    return v0
.end method

.method public abstract c(I)I
.end method

.method public c(I)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 638
    invoke-virtual {p0, p1}, LCl;->h(I)I

    move-result v0

    .line 639
    invoke-virtual {p0, v0}, LCl;->a(I)LCm;

    move-result-object v3

    .line 640
    sget-object v4, LCl;->a:LCm;

    if-eq v3, v4, :cond_12

    sget-object v4, LCl;->b:LCm;

    if-ne v3, v4, :cond_13

    .line 659
    :cond_12
    :goto_12
    return v1

    .line 644
    :cond_13
    iget-object v4, v3, LCm;->a:[I

    .line 645
    invoke-virtual {p0, v0}, LCl;->c(I)I

    move-result v5

    .line 646
    invoke-virtual {p0, v0}, LCl;->i(I)I

    move-result v3

    .line 647
    if-eq p1, v5, :cond_21

    if-ne p1, v3, :cond_3d

    .line 648
    :cond_21
    invoke-virtual {p0, v0}, LCl;->d(I)I

    move-result v0

    if-ne v0, v2, :cond_37

    move v3, v1

    .line 649
    :goto_28
    if-ne p1, v5, :cond_39

    move v0, v1

    .line 650
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    aget v0, v4, v0

    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v0, v0, 0x3f

    if-eq v0, v3, :cond_12

    move v1, v2

    goto :goto_12

    :cond_37
    move v3, v2

    .line 648
    goto :goto_28

    .line 649
    :cond_39
    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    goto :goto_2b

    .line 653
    :cond_3d
    sub-int v3, p1, v5

    move v0, v1

    .line 654
    :goto_40
    array-length v5, v4

    if-ge v0, v5, :cond_12

    .line 655
    aget v5, v4, v0

    if-ne v3, v5, :cond_49

    move v1, v2

    .line 656
    goto :goto_12

    .line 654
    :cond_49
    add-int/lit8 v0, v0, 0x2

    goto :goto_40
.end method

.method public d(I)F
    .registers 6
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 799
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v0

    .line 800
    invoke-virtual {p0, p1}, LCl;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 802
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_1e

    .line 803
    if-ne v0, v3, :cond_13

    .line 804
    iget v0, p0, LCl;->c:I

    int-to-float v0, v0

    .line 817
    :goto_12
    return v0

    .line 806
    :cond_13
    invoke-virtual {p0, p1}, LCl;->o(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, LCl;->e(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_12

    .line 807
    :cond_1e
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_2d

    .line 808
    if-ne v0, v3, :cond_29

    .line 809
    invoke-virtual {p0, p1}, LCl;->e(I)F

    move-result v0

    goto :goto_12

    .line 811
    :cond_29
    iget v0, p0, LCl;->c:I

    int-to-float v0, v0

    goto :goto_12

    .line 813
    :cond_2d
    invoke-virtual {p0, p1}, LCl;->o(I)I

    move-result v0

    .line 814
    invoke-virtual {p0, p1}, LCl;->p(I)I

    move-result v1

    .line 815
    invoke-virtual {p0, p1}, LCl;->e(I)F

    move-result v2

    float-to-int v2, v2

    and-int/lit8 v2, v2, -0x2

    .line 817
    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_12
.end method

.method public d()I
    .registers 2

    .prologue
    .line 507
    invoke-virtual {p0}, LCl;->a()I

    move-result v0

    invoke-virtual {p0, v0}, LCl;->a(I)I

    move-result v0

    return v0
.end method

.method public abstract d(I)I
.end method

.method public e(I)F
    .registers 5
    .parameter

    .prologue
    .line 826
    invoke-virtual {p0, p1}, LCl;->q(I)I

    move-result v0

    int-to-float v1, v0

    .line 827
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LCl;->b(IZ)F

    move-result v0

    .line 828
    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    neg-float v0, v0

    goto :goto_10
.end method

.method public abstract e(I)I
.end method

.method public f(I)F
    .registers 5
    .parameter

    .prologue
    .line 836
    invoke-virtual {p0, p1}, LCl;->q(I)I

    move-result v0

    int-to-float v1, v0

    .line 837
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LCl;->b(IZ)F

    move-result v0

    .line 838
    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    neg-float v0, v0

    goto :goto_10
.end method

.method public abstract f(I)I
.end method

.method public g(I)I
    .registers 6
    .parameter

    .prologue
    .line 916
    invoke-virtual {p0}, LCl;->a()I

    move-result v1

    const/4 v0, -0x1

    move v2, v1

    .line 918
    :goto_6
    sub-int v1, v2, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_19

    .line 919
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 921
    invoke-virtual {p0, v1}, LCl;->a(I)I

    move-result v3

    if-le v3, p1, :cond_17

    move v2, v1

    .line 922
    goto :goto_6

    :cond_17
    move v0, v1

    .line 924
    goto :goto_6

    .line 927
    :cond_19
    if-gez v0, :cond_1c

    .line 928
    const/4 v0, 0x0

    .line 930
    :cond_1c
    return v0
.end method

.method public h(I)I
    .registers 6
    .parameter

    .prologue
    .line 939
    invoke-virtual {p0}, LCl;->a()I

    move-result v1

    const/4 v0, -0x1

    move v2, v1

    .line 941
    :goto_6
    sub-int v1, v2, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_19

    .line 942
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 944
    invoke-virtual {p0, v1}, LCl;->c(I)I

    move-result v3

    if-le v3, p1, :cond_17

    move v2, v1

    .line 945
    goto :goto_6

    :cond_17
    move v0, v1

    .line 947
    goto :goto_6

    .line 950
    :cond_19
    if-gez v0, :cond_1c

    .line 951
    const/4 v0, 0x0

    .line 953
    :cond_1c
    return v0
.end method

.method public final i(I)I
    .registers 3
    .parameter

    .prologue
    .line 1033
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LCl;->c(I)I

    move-result v0

    return v0
.end method

.method public j(I)I
    .registers 4
    .parameter

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, LCl;->c(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, LCl;->b(III)I

    move-result v0

    return v0
.end method

.method public final k(I)I
    .registers 3
    .parameter

    .prologue
    .line 1071
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LCl;->a(I)I

    move-result v0

    return v0
.end method

.method public final l(I)I
    .registers 4
    .parameter

    .prologue
    .line 1079
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LCl;->a(I)I

    move-result v0

    invoke-virtual {p0, p1}, LCl;->b(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public m(I)I
    .registers 3
    .parameter

    .prologue
    .line 1092
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LCl;->a(IZ)I

    move-result v0

    return v0
.end method

.method public n(I)I
    .registers 3
    .parameter

    .prologue
    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LCl;->a(IZ)I

    move-result v0

    return v0
.end method

.method public final o(I)I
    .registers 5
    .parameter

    .prologue
    .line 1399
    const/4 v0, 0x0

    .line 1400
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v1

    .line 1401
    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    iget-boolean v1, p0, LCl;->a:Z

    if-nez v1, :cond_d

    .line 1404
    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0, p1}, LCl;->q(I)I

    move-result v0

    goto :goto_c
.end method

.method public final p(I)I
    .registers 5
    .parameter

    .prologue
    .line 1411
    iget v0, p0, LCl;->c:I

    .line 1412
    invoke-virtual {p0, p1}, LCl;->d(I)I

    move-result v1

    .line 1413
    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget-boolean v1, p0, LCl;->a:Z

    if-nez v1, :cond_e

    .line 1416
    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0, p1}, LCl;->q(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_d
.end method

.method public q(I)I
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1428
    iget-boolean v0, p0, LCl;->a:Z

    if-nez v0, :cond_7

    .line 1458
    :cond_6
    :goto_6
    return v5

    .line 1431
    :cond_7
    iget-object v0, p0, LCl;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 1433
    invoke-virtual {p0, p1}, LCl;->c(I)I

    move-result v2

    .line 1434
    invoke-virtual {p0, p1}, LCl;->i(I)I

    move-result v1

    .line 1435
    const-class v3, LEh;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 1436
    const-class v3, LEh;

    invoke-static {v0, v2, v1, v3}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LEh;

    .line 1438
    array-length v3, v1

    if-eqz v3, :cond_6

    .line 1444
    if-eqz v2, :cond_30

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5a

    :cond_30
    move v4, v6

    :goto_31
    move v7, v5

    move v8, v5

    .line 1446
    :goto_33
    array-length v2, v1

    if-ge v7, v2, :cond_5e

    .line 1447
    aget-object v3, v1, v7

    .line 1449
    instance-of v2, v3, LEi;

    if-eqz v2, :cond_60

    .line 1450
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1451
    invoke-virtual {p0, v2}, LCl;->h(I)I

    move-result v9

    move-object v2, v3

    .line 1452
    check-cast v2, LEi;

    invoke-interface {v2}, LEi;->a()I

    move-result v2

    .line 1453
    add-int/2addr v2, v9

    if-ge p1, v2, :cond_5c

    move v2, v6

    .line 1455
    :goto_4f
    invoke-interface {v3, v2}, LEh;->a(Z)I

    move-result v2

    add-int v3, v8, v2

    .line 1446
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    goto :goto_33

    :cond_5a
    move v4, v5

    .line 1444
    goto :goto_31

    :cond_5c
    move v2, v5

    .line 1453
    goto :goto_4f

    :cond_5e
    move v5, v8

    .line 1458
    goto :goto_6

    :cond_60
    move v2, v4

    goto :goto_4f
.end method
