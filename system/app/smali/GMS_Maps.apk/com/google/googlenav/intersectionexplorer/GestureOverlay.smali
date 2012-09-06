.class public Lcom/google/googlenav/intersectionexplorer/GestureOverlay;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/intersectionexplorer/b;

.field private b:D

.field private c:D

.field private d:Lcom/google/googlenav/intersectionexplorer/a;

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    .line 107
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->e:I

    .line 110
    iput-boolean v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    .line 138
    iput v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->i:I

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/intersectionexplorer/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    .line 107
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->e:I

    .line 110
    iput-boolean v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    .line 129
    iput-object p2, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    .line 130
    iput v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->i:I

    .line 131
    return-void
.end method

.method private a(DD)Lcom/google/googlenav/intersectionexplorer/a;
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 224
    iget v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->e:I

    int-to-float v0, v0

    .line 227
    const-wide v1, 0x3fd0c152382d7365L

    .line 229
    iget-boolean v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    if-eqz v3, :cond_35

    .line 230
    iget v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->g:I

    int-to-double v3, v3

    cmpg-double v3, p1, v3

    if-gez v3, :cond_1f

    iget-wide v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->b:D

    iget v5, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->g:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1f

    .line 231
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->j:Lcom/google/googlenav/intersectionexplorer/a;

    .line 268
    :goto_1e
    return-object v0

    .line 232
    :cond_1f
    iget v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->h:I

    int-to-double v3, v3

    cmpl-double v3, p1, v3

    if-lez v3, :cond_32

    iget-wide v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->b:D

    iget v5, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->h:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_32

    .line 233
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->k:Lcom/google/googlenav/intersectionexplorer/a;

    goto :goto_1e

    .line 235
    :cond_32
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    .line 239
    :cond_35
    iget-wide v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->b:D

    sub-double/2addr v3, p1

    .line 240
    iget-wide v5, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->c:D

    sub-double/2addr v5, p3

    .line 241
    mul-double v7, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 243
    float-to-double v9, v0

    cmpg-double v0, v7, v9

    if-gez v0, :cond_4c

    .line 244
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->e:Lcom/google/googlenav/intersectionexplorer/a;

    goto :goto_1e

    .line 247
    :cond_4c
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 248
    const-wide/16 v5, 0x0

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_5f

    .line 249
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->d:Lcom/google/googlenav/intersectionexplorer/a;

    goto :goto_1e

    .line 250
    :cond_5f
    const-wide v5, 0x3fe921fb54442d18L

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_71

    .line 251
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->a:Lcom/google/googlenav/intersectionexplorer/a;

    goto :goto_1e

    .line 252
    :cond_71
    const-wide v5, 0x3ff921fb54442d18L

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_83

    .line 253
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->b:Lcom/google/googlenav/intersectionexplorer/a;

    goto :goto_1e

    .line 254
    :cond_83
    const-wide v5, 0x4002d97c7f3321d2L

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_95

    .line 255
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->c:Lcom/google/googlenav/intersectionexplorer/a;

    goto :goto_1e

    .line 256
    :cond_95
    const-wide v5, -0x3ffd268380ccde2eL

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_a8

    .line 257
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->i:Lcom/google/googlenav/intersectionexplorer/a;

    goto/16 :goto_1e

    .line 258
    :cond_a8
    const-wide v5, -0x4006de04abbbd2e8L

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_bb

    .line 259
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->h:Lcom/google/googlenav/intersectionexplorer/a;

    goto/16 :goto_1e

    .line 260
    :cond_bb
    const-wide v5, -0x4016de04abbbd2e8L

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_ce

    .line 261
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->g:Lcom/google/googlenav/intersectionexplorer/a;

    goto/16 :goto_1e

    .line 262
    :cond_ce
    const-wide v5, 0x400921fb54442d18L

    sub-double/2addr v5, v1

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_e3

    const-wide v5, -0x3ff6de04abbbd2e8L

    add-double v0, v5, v1

    cmpg-double v0, v3, v0

    if-gez v0, :cond_e7

    .line 264
    :cond_e3
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->f:Lcom/google/googlenav/intersectionexplorer/a;

    goto/16 :goto_1e

    .line 268
    :cond_e7
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->l:Lcom/google/googlenav/intersectionexplorer/a;

    goto/16 :goto_1e
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->i:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->i:I

    :goto_6
    return v0

    :cond_7
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_6
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 167
    sget-object v3, Lcom/google/googlenav/intersectionexplorer/a;->l:Lcom/google/googlenav/intersectionexplorer/a;

    .line 168
    sparse-switch v0, :sswitch_data_9e

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 204
    float-to-double v3, v1

    float-to-double v1, v2

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a(DD)Lcom/google/googlenav/intersectionexplorer/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 207
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->l:Lcom/google/googlenav/intersectionexplorer/a;

    if-ne v1, v2, :cond_8d

    .line 208
    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 216
    :cond_24
    :goto_24
    return v5

    .line 171
    :sswitch_25
    float-to-double v3, v1

    iput-wide v3, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->b:D

    .line 172
    float-to-double v2, v2

    iput-wide v2, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->c:D

    .line 173
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->g:I

    .line 174
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->h:I

    .line 175
    iget v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->g:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_59

    .line 176
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->j:Lcom/google/googlenav/intersectionexplorer/a;

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 177
    iput-boolean v5, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    .line 185
    :goto_4d
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    if-eqz v0, :cond_24

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    invoke-interface {v0, v1}, Lcom/google/googlenav/intersectionexplorer/b;->a(Lcom/google/googlenav/intersectionexplorer/a;)V

    goto :goto_24

    .line 178
    :cond_59
    iget v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->h:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_67

    .line 179
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->k:Lcom/google/googlenav/intersectionexplorer/a;

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 180
    iput-boolean v5, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    goto :goto_4d

    .line 182
    :cond_67
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->e:Lcom/google/googlenav/intersectionexplorer/a;

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->f:Z

    goto :goto_4d

    .line 191
    :sswitch_6f
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 192
    float-to-double v3, v1

    float-to-double v1, v2

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a(DD)Lcom/google/googlenav/intersectionexplorer/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 195
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->l:Lcom/google/googlenav/intersectionexplorer/a;

    if-ne v1, v2, :cond_81

    .line 196
    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    .line 198
    :cond_81
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    if-eqz v0, :cond_24

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    invoke-interface {v0, v1}, Lcom/google/googlenav/intersectionexplorer/b;->c(Lcom/google/googlenav/intersectionexplorer/a;)V

    goto :goto_24

    .line 211
    :cond_8d
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    if-eqz v0, :cond_24

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->d:Lcom/google/googlenav/intersectionexplorer/a;

    invoke-interface {v0, v1}, Lcom/google/googlenav/intersectionexplorer/b;->b(Lcom/google/googlenav/intersectionexplorer/a;)V

    goto :goto_24

    .line 168
    nop

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_25
        0x1 -> :sswitch_6f
        0x9 -> :sswitch_25
        0xa -> :sswitch_6f
    .end sparse-switch
.end method

.method public setGestureListener(Lcom/google/googlenav/intersectionexplorer/b;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->a:Lcom/google/googlenav/intersectionexplorer/b;

    .line 146
    return-void
.end method

.method public setMinimumRadius(I)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->e:I

    .line 154
    return-void
.end method

.method public setTestWidth(I)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput p1, p0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->i:I

    .line 289
    return-void
.end method
