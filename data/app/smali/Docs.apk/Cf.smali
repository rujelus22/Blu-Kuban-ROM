.class public LCf;
.super LCl;
.source "DynamicLayout.java"


# static fields
.field private static a:LCI;

.field private static a:Ljava/lang/Object;


# instance fields
.field private a:LCg;

.field private a:LCv;

.field private final a:LCw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCw",
            "<",
            "LCm;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/text/TextUtils$TruncateAt;

.field private final a:Ljava/lang/CharSequence;

.field private final a:Z

.field private b:LCv;

.field private final b:Ljava/lang/CharSequence;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 485
    new-instance v0, LCI;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LCI;-><init>(Z)V

    sput-object v0, LCf;->a:LCI;

    .line 486
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LCf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 19
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
    .line 82
    if-nez p9, :cond_d0

    move-object v2, p2

    :goto_3
    move-object v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, LCl;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 89
    iput-object p1, p0, LCf;->a:Ljava/lang/CharSequence;

    .line 90
    iput-object p2, p0, LCf;->b:Ljava/lang/CharSequence;

    .line 92
    if-eqz p9, :cond_e2

    .line 93
    new-instance v1, LCv;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LCv;-><init>(I)V

    iput-object v1, p0, LCf;->a:LCv;

    .line 94
    move/from16 v0, p10

    iput v0, p0, LCf;->c:I

    .line 95
    move-object/from16 v0, p9

    iput-object v0, p0, LCf;->a:Landroid/text/TextUtils$TruncateAt;

    .line 102
    :goto_22
    new-instance v1, LCw;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LCw;-><init>(I)V

    iput-object v1, p0, LCf;->a:LCw;

    .line 104
    new-instance v1, LCv;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LCv;-><init>(I)V

    iput-object v1, p0, LCf;->b:LCv;

    .line 106
    move/from16 v0, p8

    iput-boolean v0, p0, LCf;->a:Z

    .line 116
    if-eqz p9, :cond_4b

    .line 117
    invoke-virtual {p0}, LCf;->a()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, LCn;

    .line 119
    iput-object p0, v1, LCn;->a:LCl;

    .line 120
    move/from16 v0, p10

    iput v0, v1, LCn;->a:I

    .line 121
    move-object/from16 v0, p9

    iput-object v0, v1, LCn;->a:Landroid/text/TextUtils$TruncateAt;

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, LCf;->b:Z

    .line 131
    :cond_4b
    if-eqz p9, :cond_f1

    .line 132
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 133
    const/4 v2, 0x3

    const/high16 v3, -0x8000

    aput v3, v1, v2

    .line 138
    :goto_55
    const/4 v2, 0x1

    new-array v2, v2, [LCm;

    const/4 v3, 0x0

    sget-object v4, LCf;->a:LCm;

    aput-object v4, v2, v3

    .line 140
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 141
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 142
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 144
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v1, v5

    .line 145
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v1, v5

    .line 146
    const/4 v5, 0x2

    aput v3, v1, v5

    .line 147
    iget-object v5, p0, LCf;->a:LCv;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, LCv;->a(I[I)V

    .line 149
    const/4 v5, 0x1

    sub-int/2addr v3, v4

    aput v3, v1, v5

    .line 150
    iget-object v3, p0, LCf;->a:LCv;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, LCv;->a(I[I)V

    .line 152
    iget-object v1, p0, LCf;->a:LCw;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, LCw;->a(I[Ljava/lang/Object;)V

    .line 154
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 156
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 157
    iget-object v2, p0, LCf;->b:LCv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, LCv;->a(I[I)V

    .line 161
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, LCf;->a(Ljava/lang/CharSequence;III)V

    .line 163
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_103

    .line 164
    iget-object v1, p0, LCf;->a:LCg;

    if-nez v1, :cond_b4

    .line 165
    new-instance v1, LCg;

    new-instance v2, LCh;

    invoke-direct {v2, p0}, LCh;-><init>(LCf;)V

    invoke-direct {v1, v2}, LCg;-><init>(LCC;)V

    iput-object v1, p0, LCf;->a:LCg;

    :cond_b4
    move-object v1, p1

    .line 168
    check-cast v1, Landroid/text/Spannable;

    .line 169
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, LCg;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [LCg;

    .line 170
    const/4 v3, 0x0

    :goto_c5
    array-length v4, v2

    if-ge v3, v4, :cond_f6

    .line 171
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    .line 82
    :cond_d0
    instance-of v1, p2, Landroid/text/Spanned;

    if-eqz v1, :cond_db

    new-instance v2, LCo;

    invoke-direct {v2, p2}, LCo;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_db
    new-instance v2, LCn;

    invoke-direct {v2, p2}, LCn;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 97
    :cond_e2
    new-instance v1, LCv;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LCv;-><init>(I)V

    iput-object v1, p0, LCf;->a:LCv;

    .line 98
    iput p4, p0, LCf;->c:I

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, LCf;->a:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_22

    .line 135
    :cond_f1
    const/4 v1, 0x3

    new-array v1, v1, [I

    goto/16 :goto_55

    .line 173
    :cond_f6
    iget-object v2, p0, LCf;->a:LCg;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 177
    :cond_103
    return-void
.end method

.method static synthetic a(LCf;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, LCf;->a(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;III)V
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, LCf;->a:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_9

    .line 359
    :goto_8
    return-void

    .line 183
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, LCf;->b:Ljava/lang/CharSequence;

    .line 184
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 188
    const/16 v2, 0xa

    add-int/lit8 v4, p2, -0x1

    invoke-static {v3, v2, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 189
    if-gez v2, :cond_7b

    .line 190
    const/4 v2, 0x0

    .line 195
    :goto_1c
    sub-int v2, p2, v2

    .line 196
    add-int v4, p3, v2

    .line 197
    add-int v7, p4, v2

    .line 198
    sub-int v6, p2, v2

    .line 203
    const/16 v2, 0xa

    add-int v5, v6, v7

    invoke-static {v3, v2, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 204
    if-gez v2, :cond_7e

    move v2, v15

    .line 209
    :goto_2f
    add-int v5, v6, v7

    sub-int/2addr v2, v5

    .line 210
    add-int v5, v4, v2

    .line 211
    add-int v4, v7, v2

    .line 215
    instance-of v2, v3, Landroid/text/Spanned;

    if-eqz v2, :cond_83

    move-object v2, v3

    .line 216
    check-cast v2, Landroid/text/Spanned;

    .line 220
    :cond_3d
    const/4 v8, 0x0

    .line 222
    add-int v7, v6, v4

    const-class v9, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v2, v6, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .line 225
    const/4 v7, 0x0

    :goto_47
    array-length v9, v10

    if-ge v7, v9, :cond_81

    .line 226
    aget-object v9, v10, v7

    invoke-interface {v2, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 227
    aget-object v11, v10, v7

    invoke-interface {v2, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 229
    if-ge v9, v6, :cond_224

    .line 230
    const/4 v8, 0x1

    .line 232
    sub-int v9, v6, v9

    .line 233
    add-int/2addr v5, v9

    .line 234
    add-int/2addr v4, v9

    .line 235
    sub-int v9, v6, v9

    move v6, v4

    move/from16 v23, v8

    move v8, v5

    move/from16 v5, v23

    .line 238
    :goto_65
    add-int v4, v9, v6

    if-le v11, v4, :cond_70

    .line 239
    const/4 v5, 0x1

    .line 241
    add-int v4, v9, v6

    sub-int v4, v11, v4

    .line 242
    add-int/2addr v8, v4

    .line 243
    add-int/2addr v6, v4

    .line 225
    :cond_70
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v6

    move v6, v9

    move/from16 v23, v8

    move v8, v5

    move/from16 v5, v23

    goto :goto_47

    .line 192
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 207
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 246
    :cond_81
    if-nez v8, :cond_3d

    :cond_83
    move/from16 v16, v4

    move/from16 v17, v5

    move v4, v6

    .line 251
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, LCf;->h(I)I

    move-result v20

    .line 252
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, LCf;->a(I)I

    move-result v21

    .line 254
    add-int v2, v4, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, LCf;->h(I)I

    move-result v2

    .line 255
    add-int v5, v4, v16

    if-ne v5, v15, :cond_220

    .line 256
    invoke-virtual/range {p0 .. p0}, LCf;->a()I

    move-result v2

    move/from16 v18, v2

    .line 257
    :goto_a8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, LCf;->a(I)I

    move-result v22

    .line 258
    invoke-virtual/range {p0 .. p0}, LCf;->a()I

    move-result v2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1fc

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 264
    :goto_bb
    sget-object v5, LCf;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 265
    :try_start_be
    sget-object v2, LCf;->a:LCI;

    .line 266
    const/4 v6, 0x0

    sput-object v6, LCf;->a:LCI;

    .line 267
    monitor-exit v5
    :try_end_c4
    .catchall {:try_start_be .. :try_end_c4} :catchall_201

    .line 269
    if-nez v2, :cond_cc

    .line 270
    new-instance v2, LCI;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, LCI;-><init>(Z)V

    .line 272
    :cond_cc
    add-int v5, v4, v16

    invoke-virtual/range {p0 .. p0}, LCf;->a()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, LCf;->c()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, LCf;->a()Landroid/text/Layout$Alignment;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, LCf;->a()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, LCf;->b()F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, LCf;->c:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, LCf;->a:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v2 .. v14}, LCI;->a(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 276
    invoke-virtual {v2}, LCI;->a()I

    move-result v3

    .line 282
    add-int v5, v4, v16

    if-eq v5, v15, :cond_104

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, LCI;->c(I)I

    move-result v5

    add-int v4, v4, v16

    if-ne v5, v4, :cond_104

    .line 284
    add-int/lit8 v3, v3, -0x1

    .line 288
    :cond_104
    move-object/from16 v0, p0

    iget-object v4, v0, LCf;->a:LCv;

    sub-int v5, v18, v20

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, LCv;->a(II)V

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, LCf;->a:LCw;

    sub-int v5, v18, v20

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, LCw;->a(II)V

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, LCf;->b:LCv;

    sub-int v5, v18, v20

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, LCv;->a(II)V

    .line 294
    invoke-virtual {v2, v3}, LCI;->a(I)I

    move-result v5

    .line 295
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 297
    move-object/from16 v0, p0

    iget-boolean v7, v0, LCf;->a:Z

    if-eqz v7, :cond_13c

    if-nez v20, :cond_13c

    .line 298
    invoke-virtual {v2}, LCI;->e()I

    move-result v4

    .line 299
    move-object/from16 v0, p0

    iput v4, v0, LCf;->d:I

    .line 300
    sub-int/2addr v5, v4

    .line 302
    :cond_13c
    move-object/from16 v0, p0

    iget-boolean v7, v0, LCf;->a:Z

    if-eqz v7, :cond_219

    if-eqz v19, :cond_219

    .line 303
    invoke-virtual {v2}, LCI;->f()I

    move-result v6

    .line 304
    move-object/from16 v0, p0

    iput v6, v0, LCf;->e:I

    .line 305
    add-int/2addr v5, v6

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    .line 308
    :goto_152
    move-object/from16 v0, p0

    iget-object v7, v0, LCf;->a:LCv;

    const/4 v8, 0x0

    sub-int v9, v16, v17

    move/from16 v0, v20

    invoke-virtual {v7, v0, v8, v9}, LCv;->a(III)V

    .line 309
    move-object/from16 v0, p0

    iget-object v7, v0, LCf;->a:LCv;

    const/4 v8, 0x1

    sub-int v9, v21, v22

    add-int/2addr v6, v9

    move/from16 v0, v20

    invoke-virtual {v7, v0, v8, v6}, LCv;->a(III)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v6, v0, LCf;->b:Z

    if-eqz v6, :cond_204

    .line 316
    const/4 v6, 0x5

    new-array v6, v6, [I

    .line 317
    const/4 v7, 0x3

    const/high16 v8, -0x8000

    aput v8, v6, v7

    .line 322
    :goto_179
    const/4 v7, 0x1

    new-array v9, v7, [LCm;

    .line 323
    const/4 v7, 0x2

    new-array v10, v7, [I

    .line 325
    const/4 v7, 0x0

    move v8, v7

    :goto_181
    if-ge v8, v3, :cond_20e

    .line 326
    const/4 v11, 0x0

    invoke-virtual {v2, v8}, LCI;->c(I)I

    move-result v12

    invoke-virtual {v2, v8}, LCI;->d(I)I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_209

    const/4 v7, 0x0

    :goto_190
    or-int/2addr v12, v7

    invoke-virtual {v2, v8}, LCI;->b(I)Z

    move-result v7

    if-eqz v7, :cond_20c

    const/high16 v7, 0x2000

    :goto_199
    or-int/2addr v7, v12

    aput v7, v6, v11

    .line 331
    invoke-virtual {v2, v8}, LCI;->a(I)I

    move-result v7

    add-int v7, v7, v21

    .line 332
    if-lez v8, :cond_1a5

    .line 333
    sub-int/2addr v7, v4

    .line 334
    :cond_1a5
    const/4 v11, 0x1

    aput v7, v6, v11

    .line 336
    invoke-virtual {v2, v8}, LCI;->b(I)I

    move-result v7

    .line 337
    add-int/lit8 v11, v3, -0x1

    if-ne v8, v11, :cond_1b1

    .line 338
    add-int/2addr v7, v5

    .line 340
    :cond_1b1
    const/4 v11, 0x2

    aput v7, v6, v11

    .line 341
    const/4 v7, 0x0

    invoke-virtual {v2, v8}, LCI;->a(I)LCm;

    move-result-object v11

    aput-object v11, v9, v7

    .line 343
    move-object/from16 v0, p0

    iget-boolean v7, v0, LCf;->b:Z

    if-eqz v7, :cond_1cf

    .line 344
    const/4 v7, 0x3

    invoke-virtual {v2, v8}, LCI;->e(I)I

    move-result v11

    aput v11, v6, v7

    .line 345
    const/4 v7, 0x4

    invoke-virtual {v2, v8}, LCI;->f(I)I

    move-result v11

    aput v11, v6, v7

    .line 348
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v7, v0, LCf;->a:LCv;

    add-int v11, v20, v8

    invoke-virtual {v7, v11, v6}, LCv;->a(I[I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v7, v0, LCf;->a:LCw;

    add-int v11, v20, v8

    invoke-virtual {v7, v11, v9}, LCw;->a(I[Ljava/lang/Object;)V

    .line 351
    const/4 v7, 0x0

    invoke-virtual {v2, v8}, LCI;->a(I)S

    move-result v11

    aput v11, v10, v7

    .line 352
    const/4 v7, 0x1

    invoke-virtual {v2, v8}, LCI;->b(I)S

    move-result v11

    aput v11, v10, v7

    .line 353
    move-object/from16 v0, p0

    iget-object v7, v0, LCf;->b:LCv;

    add-int v11, v20, v8

    invoke-virtual {v7, v11, v10}, LCv;->a(I[I)V

    .line 325
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_181

    .line 258
    :cond_1fc
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_bb

    .line 267
    :catchall_201
    move-exception v2

    :try_start_202
    monitor-exit v5
    :try_end_203
    .catchall {:try_start_202 .. :try_end_203} :catchall_201

    throw v2

    .line 319
    :cond_204
    const/4 v6, 0x3

    new-array v6, v6, [I

    goto/16 :goto_179

    .line 326
    :cond_209
    const/high16 v7, 0x4000

    goto :goto_190

    :cond_20c
    const/4 v7, 0x0

    goto :goto_199

    .line 356
    :cond_20e
    sget-object v3, LCf;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 357
    :try_start_211
    sput-object v2, LCf;->a:LCI;

    .line 358
    monitor-exit v3

    goto/16 :goto_8

    :catchall_216
    move-exception v2

    monitor-exit v3
    :try_end_218
    .catchall {:try_start_211 .. :try_end_218} :catchall_216

    throw v2

    :cond_219
    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_152

    :cond_220
    move/from16 v18, v2

    goto/16 :goto_a8

    :cond_224
    move v9, v6

    move v6, v4

    move/from16 v23, v5

    move v5, v8

    move/from16 v8, v23

    goto/16 :goto_65
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, LCf;->a:LCv;

    invoke-virtual {v0}, LCv;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, LCf;->a:LCv;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    return v0
.end method

.method public final a(I)LCm;
    .registers 4
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, LCf;->a:LCw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LCw;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCm;

    return-object v0
.end method

.method public a(I)S
    .registers 4
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, LCf;->b:LCv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 378
    iget-object v1, p0, LCf;->b:LCv;

    invoke-virtual {v1, p1, v0}, LCv;->a(II)I

    move-result v1

    if-lez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, LCf;->c:I

    return v0
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, LCf;->a:LCv;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    return v0
.end method

.method public b(I)S
    .registers 4
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, LCf;->b:LCv;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public b(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 398
    iget-object v1, p0, LCf;->a:LCv;

    invoke-virtual {v1, p1, v0}, LCv;->a(II)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, LCf;->a:LCv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public d(I)I
    .registers 4
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, LCf;->a:LCv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public e(I)I
    .registers 4
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, LCf;->a:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 456
    const/4 v0, 0x0

    .line 459
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, LCf;->a:LCv;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    goto :goto_5
.end method

.method public f(I)I
    .registers 4
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, LCf;->a:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 465
    const/4 v0, 0x0

    .line 468
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, LCf;->a:LCv;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, LCv;->a(II)I

    move-result v0

    goto :goto_5
.end method
