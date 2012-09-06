.class public LDf;
.super LDc;
.source "TextView.java"


# instance fields
.field private a:J

.field private a:LCe;

.field private a:Ljava/lang/Runnable;

.field private b:F

.field final synthetic b:Lcom/google/android/apps/docs/editors/text/TextView;

.field private b:Ljava/lang/Runnable;

.field private c:F


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 8093
    iput-object p1, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0, p1}, LDc;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 8093
    invoke-direct {p0, p1}, LDf;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 8139
    invoke-direct {p0}, LDf;->j()V

    .line 8140
    iget-object v0, p0, LDf;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    .line 8141
    new-instance v0, LDh;

    invoke-direct {v0, p0}, LDh;-><init>(LDf;)V

    iput-object v0, p0, LDf;->a:Ljava/lang/Runnable;

    .line 8148
    :cond_e
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDf;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8149
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 8152
    iget-object v0, p0, LDf;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 8153
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDf;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8155
    :cond_b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 8208
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    return v0
.end method

.method protected a()V
    .registers 4

    .prologue
    .line 8159
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_21

    .line 8160
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8162
    :cond_21
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LDf;->a:Landroid/graphics/drawable/Drawable;

    .line 8163
    iget-object v0, p0, LDf;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, LDf;->a:F

    .line 8164
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 8213
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8216
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()V

    .line 8217
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 8221
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, LDf;->a(I)V

    .line 8222
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 8107
    invoke-super {p0}, LDc;->b()V

    .line 8108
    invoke-direct {p0}, LDf;->i()V

    .line 8109
    invoke-virtual {p0}, LDf;->h()V

    .line 8110
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 8134
    invoke-super {p0}, LDc;->c()V

    .line 8135
    invoke-virtual {p0}, LDf;->f()V

    .line 8136
    return-void
.end method

.method public c(I)V
    .registers 6
    .parameter

    .prologue
    .line 8113
    invoke-virtual {p0}, LDf;->b()V

    .line 8115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 8116
    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    .line 8117
    const/4 p1, 0x0

    .line 8119
    :cond_13
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 8120
    iget-object v0, p0, LDf;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_26

    .line 8121
    new-instance v0, LDg;

    invoke-direct {v0, p0}, LDg;-><init>(LDf;)V

    iput-object v0, p0, LDf;->b:Ljava/lang/Runnable;

    .line 8128
    :cond_26
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDf;->b:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8130
    :cond_2e
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 8234
    invoke-virtual {p0}, LDf;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 8235
    invoke-direct {p0}, LDf;->j()V

    .line 8236
    invoke-virtual {p0}, LDf;->h()V

    .line 8238
    :cond_c
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 8251
    invoke-direct {p0}, LDf;->j()V

    .line 8252
    invoke-virtual {p0}, LDf;->h()V

    .line 8253
    return-void
.end method

.method g()V
    .registers 2

    .prologue
    .line 8225
    iget-object v0, p0, LDf;->a:LCe;

    if-nez v0, :cond_c

    .line 8226
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCe;

    move-result-object v0

    iput-object v0, p0, LDf;->a:LCe;

    .line 8229
    :cond_c
    iget-object v0, p0, LDf;->a:LCe;

    invoke-interface {v0}, LCe;->a()V

    .line 8230
    return-void
.end method

.method h()V
    .registers 3

    .prologue
    .line 8241
    iget-object v0, p0, LDf;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 8242
    iget-object v0, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDf;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8244
    :cond_b
    iget-object v0, p0, LDf;->a:LCe;

    if-eqz v0, :cond_14

    .line 8245
    iget-object v0, p0, LDf;->a:LCe;

    invoke-interface {v0}, LCe;->t()V

    .line 8247
    :cond_14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    .line 8168
    invoke-super {p0, p1}, LDc;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    .line 8203
    :goto_b
    :pswitch_b
    return v0

    .line 8172
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, LDf;->b:F

    .line 8173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, LDf;->c:F

    .line 8174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, LDf;->a:J

    goto :goto_b

    .line 8178
    :pswitch_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, LDf;->a:J

    sub-long/2addr v1, v3

    .line 8179
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_5c

    .line 8180
    iget v1, p0, LDf;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 8181
    iget v2, p0, LDf;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 8182
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    .line 8183
    iget-object v2, p0, LDf;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->g(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5c

    .line 8184
    iget-object v1, p0, LDf;->a:LCe;

    if-eqz v1, :cond_60

    iget-object v1, p0, LDf;->a:LCe;

    invoke-interface {v1}, LCe;->g()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 8186
    iget-object v1, p0, LDf;->a:LCe;

    invoke-interface {v1}, LCe;->t()V

    .line 8192
    :cond_5c
    :goto_5c
    invoke-direct {p0}, LDf;->i()V

    goto :goto_b

    .line 8188
    :cond_60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LDf;->c(I)V

    goto :goto_5c

    .line 8196
    :pswitch_65
    invoke-direct {p0}, LDf;->i()V

    goto :goto_b

    .line 8170
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1f
        :pswitch_b
        :pswitch_65
    .end packed-switch
.end method
