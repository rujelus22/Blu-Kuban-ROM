.class public LAS;
.super Ljava/lang/Object;
.source "RichTextBulletSpan.java"

# interfaces
.implements LBX;


# instance fields
.field private final a:D

.field private a:F

.field private a:I

.field private final a:LBm;

.field private final a:Landroid/text/TextPaint;

.field private final a:Ljava/lang/String;

.field private final a:LwH;

.field private final b:D

.field private b:F

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(DDLjava/lang/String;LBm;LwH;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, LAS;->a:Landroid/text/TextPaint;

    .line 45
    iput v1, p0, LAS;->b:F

    .line 46
    iput v1, p0, LAS;->c:F

    .line 47
    iput v1, p0, LAS;->d:F

    .line 48
    iput v1, p0, LAS;->e:F

    .line 49
    iput v1, p0, LAS;->f:F

    .line 50
    iput v2, p0, LAS;->a:I

    .line 51
    iput v2, p0, LAS;->b:I

    .line 58
    iput-wide p1, p0, LAS;->a:D

    .line 59
    iput-wide p3, p0, LAS;->b:D

    .line 60
    iput-object p5, p0, LAS;->a:Ljava/lang/String;

    .line 61
    iput-object p6, p0, LAS;->a:LBm;

    .line 62
    iput-object p7, p0, LAS;->a:LwH;

    .line 63
    iget-object v0, p0, LAS;->a:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 64
    invoke-direct {p0}, LAS;->a()V

    .line 65
    return-void
.end method

.method private a()F
    .registers 5

    .prologue
    .line 132
    const/4 v0, 0x0

    iget v1, p0, LAS;->e:F

    iget v2, p0, LAS;->a:F

    const v3, -0x40cccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private a(D)F
    .registers 9
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 136
    const-wide v0, 0x3ff4cccccccccccdL

    const-wide/high16 v2, 0x4042

    div-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    sub-double v0, v4, v0

    .line 137
    iget v2, p0, LAS;->a:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 138
    iget v1, p0, LAS;->f:F

    float-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-float v1, v1

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 68
    iget-object v0, p0, LAS;->a:LwH;

    invoke-interface {v0}, LwH;->a()Landroid/content/Context;

    move-result-object v0

    .line 69
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 70
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v0, p0, LAS;->f:F

    iget-object v2, p0, LAS;->a:LwH;

    invoke-interface {v2}, LwH;->a()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_30

    iget v0, p0, LAS;->a:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v2, :cond_30

    .line 111
    :goto_2f
    return-void

    .line 77
    :cond_30
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, LAS;->a:I

    .line 78
    iget-object v0, p0, LAS;->a:LwH;

    invoke-interface {v0}, LwH;->a()F

    move-result v0

    iput v0, p0, LAS;->f:F

    .line 79
    const/high16 v0, 0x4210

    iget v1, p0, LAS;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, LAS;->a:F

    .line 81
    iget-object v0, p0, LAS;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, LAS;->a:LBm;

    if-eqz v0, :cond_82

    .line 82
    iget-object v0, p0, LAS;->a:LBm;

    invoke-virtual {v0}, LBm;->a()LEm;

    move-result-object v0

    iget-object v1, p0, LAS;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, LEm;->updateDrawState(Landroid/text/TextPaint;)V

    .line 83
    iget-object v0, p0, LAS;->a:Landroid/text/TextPaint;

    iget-object v1, p0, LAS;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40a0

    iget v2, p0, LAS;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LAS;->c:F

    .line 84
    iget v0, p0, LAS;->a:F

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    iput v0, p0, LAS;->b:F

    .line 85
    :goto_72
    iget v0, p0, LAS;->b:F

    iget v1, p0, LAS;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_82

    .line 86
    iget v0, p0, LAS;->b:F

    iget v1, p0, LAS;->a:F

    add-float/2addr v0, v1

    iput v0, p0, LAS;->b:F

    goto :goto_72

    .line 92
    :cond_82
    iget-wide v0, p0, LAS;->a:D

    cmpl-double v0, v0, v3

    if-lez v0, :cond_c0

    .line 93
    iget-wide v0, p0, LAS;->a:D

    invoke-direct {p0, v0, v1}, LAS;->a(D)F

    move-result v0

    iput v0, p0, LAS;->d:F

    .line 99
    :goto_90
    iget-wide v0, p0, LAS;->b:D

    cmpl-double v0, v0, v3

    if-lez v0, :cond_c3

    .line 100
    iget-wide v0, p0, LAS;->b:D

    invoke-direct {p0, v0, v1}, LAS;->a(D)F

    move-result v0

    iput v0, p0, LAS;->e:F

    .line 104
    :goto_9e
    iget-object v0, p0, LAS;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, LAS;->a:LBm;

    if-eqz v0, :cond_c6

    .line 106
    iget v0, p0, LAS;->e:F

    iget v1, p0, LAS;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LAS;->e:F

    .line 107
    iget v0, p0, LAS;->b:F

    invoke-direct {p0}, LAS;->a()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, LAS;->b:I

    goto/16 :goto_2f

    .line 96
    :cond_c0
    iput v5, p0, LAS;->d:F

    goto :goto_90

    .line 102
    :cond_c3
    iput v5, p0, LAS;->e:F

    goto :goto_9e

    .line 109
    :cond_c6
    iget v0, p0, LAS;->e:F

    float-to-int v0, v0

    iput v0, p0, LAS;->b:I

    goto/16 :goto_2f
.end method


# virtual methods
.method public a(Z)I
    .registers 3
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, LAS;->a()V

    .line 124
    if-eqz p1, :cond_8

    .line 125
    iget v0, p0, LAS;->b:I

    .line 127
    :goto_7
    return v0

    :cond_8
    iget v0, p0, LAS;->d:F

    float-to-int v0, v0

    goto :goto_7
.end method

.method public a(LCQ;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLCl;)V
    .registers 27
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
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p3

    invoke-virtual/range {v0 .. v13}, LAS;->a(LCQ;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLCl;I)V

    .line 119
    return-void
.end method

.method public a(LCQ;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLCl;I)V
    .registers 23
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
    .line 147
    iget-object v1, p0, LAS;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, LAS;->a:LBm;

    if-nez v1, :cond_d

    .line 163
    :cond_c
    :goto_c
    return-void

    .line 150
    :cond_d
    invoke-direct {p0}, LAS;->a()V

    .line 151
    check-cast p8, Landroid/text/Spanned;

    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 153
    move/from16 v0, p9

    if-ne v0, v1, :cond_c

    .line 154
    iget-object v1, p0, LAS;->a:LBm;

    invoke-virtual {v1}, LBm;->a()LEm;

    move-result-object v1

    iget-object v2, p0, LAS;->a:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, LEm;->updateDrawState(Landroid/text/TextPaint;)V

    .line 156
    const/4 v1, 0x1

    if-ne p4, v1, :cond_43

    .line 157
    move/from16 v0, p13

    int-to-float v1, v0

    iget v2, p0, LAS;->c:F

    sub-float v5, v1, v2

    .line 161
    :goto_31
    iget-object v2, p0, LAS;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, p0, LAS;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v6, p6

    iget-object v7, p0, LAS;->a:Landroid/text/TextPaint;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, LCQ;->a(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_c

    .line 159
    :cond_43
    move/from16 v0, p13

    int-to-float v1, v0

    iget v2, p0, LAS;->b:F

    add-float v5, v1, v2

    goto :goto_31
.end method
