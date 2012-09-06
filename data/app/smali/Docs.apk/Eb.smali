.class public LEb;
.super Ljava/lang/Object;
.source "Touch.java"


# direct methods
.method public static a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-static {p1}, LEb;->a(Landroid/text/Spannable;)[LEc;

    move-result-object v0

    .line 180
    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, LEc;->a:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private static a(Landroid/text/Spannable;LEc;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 201
    const/16 v0, 0x11

    invoke-interface {p0, p1, v1, v1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 202
    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()I

    move-result v2

    add-int/2addr v0, v2

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v2

    sub-int v3, v2, v0

    .line 42
    invoke-virtual {p1, p3}, LCl;->g(I)I

    move-result v2

    .line 43
    invoke-virtual {p1, v2}, LCl;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 44
    invoke-virtual {p1, v2}, LCl;->d(I)I

    move-result v0

    if-lez v0, :cond_5b

    const/4 v0, 0x1

    .line 47
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->l()I

    move-result v5

    add-int/2addr v4, v5

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v5

    add-int/2addr v5, p3

    sub-int v4, v5, v4

    invoke-virtual {p1, v4}, LCl;->g(I)I

    move-result v7

    .line 52
    const v4, 0x7fffffff

    move v8, v2

    move v2, v4

    move v4, v8

    .line 55
    :goto_3f
    if-gt v4, v7, :cond_5d

    .line 56
    int-to-float v2, v2

    invoke-virtual {p1, v4}, LCl;->c(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v5, v2

    .line 57
    int-to-float v1, v1

    invoke-virtual {p1, v4}, LCl;->d(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v2, v1

    .line 55
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    move v2, v5

    goto :goto_3f

    :cond_5b
    move v0, v1

    .line 44
    goto :goto_1f

    :cond_5d
    move v8, v1

    move v1, v2

    move v2, v8

    .line 64
    :goto_60
    sub-int v4, v2, v1

    .line 66
    if-ge v4, v3, :cond_81

    .line 67
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_74

    .line 68
    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 81
    :goto_6e
    invoke-virtual {p0, v0, p3}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 82
    return-void

    :cond_72
    move v2, v3

    .line 61
    goto :goto_60

    .line 69
    :cond_74
    if-eqz v0, :cond_7f

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v0, :cond_7f

    .line 72
    sub-int v0, v3, v4

    sub-int v0, v1, v0

    goto :goto_6e

    :cond_7f
    move v0, v1

    .line 74
    goto :goto_6e

    .line 77
    :cond_81
    sub-int v0, v2, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6e
.end method

.method public static a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_136

    .line 175
    :cond_9
    :goto_9
    return v0

    .line 94
    :pswitch_a
    invoke-static {p1}, LEb;->a(Landroid/text/Spannable;)[LEc;

    move-result-object v1

    .line 96
    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 97
    aget-object v2, v1, v0

    invoke-static {p1, v2}, LEb;->b(Landroid/text/Spannable;LEc;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 100
    :cond_19
    new-instance v0, LEc;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, LEc;-><init>(FFII)V

    invoke-static {p1, v0}, LEb;->a(Landroid/text/Spannable;LEc;)V

    move v0, v3

    .line 102
    goto :goto_9

    .line 105
    :pswitch_33
    invoke-static {p1}, LEb;->a(Landroid/text/Spannable;)[LEc;

    move-result-object v2

    move v1, v0

    .line 107
    :goto_38
    array-length v4, v2

    if-ge v1, v4, :cond_43

    .line 108
    aget-object v4, v2, v1

    invoke-static {p1, v4}, LEb;->b(Landroid/text/Spannable;LEc;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 111
    :cond_43
    array-length v1, v2

    if-lez v1, :cond_9

    aget-object v1, v2, v0

    iget-boolean v1, v1, LEc;->b:Z

    if-eqz v1, :cond_9

    move v0, v3

    .line 112
    goto :goto_9

    .line 118
    :pswitch_4e
    invoke-static {p1}, LEb;->a(Landroid/text/Spannable;)[LEc;

    move-result-object v4

    .line 120
    array-length v1, v4

    if-lez v1, :cond_9

    .line 121
    aget-object v1, v4, v0

    iget-boolean v1, v1, LEc;->a:Z

    if-nez v1, :cond_8f

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aget-object v5, v4, v0

    iget v5, v5, LEc;->a:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v5, v1

    cmpl-float v2, v2, v5

    if-gez v2, :cond_8b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aget-object v5, v4, v0

    iget v5, v5, LEc;->b:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_8f

    .line 126
    :cond_8b
    aget-object v1, v4, v0

    iput-boolean v3, v1, LEc;->a:Z

    .line 130
    :cond_8f
    aget-object v1, v4, v0

    iget-boolean v1, v1, LEc;->a:Z

    if-eqz v1, :cond_9

    .line 131
    aget-object v1, v4, v0

    iput-boolean v3, v1, LEc;->b:Z

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_af

    invoke-static {p1, v3}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v3, :cond_af

    const/16 v1, 0x800

    invoke-static {p1, v1}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_11f

    :cond_af
    move v1, v3

    .line 139
    :goto_b0
    if-eqz v1, :cond_121

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aget-object v2, v4, v0

    iget v2, v2, LEc;->a:F

    sub-float v2, v1, v2

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aget-object v5, v4, v0

    iget v5, v5, LEc;->b:F

    sub-float/2addr v1, v5

    .line 148
    :goto_c5
    aget-object v5, v4, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, LEc;->a:F

    .line 149
    aget-object v4, v4, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, LEc;->b:F

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v4

    float-to-int v2, v2

    add-int/2addr v2, v4

    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v4

    float-to-int v1, v1

    add-int/2addr v1, v4

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->l()I

    move-result v5

    add-int/2addr v4, v5

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v5

    .line 157
    invoke-virtual {v5}, LCl;->d()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v7

    sub-int v4, v7, v4

    sub-int v4, v6, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 158
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v4

    .line 163
    invoke-static {p0, v5, v2, v0}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCl;II)V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v0

    if-ne v1, v0, :cond_119

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v0

    if-eq v4, v0, :cond_11c

    .line 167
    :cond_119
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->cancelLongPress()V

    :cond_11c
    move v0, v3

    .line 170
    goto/16 :goto_9

    :cond_11f
    move v1, v0

    .line 132
    goto :goto_b0

    .line 145
    :cond_121
    aget-object v1, v4, v0

    iget v1, v1, LEc;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v1, v2

    .line 146
    aget-object v1, v4, v0

    iget v1, v1, LEc;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v1, v5

    goto :goto_c5

    .line 92
    nop

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_a
        :pswitch_33
        :pswitch_4e
    .end packed-switch
.end method

.method private static a(Landroid/text/Spannable;)[LEc;
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 194
    const-class v0, LEc;

    invoke-interface {p0, v1, v1, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEc;

    return-object v0
.end method

.method public static b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-static {p1}, LEb;->a(Landroid/text/Spannable;)[LEc;

    move-result-object v0

    .line 185
    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, LEc;->b:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private static b(Landroid/text/Spannable;LEc;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 209
    return-void
.end method
