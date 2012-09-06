.class public LFM;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# instance fields
.field private a:F

.field private a:J

.field private final a:LFN;

.field private a:Landroid/view/MotionEvent;

.field private a:Z

.field private b:F

.field private b:Landroid/view/MotionEvent;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(LFN;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, LFM;->a:LFN;

    .line 137
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, LFM;->a:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 246
    iget-object v0, p0, LFM;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 247
    iput-object v1, p0, LFM;->a:Landroid/view/MotionEvent;

    .line 249
    :cond_c
    iget-object v0, p0, LFM;->b:Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    .line 250
    iget-object v0, p0, LFM;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 251
    iput-object v1, p0, LFM;->b:Landroid/view/MotionEvent;

    .line 253
    :cond_17
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter

    .prologue
    const/high16 v11, 0x3f00

    const/high16 v1, -0x4080

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 208
    iget-object v0, p0, LFM;->b:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    .line 209
    iget-object v0, p0, LFM;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 211
    :cond_f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LFM;->b:Landroid/view/MotionEvent;

    .line 213
    iput v1, p0, LFM;->g:F

    .line 214
    iput v1, p0, LFM;->h:F

    .line 215
    iput v1, p0, LFM;->i:F

    .line 217
    iget-object v0, p0, LFM;->a:Landroid/view/MotionEvent;

    .line 219
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 220
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 221
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 222
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 223
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 224
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 225
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 226
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 228
    sub-float v1, v3, v1

    .line 229
    sub-float v2, v4, v2

    .line 230
    sub-float v3, v7, v5

    .line 231
    sub-float v4, v8, v6

    .line 232
    iput v1, p0, LFM;->c:F

    .line 233
    iput v2, p0, LFM;->d:F

    .line 234
    iput v3, p0, LFM;->e:F

    .line 235
    iput v4, p0, LFM;->f:F

    .line 237
    mul-float v1, v3, v11

    add-float/2addr v1, v5

    iput v1, p0, LFM;->a:F

    .line 238
    mul-float v1, v4, v11

    add-float/2addr v1, v6

    iput v1, p0, LFM;->b:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, LFM;->a:J

    .line 240
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, LFM;->j:F

    .line 241
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, LFM;->k:F

    .line 242
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 275
    iget v0, p0, LFM;->a:F

    return v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, LFM;->a:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 143
    iget-boolean v3, p0, LFM;->a:Z

    if-nez v3, :cond_32

    .line 144
    const/4 v3, 0x5

    if-eq v0, v3, :cond_11

    const/16 v3, 0x105

    if-ne v0, v3, :cond_31

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_31

    .line 150
    invoke-direct {p0}, LFM;->a()V

    .line 152
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LFM;->a:Landroid/view/MotionEvent;

    .line 153
    const-wide/16 v2, 0x0

    iput-wide v2, p0, LFM;->a:J

    .line 155
    invoke-direct {p0, p1}, LFM;->a(Landroid/view/MotionEvent;)V

    .line 156
    iget-object v0, p0, LFM;->a:LFN;

    invoke-interface {v0, p0}, LFN;->a(LFM;)Z

    move-result v0

    iput-boolean v0, p0, LFM;->a:Z

    :cond_30
    :goto_30
    move v2, v1

    .line 204
    :cond_31
    return v2

    .line 162
    :cond_32
    sparse-switch v0, :sswitch_data_8a

    goto :goto_30

    .line 188
    :sswitch_36
    invoke-direct {p0, p1}, LFM;->a(Landroid/view/MotionEvent;)V

    .line 193
    iget v0, p0, LFM;->j:F

    iget v2, p0, LFM;->k:F

    div-float/2addr v0, v2

    const v2, 0x3f2b851f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_30

    .line 194
    iget-object v0, p0, LFM;->a:LFN;

    invoke-interface {v0, p0}, LFN;->b(LFM;)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_30

    .line 197
    iget-object v0, p0, LFM;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 198
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LFM;->a:Landroid/view/MotionEvent;

    goto :goto_30

    .line 166
    :sswitch_59
    invoke-direct {p0, p1}, LFM;->a(Landroid/view/MotionEvent;)V

    .line 169
    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7c

    move v0, v1

    .line 171
    :goto_65
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, LFM;->a:F

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LFM;->b:F

    .line 174
    iget-object v0, p0, LFM;->a:LFN;

    invoke-interface {v0, p0}, LFN;->a(LFM;)V

    .line 175
    iput-boolean v2, p0, LFM;->a:Z

    .line 177
    invoke-direct {p0}, LFM;->a()V

    goto :goto_30

    :cond_7c
    move v0, v2

    .line 169
    goto :goto_65

    .line 181
    :sswitch_7e
    iget-object v0, p0, LFM;->a:LFN;

    invoke-interface {v0, p0}, LFN;->a(LFM;)V

    .line 182
    iput-boolean v2, p0, LFM;->a:Z

    .line 184
    invoke-direct {p0}, LFM;->a()V

    goto :goto_30

    .line 162
    nop

    :sswitch_data_8a
    .sparse-switch
        0x2 -> :sswitch_36
        0x3 -> :sswitch_7e
        0x6 -> :sswitch_59
        0x106 -> :sswitch_59
    .end sparse-switch
.end method

.method public b()F
    .registers 2

    .prologue
    .line 290
    iget v0, p0, LFM;->b:F

    return v0
.end method

.method public c()F
    .registers 3

    .prologue
    .line 300
    iget v0, p0, LFM;->g:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 301
    iget v0, p0, LFM;->e:F

    .line 302
    iget v1, p0, LFM;->f:F

    .line 303
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LFM;->g:F

    .line 305
    :cond_17
    iget v0, p0, LFM;->g:F

    return v0
.end method

.method public d()F
    .registers 3

    .prologue
    .line 315
    iget v0, p0, LFM;->h:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 316
    iget v0, p0, LFM;->c:F

    .line 317
    iget v1, p0, LFM;->d:F

    .line 318
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LFM;->h:F

    .line 320
    :cond_17
    iget v0, p0, LFM;->h:F

    return v0
.end method

.method public e()F
    .registers 3

    .prologue
    .line 331
    iget v0, p0, LFM;->i:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 332
    invoke-virtual {p0}, LFM;->c()F

    move-result v0

    invoke-virtual {p0}, LFM;->d()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, LFM;->i:F

    .line 334
    :cond_13
    iget v0, p0, LFM;->i:F

    return v0
.end method
