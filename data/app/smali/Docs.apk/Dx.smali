.class public LDx;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements LDH;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 4
    .parameter

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v0

    return v0
.end method

.method private b(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 5
    .parameter

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v0

    return v0
.end method

.method private c(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 4
    .parameter

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->i()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->j()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private d(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 4
    .parameter

    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->l()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private e(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 4
    .parameter

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private f(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 9
    .parameter

    .prologue
    .line 434
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v3

    .line 435
    invoke-direct {p0, p1}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v0

    .line 436
    invoke-direct {p0, p1}, LDx;->b(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v4

    .line 437
    if-le v0, v4, :cond_10

    .line 438
    const/4 v1, 0x0

    .line 447
    :cond_f
    return v1

    .line 440
    :cond_10
    const v1, 0x7fffffff

    move v2, v0

    .line 441
    :goto_14
    if-gt v2, v4, :cond_f

    .line 442
    invoke-virtual {v3, v2}, LCl;->c(I)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 443
    if-ge v0, v1, :cond_27

    .line 441
    :goto_22
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_14

    :cond_27
    move v0, v1

    goto :goto_22
.end method

.method private g(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 9
    .parameter

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v3

    .line 452
    invoke-direct {p0, p1}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v0

    .line 453
    invoke-direct {p0, p1}, LDx;->b(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v4

    .line 454
    if-le v0, v4, :cond_10

    .line 455
    const/4 v1, 0x0

    .line 464
    :cond_f
    return v1

    .line 457
    :cond_10
    const/high16 v1, -0x8000

    move v2, v0

    .line 458
    :goto_13
    if-gt v2, v4, :cond_f

    .line 459
    invoke-virtual {v3, v2}, LCl;->d(I)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 460
    if-le v0, v1, :cond_26

    .line 458
    :goto_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_13

    :cond_26
    move v0, v1

    goto :goto_21
.end method


# virtual methods
.method protected a(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {p1}, LDG;->a(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, -0x601

    .line 160
    invoke-static {v0}, LDE;->a(I)I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    return v0
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-direct {p0, p1}, LDx;->f(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v0

    .line 479
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    .line 480
    if-le v1, v0, :cond_1d

    .line 481
    invoke-direct {p0, p1}, LDx;->e(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 482
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 483
    const/4 v0, 0x1

    .line 485
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x2

    .line 182
    sparse-switch p3, :sswitch_data_d6

    .line 255
    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 184
    :sswitch_8
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 185
    invoke-virtual {p0, p1, p2}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 186
    :cond_13
    invoke-static {p4, v2}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 188
    invoke-virtual {p0, p1, p2}, LDx;->k(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 189
    :cond_1e
    invoke-static {p4, v1}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {p0, p1, p2}, LDx;->i(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 195
    :sswitch_29
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 196
    invoke-virtual {p0, p1, p2}, LDx;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 197
    :cond_34
    invoke-static {p4, v2}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 199
    invoke-virtual {p0, p1, p2}, LDx;->l(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 200
    :cond_3f
    invoke-static {p4, v1}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {p0, p1, p2}, LDx;->j(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 206
    :sswitch_4a
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 207
    invoke-virtual {p0, p1, p2}, LDx;->c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 208
    :cond_55
    invoke-static {p4, v1}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    invoke-virtual {p0, p1, p2}, LDx;->g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 214
    :sswitch_60
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 215
    invoke-virtual {p0, p1, p2}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 216
    :cond_6b
    invoke-static {p4, v1}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    invoke-virtual {p0, p1, p2}, LDx;->h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 222
    :sswitch_76
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 223
    invoke-virtual {p0, p1, p2}, LDx;->e(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_7

    .line 224
    :cond_81
    invoke-static {p4, v1}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p0, p1, p2}, LDx;->g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 230
    :sswitch_8d
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 231
    invoke-virtual {p0, p1, p2}, LDx;->f(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 232
    :cond_99
    invoke-static {p4, v1}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    invoke-virtual {p0, p1, p2}, LDx;->h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 238
    :sswitch_a5
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 239
    invoke-virtual {p0, p1, p2}, LDx;->m(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 240
    :cond_b1
    invoke-static {p4, v2}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {p0, p1, p2}, LDx;->g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 247
    :sswitch_bd
    invoke-static {p4}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 248
    invoke-virtual {p0, p1, p2}, LDx;->n(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 249
    :cond_c9
    invoke-static {p4, v2}, LDE;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    invoke-virtual {p0, p1, p2}, LDx;->h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_7

    .line 182
    nop

    :sswitch_data_d6
    .sparse-switch
        0x13 -> :sswitch_4a
        0x14 -> :sswitch_60
        0x15 -> :sswitch_8
        0x16 -> :sswitch_29
        0x5c -> :sswitch_76
        0x5d -> :sswitch_8d
        0x7a -> :sswitch_a5
        0x7b -> :sswitch_bd
    .end sparse-switch
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p2, p4}, LDx;->a(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 56
    invoke-virtual/range {v0 .. v5}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_15

    .line 58
    invoke-static {p2}, LDG;->b(Landroid/text/Spannable;)V

    .line 59
    invoke-static {p2}, LDG;->c(Landroid/text/Spannable;)V

    .line 61
    :cond_15
    return v0
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p2, p3}, LDx;->a(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .line 67
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 68
    if-eqz v3, :cond_2d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 69
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    move v7, v0

    move v6, v0

    .line 71
    :goto_18
    if-ge v7, v8, :cond_24

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 72
    invoke-virtual/range {v0 .. v5}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 77
    :cond_24
    if-eqz v6, :cond_2c

    .line 78
    invoke-static {p2}, LDG;->b(Landroid/text/Spannable;)V

    .line 79
    invoke-static {p2}, LDG;->c(Landroid/text/Spannable;)V

    :cond_2c
    move v0, v6

    .line 83
    :cond_2d
    return v0

    .line 75
    :cond_2e
    const/4 v6, 0x1

    .line 71
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_18
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-direct {p0, p1}, LDx;->g(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v0

    invoke-direct {p0, p1}, LDx;->c(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 500
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    .line 501
    if-ge v1, v0, :cond_22

    .line 502
    invoke-direct {p0, p1}, LDx;->e(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 503
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 504
    const/4 v0, 0x1

    .line 506
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v2

    .line 520
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v3

    .line 521
    invoke-virtual {v2, v3}, LCl;->g(I)I

    move-result v1

    .line 522
    invoke-virtual {v2, v1}, LCl;->a(I)I

    move-result v4

    if-ne v4, v3, :cond_15

    .line 525
    add-int/lit8 v1, v1, -0x1

    .line 527
    :cond_15
    if-ltz v1, :cond_2a

    .line 528
    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 529
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {v2, v0}, LCl;->a(I)I

    move-result v0

    invoke-static {p1, v2, v1, v0}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 530
    const/4 v0, 0x1

    .line 532
    :cond_2a
    return v0
.end method

.method public c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method protected d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    .line 547
    invoke-direct {p0, p1}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    .line 548
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v0

    add-int v3, v0, v2

    .line 549
    invoke-virtual {v1, v3}, LCl;->g(I)I

    move-result v0

    .line 550
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, LCl;->a(I)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    if-ge v4, v3, :cond_1e

    .line 554
    add-int/lit8 v0, v0, 0x1

    .line 556
    :cond_1e
    invoke-virtual {v1}, LCl;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 557
    if-gt v0, v3, :cond_3d

    .line 558
    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 559
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, LCl;->a(I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v3, v0}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x9

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 113
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    .line 140
    :cond_13
    :goto_13
    return v0

    .line 117
    :pswitch_14
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    .line 119
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    move v2, v3

    .line 126
    :goto_21
    cmpg-float v4, v1, v3

    if-gez v4, :cond_4e

    .line 127
    neg-float v1, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p0, p1, p2, v1}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 131
    :cond_31
    :goto_31
    cmpg-float v1, v2, v3

    if-gez v1, :cond_5e

    .line 132
    neg-float v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1, p2, v1}, LDx;->c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_13

    .line 121
    :cond_42
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    neg-float v2, v1

    .line 122
    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_21

    .line 128
    :cond_4e
    cmpl-float v4, v1, v3

    if-lez v4, :cond_31

    .line 129
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p0, p1, p2, v1}, LDx;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_31

    .line 133
    :cond_5e
    cmpl-float v1, v2, v3

    if-lez v1, :cond_13

    .line 134
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1, p2, v1}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_13

    .line 113
    :pswitch_data_6e
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method protected e(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method protected f(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method protected g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method protected h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method protected i(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected j(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method protected k(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method protected l(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected m(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method protected n(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method protected o(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 576
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 577
    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v1

    .line 578
    if-ltz v1, :cond_20

    .line 579
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1}, LCl;->a(I)I

    move-result v1

    invoke-static {p1, v0, v2, v1}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 580
    const/4 v0, 0x1

    .line 582
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected p(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 594
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 595
    invoke-direct {p0, p1}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    .line 596
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    .line 597
    invoke-virtual {v0, v2}, LCl;->g(I)I

    move-result v2

    .line 598
    invoke-virtual {v0}, LCl;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_2b

    .line 599
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, LCl;->a(I)I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {p1, v0, v3, v1}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 601
    const/4 v0, 0x1

    .line 603
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method protected q(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    .line 616
    invoke-direct {p0, p1}, LDx;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    if-ltz v2, :cond_17

    .line 617
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v0}, LCl;->a(I)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 618
    const/4 v0, 0x1

    .line 620
    :cond_17
    return v0
.end method

.method protected r(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 632
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, LCl;->a()I

    move-result v1

    .line 634
    invoke-direct {p0, p1}, LDx;->b(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-gt v2, v3, :cond_22

    .line 635
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1}, LCl;->a(I)I

    move-result v1

    invoke-direct {p0, p1}, LDx;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p1, v0, v2, v1}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 637
    const/4 v0, 0x1

    .line 639
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected s(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-direct {p0, p1}, LDx;->f(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v0

    .line 652
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    .line 653
    if-le v1, v0, :cond_13

    .line 654
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 655
    const/4 v0, 0x1

    .line 657
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected t(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-direct {p0, p1}, LDx;->g(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v0

    invoke-direct {p0, p1}, LDx;->c(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 670
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    .line 671
    if-ge v1, v0, :cond_18

    .line 672
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 673
    const/4 v0, 0x1

    .line 675
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
