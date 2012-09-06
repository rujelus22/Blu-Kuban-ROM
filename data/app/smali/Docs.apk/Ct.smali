.class LCt;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static a:[LCt;


# instance fields
.field a:I

.field private final a:Landroid/text/TextPaint;

.field a:Ljava/lang/CharSequence;

.field a:Z

.field a:[B

.field a:[C

.field a:[F

.field b:I

.field c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [LCt;

    sput-object v0, LCt;->a:[LCt;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, LCt;->a:Landroid/text/TextPaint;

    .line 47
    return-void
.end method

.method private a(Landroid/text/TextPaint;ILandroid/text/style/ReplacementSpan;Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v2, p0, LCt;->a:Ljava/lang/CharSequence;

    iget v0, p0, LCt;->a:I

    iget v1, p0, LCt;->d:I

    add-int v3, v0, v1

    iget v0, p0, LCt;->a:I

    iget v1, p0, LCt;->d:I

    add-int/2addr v0, v1

    add-int v4, v0, p2

    move-object v0, p3

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v1, v0

    .line 217
    iget-object v2, p0, LCt;->a:[F

    .line 218
    iget v0, p0, LCt;->d:I

    aput v1, v2, v0

    .line 219
    iget v0, p0, LCt;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, LCt;->d:I

    add-int/2addr v3, p2

    :goto_24
    if-ge v0, v3, :cond_2c

    .line 220
    const/4 v4, 0x0

    aput v4, v2, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 222
    :cond_2c
    iget v0, p0, LCt;->d:I

    add-int/2addr v0, p2

    iput v0, p0, LCt;->d:I

    .line 223
    return v1
.end method

.method static a()LCt;
    .registers 5

    .prologue
    .line 54
    sget-object v2, LCt;->a:[LCt;

    monitor-enter v2

    .line 55
    :try_start_3
    sget-object v0, LCt;->a:[LCt;

    array-length v0, v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1b

    .line 56
    sget-object v0, LCt;->a:[LCt;

    aget-object v0, v0, v1

    if-eqz v0, :cond_25

    .line 57
    sget-object v0, LCt;->a:[LCt;

    aget-object v0, v0, v1

    .line 58
    sget-object v3, LCt;->a:[LCt;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 59
    monitor-exit v2

    .line 67
    :goto_1a
    return-object v0

    .line 62
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 63
    new-instance v0, LCt;

    invoke-direct {v0}, LCt;-><init>()V

    goto :goto_1a

    .line 62
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    move v0, v1

    goto :goto_6
.end method

.method static a(LCt;)LCt;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 72
    iput-object v3, p0, LCt;->a:Ljava/lang/CharSequence;

    .line 73
    iput-object v3, p0, LCt;->a:[C

    .line 74
    iget v0, p0, LCt;->c:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1f

    .line 75
    sget-object v1, LCt;->a:[LCt;

    monitor-enter v1

    .line 76
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    sget-object v2, LCt;->a:[LCt;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 77
    sget-object v2, LCt;->a:[LCt;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    .line 78
    sget-object v2, LCt;->a:[LCt;

    aput-object p0, v2, v0

    .line 82
    :cond_1e
    monitor-exit v1

    .line 84
    :cond_1f
    return-object v3

    .line 76
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 82
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_23

    throw v0
.end method

.method private a(Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 258
    if-eqz p1, :cond_d

    .line 259
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 260
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 261
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 262
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 263
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 265
    :cond_d
    return-void
.end method

.method private a(Landroid/graphics/Paint$FontMetricsInt;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 284
    if-eqz p1, :cond_e

    .line 285
    if-gez p2, :cond_f

    .line 286
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 287
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 293
    :cond_e
    :goto_e
    return-void

    .line 289
    :cond_f
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 290
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_e
.end method

.method private a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 271
    if-eqz p2, :cond_18

    if-eqz p1, :cond_18

    .line 272
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 273
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 274
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 275
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 276
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 278
    :cond_18
    return-void
.end method


# virtual methods
.method a(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 141
    if-eqz p3, :cond_6

    .line 142
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 145
    :cond_6
    iget v2, p0, LCt;->d:I

    .line 146
    add-int v0, v2, p2

    iput v0, p0, LCt;->d:I

    .line 148
    iget-boolean v0, p0, LCt;->a:Z

    if-eqz v0, :cond_1e

    .line 152
    iget-object v1, p0, LCt;->a:[C

    iget-object v7, p0, LCt;->a:[F

    move-object v0, p1

    move v3, p2

    move v4, v2

    move v5, p2

    move v8, v2

    invoke-static/range {v0 .. v8}, LCx;->a(Landroid/graphics/Paint;[CIIIII[FI)F

    move-result v1

    .line 172
    :cond_1d
    return v1

    .line 155
    :cond_1e
    const/4 v10, 0x0

    .line 156
    iget-object v0, p0, LCt;->a:[B

    aget-byte v0, v0, v2

    .line 157
    add-int/lit8 v9, v2, 0x1

    add-int v11, v2, p2

    .line 158
    :goto_27
    if-eq v9, v11, :cond_2f

    iget-object v1, p0, LCt;->a:[B

    aget-byte v1, v1, v9

    if-eq v1, v0, :cond_4b

    .line 161
    :cond_2f
    iget-object v1, p0, LCt;->a:[C

    sub-int v3, v9, v2

    sub-int v5, v9, v2

    iget-object v7, p0, LCt;->a:[F

    move-object v0, p1

    move v4, v2

    move v8, v2

    invoke-static/range {v0 .. v8}, LCx;->a(Landroid/graphics/Paint;[CIIIII[FI)F

    move-result v0

    add-float v1, v10, v0

    .line 165
    if-eq v9, v11, :cond_1d

    .line 169
    iget-object v0, p0, LCt;->a:[B

    aget-byte v0, v0, v9

    move v2, v9

    .line 157
    :goto_47
    add-int/lit8 v9, v9, 0x1

    move v10, v1

    goto :goto_27

    :cond_4b
    move v1, v10

    goto :goto_47
.end method

.method a(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v3, p0, LCt;->a:Landroid/text/TextPaint;

    .line 179
    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 181
    iput v0, v3, Landroid/text/TextPaint;->baselineShift:I

    .line 183
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p5}, LCt;->a(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 186
    invoke-direct {p0, p4}, LCt;->a(Landroid/graphics/Paint$FontMetricsInt;)V

    move v2, v0

    .line 188
    :goto_10
    array-length v0, p2

    if-ge v2, v0, :cond_25

    .line 189
    aget-object v0, p2, v2

    .line 190
    instance-of v4, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_20

    .line 191
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 188
    :goto_1b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_10

    .line 193
    :cond_20
    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    move-object v0, v1

    goto :goto_1b

    .line 198
    :cond_25
    if-nez v1, :cond_39

    .line 199
    invoke-virtual {p0, v3, p3, p4}, LCt;->a(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    .line 200
    invoke-direct {p0, p4, p5}, LCt;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 205
    :goto_2e
    iget v1, v3, Landroid/text/TextPaint;->baselineShift:I

    invoke-direct {p0, p5, v1}, LCt;->a(Landroid/graphics/Paint$FontMetricsInt;I)V

    .line 206
    iget v1, v3, Landroid/text/TextPaint;->baselineShift:I

    invoke-direct {p0, p4, v1}, LCt;->a(Landroid/graphics/Paint$FontMetricsInt;I)V

    .line 208
    return v0

    .line 202
    :cond_39
    invoke-direct {p0, v3, p3, v1, p4}, LCt;->a(Landroid/text/TextPaint;ILandroid/text/style/ReplacementSpan;Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    goto :goto_2e
.end method

.method a(Ljava/lang/CharSequence;II)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    const/4 v4, 0x2

    .line 93
    iput-object p1, p0, LCt;->a:Ljava/lang/CharSequence;

    .line 94
    iput p2, p0, LCt;->a:I

    .line 96
    sub-int v6, p3, p2

    .line 97
    iput v6, p0, LCt;->c:I

    .line 98
    iput v2, p0, LCt;->d:I

    .line 100
    iget-object v0, p0, LCt;->a:[F

    if-eqz v0, :cond_16

    iget-object v0, p0, LCt;->a:[F

    array-length v0, v0

    if-ge v0, v6, :cond_1e

    .line 101
    :cond_16
    invoke-static {v6}, LBZ;->d(I)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, LCt;->a:[F

    .line 103
    :cond_1e
    iget-object v0, p0, LCt;->a:[C

    if-eqz v0, :cond_27

    iget-object v0, p0, LCt;->a:[C

    array-length v0, v0

    if-ge v0, v6, :cond_2f

    .line 104
    :cond_27
    invoke-static {v6}, LBZ;->b(I)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, LCt;->a:[C

    .line 106
    :cond_2f
    iget-object v0, p0, LCt;->a:[C

    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 108
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_aa

    .line 109
    check-cast p1, Landroid/text/Spanned;

    .line 110
    const-class v0, Landroid/text/style/ReplacementSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    move v1, v2

    .line 113
    :goto_43
    array-length v5, v0

    if-ge v1, v5, :cond_63

    .line 114
    aget-object v5, v0, v1

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, p2

    .line 115
    aget-object v7, v0, v1

    invoke-interface {p1, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    sub-int/2addr v7, p2

    .line 116
    :goto_54
    if-ge v5, v7, :cond_60

    .line 117
    iget-object v8, p0, LCt;->a:[C

    const v9, 0xfffc

    aput-char v9, v8, v5

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 113
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 121
    :cond_63
    const-class v0, LEl;

    invoke-static {p1, p2, p3, v0}, LCl;->a(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEl;

    .line 123
    array-length v5, v0

    move v1, v4

    move v4, v2

    :goto_6e
    if-ge v4, v5, :cond_7e

    aget-object v1, v0, v4

    .line 124
    invoke-interface {v1}, LEl;->a()Z

    move-result v1

    if-eqz v1, :cond_7c

    move v1, v3

    .line 123
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 124
    :cond_7c
    const/4 v1, -0x1

    goto :goto_79

    :cond_7e
    move v0, v1

    .line 128
    :goto_7f
    iget-object v1, p0, LCt;->a:[C

    invoke-static {v1, v2, v6}, LCu;->a([CII)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 129
    iput v3, p0, LCt;->b:I

    .line 130
    iput-boolean v3, p0, LCt;->a:Z

    .line 138
    :goto_8b
    return-void

    .line 132
    :cond_8c
    iget-object v1, p0, LCt;->a:[B

    if-eqz v1, :cond_95

    iget-object v1, p0, LCt;->a:[B

    array-length v1, v1

    if-ge v1, v6, :cond_9d

    .line 133
    :cond_95
    invoke-static {v6}, LBZ;->a(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, LCt;->a:[B

    .line 135
    :cond_9d
    iget-object v1, p0, LCt;->a:[C

    iget-object v3, p0, LCt;->a:[B

    invoke-static {v0, v1, v3, v6, v2}, LBY;->a(I[C[BIZ)I

    move-result v0

    iput v0, p0, LCt;->b:I

    .line 136
    iput-boolean v2, p0, LCt;->a:Z

    goto :goto_8b

    :cond_aa
    move v0, v4

    goto :goto_7f
.end method
