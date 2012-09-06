.class public Lcom/anddoes/launcher/BubbleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static t:J


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field public a:Z

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private final e:Lcom/anddoes/launcher/do;

.field private final f:Landroid/graphics/Canvas;

.field private final g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:F

.field private r:F

.field private s:J

.field private final u:Landroid/os/Handler;

.field private final v:Ljava/lang/Runnable;

.field private w:Lcom/anddoes/launcher/Launcher;

.field private x:Lcom/anddoes/launcher/kj;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 77
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/anddoes/launcher/BubbleTextView;->t:J

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->d:I

    .line 59
    new-instance v0, Lcom/anddoes/launcher/do;

    invoke-direct {v0}, Lcom/anddoes/launcher/do;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->e:Lcom/anddoes/launcher/do;

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->f:Landroid/graphics/Canvas;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->g:Landroid/graphics/Rect;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->u:Landroid/os/Handler;

    .line 79
    iput-boolean v2, p0, Lcom/anddoes/launcher/BubbleTextView;->a:Z

    .line 81
    new-instance v0, Lcom/anddoes/launcher/at;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/at;-><init>(Lcom/anddoes/launcher/BubbleTextView;)V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->v:Ljava/lang/Runnable;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    .line 91
    iput v2, p0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    .line 184
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->d:I

    .line 59
    new-instance v0, Lcom/anddoes/launcher/do;

    invoke-direct {v0}, Lcom/anddoes/launcher/do;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->e:Lcom/anddoes/launcher/do;

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->f:Landroid/graphics/Canvas;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->g:Landroid/graphics/Rect;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->u:Landroid/os/Handler;

    .line 79
    iput-boolean v2, p0, Lcom/anddoes/launcher/BubbleTextView;->a:Z

    .line 81
    new-instance v0, Lcom/anddoes/launcher/at;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/at;-><init>(Lcom/anddoes/launcher/BubbleTextView;)V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->v:Ljava/lang/Runnable;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    .line 91
    iput v2, p0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    .line 189
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->d:I

    .line 59
    new-instance v0, Lcom/anddoes/launcher/do;

    invoke-direct {v0}, Lcom/anddoes/launcher/do;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->e:Lcom/anddoes/launcher/do;

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->f:Landroid/graphics/Canvas;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->g:Landroid/graphics/Rect;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->u:Landroid/os/Handler;

    .line 79
    iput-boolean v2, p0, Lcom/anddoes/launcher/BubbleTextView;->a:Z

    .line 81
    new-instance v0, Lcom/anddoes/launcher/at;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/at;-><init>(Lcom/anddoes/launcher/BubbleTextView;)V

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->v:Ljava/lang/Runnable;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    .line 91
    iput v2, p0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    .line 194
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    sget v0, Lcom/anddoes/launcher/do;->a:I

    .line 336
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getHeight()I

    move-result v2

    .line 337
    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 336
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    iget-object v2, p0, Lcom/anddoes/launcher/BubbleTextView;->g:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 341
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->e:Lcom/anddoes/launcher/do;

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    return-object v1
.end method

.method private a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 198
    check-cast p1, Lcom/anddoes/launcher/Launcher;

    iput-object p1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    .line 199
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 203
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->b:Landroid/graphics/Paint;

    .line 204
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->c:F

    .line 206
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 207
    const v1, 0x1060012

    const-string v2, "outline_color"

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 209
    const v2, 0x7f090008

    const-string v3, "bubble_text_color"

    .line 208
    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->A:I

    .line 210
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 211
    const v2, 0x7f090009

    const-string v3, "bubble_ring_color"

    .line 210
    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->B:I

    .line 212
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 213
    const v2, 0x7f09000a

    const-string v3, "bubble_shadow_color"

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->C:I

    .line 214
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 215
    const v2, 0x7f09000b

    const-string v3, "bubble_background_color"

    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->D:I

    .line 216
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 217
    const v2, 0x7f09000c

    const-string v3, "bubble_shader_color"

    .line 216
    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->E:I

    .line 218
    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->m:I

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->l:I

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->k:I

    iput v0, p0, Lcom/anddoes/launcher/BubbleTextView;->j:I

    .line 220
    const/high16 v0, 0x4080

    const/4 v1, 0x0

    const/high16 v2, 0x4000

    const/high16 v3, -0x2300

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anddoes/launcher/BubbleTextView;->setShadowLayer(FFFI)V

    .line 221
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 402
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->q()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 403
    iget-wide v0, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    sget-wide v4, Lcom/anddoes/launcher/BubbleTextView;->t:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_a7

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 406
    iget v4, p0, Lcom/anddoes/launcher/BubbleTextView;->q:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 407
    iget v5, p0, Lcom/anddoes/launcher/BubbleTextView;->r:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 409
    iget-object v6, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-boolean v6, v6, Lcom/anddoes/launcher/Launcher;->n:Z

    if-nez v6, :cond_3d

    if-le v5, v8, :cond_3d

    if-lt v4, v7, :cond_47

    .line 412
    :cond_3d
    iget-object v6, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-boolean v6, v6, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v6, :cond_a7

    if-ge v5, v7, :cond_a7

    if-le v4, v8, :cond_a7

    .line 413
    :cond_47
    iget-object v4, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-boolean v4, v4, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v4, :cond_a8

    :goto_4d
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-boolean v1, v1, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v1, :cond_aa

    iget v1, p0, Lcom/anddoes/launcher/BubbleTextView;->q:F

    .line 414
    :goto_55
    cmpg-float v0, v0, v1

    if-gez v0, :cond_ad

    move v0, v2

    .line 415
    :goto_5a
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    iget-wide v4, v1, Lcom/anddoes/launcher/kj;->j:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-nez v1, :cond_87

    if-eqz v0, :cond_af

    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v4, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    iget-wide v4, v4, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v4, v5}, Lcom/anddoes/launcher/preference/az;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->y:Ljava/lang/String;

    :goto_78
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->y:Ljava/lang/String;

    if-eqz v1, :cond_87

    const-string v1, "DO_NOTHING"

    iget-object v4, p0, Lcom/anddoes/launcher/BubbleTextView;->y:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    move v3, v2

    :cond_87
    if-eqz v3, :cond_a7

    .line 416
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    .line 417
    iput-boolean v2, p0, Lcom/anddoes/launcher/BubbleTextView;->a:Z

    .line 418
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anddoes/launcher/BubbleTextView;->v:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    if-eqz v0, :cond_be

    .line 420
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->y:Ljava/lang/String;

    const-string v2, "SWIPE_UP"

    iget-object v3, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    iget-wide v3, v3, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 427
    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    move v0, v1

    .line 413
    goto :goto_4d

    .line 414
    :cond_aa
    iget v1, p0, Lcom/anddoes/launcher/BubbleTextView;->r:F

    goto :goto_55

    :cond_ad
    move v0, v3

    .line 413
    goto :goto_5a

    .line 415
    :cond_af
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v4, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    iget-wide v4, v4, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v4, v5}, Lcom/anddoes/launcher/preference/az;->b(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->y:Ljava/lang/String;

    goto :goto_78

    .line 422
    :cond_be
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->y:Ljava/lang/String;

    const-string v2, "SWIPE_DOWN"

    iget-object v3, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    iget-wide v3, v3, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_a7
.end method

.method static d()I
    .registers 1

    .prologue
    .line 479
    sget v0, Lcom/anddoes/launcher/do;->a:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/ba;

    if-eqz v0, :cond_1d

    .line 461
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    .line 462
    if-eqz v0, :cond_1d

    .line 463
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 464
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1e

    :goto_1a
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/CellLayout;->a(Lcom/anddoes/launcher/BubbleTextView;)V

    .line 467
    :cond_1d
    return-void

    .line 464
    :cond_1e
    const/4 p0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    if-lez v0, :cond_8

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/BubbleTextView;->a(I)V

    .line 180
    :cond_8
    return-void
.end method

.method public final a(I)V
    .registers 26
    .parameter

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 101
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/anddoes/launcher/BubbleTextView;->z:I

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 103
    instance-of v3, v2, Lcom/anddoes/launcher/kj;

    if-eqz v3, :cond_41

    .line 104
    check-cast v2, Lcom/anddoes/launcher/kj;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->D()Lcom/anddoes/launcher/ds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/kj;->a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    move-object/from16 v0, p0

    iget v3, v0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    if-nez v3, :cond_42

    .line 107
    const/4 v3, 0x0

    .line 108
    new-instance v4, Lcom/anddoes/launcher/cj;

    invoke-direct {v4, v2}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_41
    :goto_41
    return-void

    .line 110
    :cond_42
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->e()F

    move-result v3

    .line 111
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11}, Landroid/graphics/Canvas;-><init>()V

    .line 112
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 113
    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_181

    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 118
    :goto_6b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    const/16 v4, 0xa

    if-ge v2, v4, :cond_186

    .line 119
    const/high16 v2, 0x4160

    .line 126
    :goto_75
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 127
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 128
    mul-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->A:I

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v14, v10, v2, v4, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 133
    iget v2, v13, Landroid/graphics/Rect;->right:I

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v15, v2, v4

    .line 134
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v16, v2, v4

    .line 136
    const/high16 v2, 0x41a0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 137
    add-int/lit8 v2, v15, 0xa

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 138
    new-instance v19, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 141
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->B:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/anddoes/launcher/BubbleTextView;->C:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    move/from16 v0, v17

    int-to-float v2, v0

    const v3, 0x3f6e978d

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v21, v0

    .line 146
    move/from16 v0, v18

    int-to-float v2, v0

    const v3, 0x3f6e978d

    mul-float/2addr v2, v3

    float-to-int v5, v2

    .line 147
    new-instance v22, Landroid/graphics/RectF;

    sub-int v2, v18, v5

    int-to-float v2, v2

    .line 148
    sub-int v3, v17, v21

    int-to-float v3, v3

    int-to-float v4, v5

    move/from16 v0, v21

    int-to-float v6, v0

    .line 147
    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->D:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    new-instance v2, Landroid/graphics/LinearGradient;

    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    .line 154
    const/4 v4, 0x0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move/from16 v0, v21

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/anddoes/launcher/BubbleTextView;->E:I

    .line 155
    move-object/from16 v0, p0

    iget v8, v0, Lcom/anddoes/launcher/BubbleTextView;->D:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 153
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 158
    move/from16 v0, v18

    if-le v2, v0, :cond_145

    .line 159
    sub-int v2, v2, v18

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    :cond_145
    div-int/lit8 v2, v17, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v17, 0x2

    int-to-float v3, v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    div-int/lit8 v2, v21, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v21, 0x2

    int-to-float v3, v3

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    sub-int v2, v18, v15

    div-int/lit8 v2, v2, 0x2

    iget v3, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 166
    sub-int v3, v17, v16

    div-int/lit8 v3, v3, 0x2

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 167
    invoke-virtual {v11, v10, v2, v3, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    const/4 v2, 0x0

    .line 170
    new-instance v3, Lcom/anddoes/launcher/cj;

    invoke-direct {v3, v12}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_41

    .line 116
    :cond_181
    const-string v2, "999+"

    move-object v10, v2

    goto/16 :goto_6b

    .line 120
    :cond_186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/BubbleTextView;->z:I

    const/16 v4, 0x64

    if-ge v2, v4, :cond_192

    .line 121
    const/high16 v2, 0x4140

    goto/16 :goto_75

    .line 123
    :cond_192
    const/high16 v2, 0x4120

    goto/16 :goto_75
.end method

.method public final a(Lcom/anddoes/launcher/kj;Lcom/anddoes/launcher/ds;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-boolean v0, p1, Lcom/anddoes/launcher/kj;->c:Z

    if-eqz v0, :cond_39

    .line 226
    new-instance v0, Lcom/anddoes/launcher/cj;

    invoke-virtual {p1, p2}, Lcom/anddoes/launcher/kj;->a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 230
    :goto_e
    if-nez v0, :cond_19

    .line 231
    new-instance v0, Lcom/anddoes/launcher/cj;

    invoke-virtual {p1, p2}, Lcom/anddoes/launcher/kj;->a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    :cond_19
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    if-eqz p3, :cond_23

    .line 235
    iget-object v0, p1, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_23
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 238
    iput-object p1, p0, Lcom/anddoes/launcher/BubbleTextView;->x:Lcom/anddoes/launcher/kj;

    .line 239
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 240
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v1, "homescreen_icon_text_color"

    invoke-virtual {v0, p0, v1}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 241
    return-void

    .line 228
    :cond_39
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->w:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/c/l;->a(Lcom/anddoes/launcher/kj;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e
.end method

.method final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/anddoes/launcher/BubbleTextView;->p:Z

    .line 453
    if-nez p1, :cond_7

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    .line 456
    :cond_7
    invoke-direct {p0}, Lcom/anddoes/launcher/BubbleTextView;->e()V

    .line 457
    return-void
.end method

.method final b()V
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    .line 471
    invoke-direct {p0}, Lcom/anddoes/launcher/BubbleTextView;->e()V

    .line 472
    return-void
.end method

.method final c()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 484
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    .line 485
    if-eqz v0, :cond_24

    .line 486
    iget v1, p0, Lcom/anddoes/launcher/BubbleTextView;->mScrollX:I

    .line 487
    iget v2, p0, Lcom/anddoes/launcher/BubbleTextView;->mScrollY:I

    .line 489
    iget-boolean v3, p0, Lcom/anddoes/launcher/BubbleTextView;->n:Z

    if-eqz v3, :cond_1d

    .line 490
    iget v3, p0, Lcom/anddoes/launcher/BubbleTextView;->mRight:I

    iget v4, p0, Lcom/anddoes/launcher/BubbleTextView;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/anddoes/launcher/BubbleTextView;->mBottom:I

    iget v5, p0, Lcom/anddoes/launcher/BubbleTextView;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 491
    iput-boolean v7, p0, Lcom/anddoes/launcher/BubbleTextView;->n:Z

    .line 494
    :cond_1d
    or-int v3, v1, v2

    if-nez v3, :cond_6b

    .line 495
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 503
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x4080

    const/high16 v2, 0x4000

    .line 504
    const/high16 v3, -0x2300

    .line 503
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 505
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 506
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 507
    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mScrollX:I

    .line 508
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 507
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 509
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe0

    .line 510
    const/high16 v2, -0x3400

    .line 509
    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 511
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 512
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 513
    return-void

    .line 497
    :cond_6b
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_24
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 262
    iget-boolean v0, p0, Lcom/anddoes/launcher/BubbleTextView;->h:Z

    if-nez v0, :cond_10

    .line 263
    invoke-direct {p0}, Lcom/anddoes/launcher/BubbleTextView;->e()V

    .line 294
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    .line 295
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 296
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 298
    :cond_21
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 299
    return-void

    .line 269
    :cond_25
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4f

    move v0, v1

    .line 270
    :goto_2a
    iget-boolean v3, p0, Lcom/anddoes/launcher/BubbleTextView;->p:Z

    if-nez v3, :cond_30

    .line 271
    iput-object v4, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    .line 273
    :cond_30
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 274
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_51

    .line 279
    iput-object v4, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    .line 285
    :goto_3e
    iput-boolean v2, p0, Lcom/anddoes/launcher/BubbleTextView;->p:Z

    .line 286
    invoke-direct {p0}, Lcom/anddoes/launcher/BubbleTextView;->e()V

    .line 288
    :cond_43
    iget-object v3, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5e

    .line 289
    :goto_47
    if-nez v0, :cond_10

    if-eqz v1, :cond_10

    .line 290
    invoke-direct {p0}, Lcom/anddoes/launcher/BubbleTextView;->e()V

    goto :goto_10

    :cond_4f
    move v0, v2

    .line 269
    goto :goto_2a

    .line 282
    :cond_51
    iget-object v3, p0, Lcom/anddoes/launcher/BubbleTextView;->f:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/anddoes/launcher/BubbleTextView;->k:I

    .line 283
    iget v5, p0, Lcom/anddoes/launcher/BubbleTextView;->j:I

    .line 281
    invoke-direct {p0, v3, v4, v5}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    goto :goto_3e

    :cond_5e
    move v1, v2

    .line 288
    goto :goto_47
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 517
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 518
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 519
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 520
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 524
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 525
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 526
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 527
    :cond_d
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 5
    .parameter

    .prologue
    .line 531
    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->d:I

    if-eq v0, p1, :cond_13

    .line 532
    iput p1, p0, Lcom/anddoes/launcher/BubbleTextView;->d:I

    .line 533
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    iget v2, p0, Lcom/anddoes/launcher/BubbleTextView;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    .line 536
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_7c

    .line 398
    :cond_b
    :goto_b
    return v0

    .line 355
    :pswitch_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->q:F

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->r:F

    .line 359
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anddoes/launcher/ia;->d(Landroid/content/Context;)V

    .line 364
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    if-nez v1, :cond_35

    .line 365
    iget-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->f:Landroid/graphics/Canvas;

    .line 366
    iget v2, p0, Lcom/anddoes/launcher/BubbleTextView;->m:I

    iget v3, p0, Lcom/anddoes/launcher/BubbleTextView;->l:I

    .line 365
    invoke-direct {p0, v1, v2, v3}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    .line 370
    :cond_35
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anddoes/launcher/BubbleTextView;->h:Z

    .line 372
    invoke-direct {p0}, Lcom/anddoes/launcher/BubbleTextView;->e()V

    goto :goto_b

    .line 374
    :cond_42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anddoes/launcher/BubbleTextView;->h:Z

    goto :goto_b

    .line 378
    :pswitch_46
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 379
    iget-boolean v1, p0, Lcom/anddoes/launcher/BubbleTextView;->a:Z

    if-nez v1, :cond_6b

    iget-wide v1, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6b

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anddoes/launcher/BubbleTextView;->s:J

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->q:F

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/BubbleTextView;->r:F

    goto :goto_b

    .line 384
    :cond_6b
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 392
    :pswitch_6f
    invoke-virtual {p0}, Lcom/anddoes/launcher/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anddoes/launcher/BubbleTextView;->i:Landroid/graphics/Bitmap;

    .line 394
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/BubbleTextView;->a(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 353
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6f
        :pswitch_46
        :pswitch_6f
    .end packed-switch
.end method

.method protected setFrame(IIII)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_10

    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_10

    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_10

    iget v0, p0, Lcom/anddoes/launcher/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_13

    .line 246
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/BubbleTextView;->n:Z

    .line 248
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/anddoes/launcher/BubbleTextView;->o:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method
