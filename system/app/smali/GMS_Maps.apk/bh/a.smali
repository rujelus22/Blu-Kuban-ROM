.class public Lbh/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbh/f;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lbm/e;

.field private c:Lbl/a;

.field private d:Lbi/d;

.field private e:Lbj/b;

.field private f:Lbk/a;

.field private g:F

.field private h:Z

.field private i:Z

.field private final j:I

.field private final k:I

.field private l:Lbn/a;

.field private m:Lcom/google/googlenav/wallpaper/f;

.field private final n:Landroid/os/Handler;

.field private o:Lbh/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbn/a;

    invoke-direct {v0}, Lbn/a;-><init>()V

    iput-object v0, p0, Lbh/a;->l:Lbn/a;

    new-instance v0, Lbh/b;

    invoke-direct {v0, p0}, Lbh/b;-><init>(Lbh/a;)V

    iput-object v0, p0, Lbh/a;->n:Landroid/os/Handler;

    iput-object p1, p0, Lbh/a;->a:Landroid/content/Context;

    iput-object p4, p0, Lbh/a;->m:Lcom/google/googlenav/wallpaper/f;

    iput p2, p0, Lbh/a;->j:I

    iput p3, p0, Lbh/a;->k:I

    new-instance v0, Lbh/d;

    invoke-direct {v0, p0}, Lbh/d;-><init>(Lbh/f;)V

    iput-object v0, p0, Lbh/a;->o:Lbh/d;

    iget-object v0, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v0}, Lbh/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lbh/a;->b()V

    :cond_2b
    return-void
.end method

.method static synthetic a(Lbh/a;)Lcom/google/googlenav/wallpaper/f;
    .registers 2

    iget-object v0, p0, Lbh/a;->m:Lcom/google/googlenav/wallpaper/f;

    return-object v0
.end method

.method private b()V
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Lbm/e;

    iget-object v1, p0, Lbh/a;->a:Landroid/content/Context;

    iget v2, p0, Lbh/a;->j:I

    iget v3, p0, Lbh/a;->k:I

    invoke-direct {p0}, Lbh/a;->c()[Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lbm/e;-><init>(Landroid/content/Context;II[Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lbh/a;->b:Lbm/e;

    new-instance v0, Lbl/a;

    iget v1, p0, Lbh/a;->j:I

    iget v2, p0, Lbh/a;->k:I

    invoke-direct {v0, v1, v2}, Lbl/a;-><init>(II)V

    iput-object v0, p0, Lbh/a;->c:Lbl/a;

    new-instance v0, Lbi/d;

    iget v1, p0, Lbh/a;->j:I

    iget v2, p0, Lbh/a;->k:I

    iget-object v3, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v3}, Lbh/d;->c()[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v4}, Lbh/d;->e()[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v5}, Lbh/d;->d()[Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lbi/d;-><init>(II[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lbh/a;->d:Lbi/d;

    new-instance v0, Lbj/b;

    iget v1, p0, Lbh/a;->j:I

    iget v2, p0, Lbh/a;->k:I

    iget-object v3, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v3}, Lbh/d;->f()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lbj/b;-><init>(IILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lbh/a;->e:Lbj/b;

    new-instance v0, Lbk/a;

    iget-object v1, p0, Lbh/a;->a:Landroid/content/Context;

    iget v2, p0, Lbh/a;->j:I

    const/high16 v3, 0x41c8

    iget-object v4, p0, Lbh/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v4}, Lbh/d;->g()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lbk/a;-><init>(Landroid/content/Context;IFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lbh/a;->f:Lbk/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbh/a;->i:Z

    iget-object v0, p0, Lbh/a;->m:Lcom/google/googlenav/wallpaper/f;

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/f;->b()V

    return-void
.end method

.method private c()[Landroid/graphics/Bitmap;
    .registers 11

    const/16 v9, 0x60

    const/4 v8, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lbh/a;->o:Lbh/d;

    invoke-virtual {v0}, Lbh/d;->b()[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v3, v0, v1

    const/16 v0, 0x9

    new-array v4, v0, [Landroid/graphics/Bitmap;

    move v2, v1

    :goto_11
    if-ge v2, v8, :cond_2a

    move v0, v1

    :goto_14
    if-ge v0, v8, :cond_26

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v0

    mul-int/lit8 v6, v0, 0x60

    mul-int/lit8 v7, v2, 0x60

    invoke-static {v3, v6, v7, v9, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_2a
    return-object v4
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lbh/a;->b()V

    return-void
.end method

.method public a(F)V
    .registers 4

    iput p1, p0, Lbh/a;->g:F

    iget-boolean v0, p0, Lbh/a;->i:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    iget v1, p0, Lbh/a;->g:F

    invoke-virtual {v0, v1}, Lbm/e;->b(F)V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    iget v1, p0, Lbh/a;->g:F

    invoke-virtual {v0, v1}, Lbl/a;->a(F)V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    iget v1, p0, Lbh/a;->g:F

    invoke-virtual {v0, v1}, Lbi/d;->a(F)V

    iget-object v0, p0, Lbh/a;->f:Lbk/a;

    iget v1, p0, Lbh/a;->g:F

    invoke-virtual {v0, v1}, Lbk/a;->a(F)V

    :cond_22
    return-void
.end method

.method public a(II)V
    .registers 4

    iget-boolean v0, p0, Lbh/a;->i:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lbh/a;->f:Lbk/a;

    invoke-virtual {v0, p1, p2}, Lbk/a;->a(II)V

    goto :goto_4
.end method

.method public a(Landroid/graphics/Canvas;IIZ)V
    .registers 9

    const/4 v3, 0x0

    iget-boolean v0, p0, Lbh/a;->i:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    if-eqz p1, :cond_5

    sub-int v0, p2, p3

    if-gez v0, :cond_49

    int-to-float v0, v0

    iget v1, p0, Lbh/a;->g:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0, p1, p4}, Lbj/b;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0, p1, p4}, Lbm/e;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0, p1, p4}, Lbl/a;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0, p1, p4}, Lbi/d;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lbh/a;->f:Lbk/a;

    invoke-virtual {v0, p1}, Lbk/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lbh/a;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbh/a;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbh/a;->n:Landroid/os/Handler;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    :cond_49
    div-int/lit8 v0, v0, 0x2

    goto :goto_14
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public a(Lbg/b;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lbh/a;->i:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v0, Lbg/c;->a:Lbg/c;

    if-eqz p1, :cond_24

    iget-object v1, p1, Lbg/b;->a:Lbg/c;

    if-eqz v1, :cond_24

    iget-object v0, p1, Lbg/b;->a:Lbg/c;

    iget-object v1, p0, Lbh/a;->f:Lbk/a;

    iget-object v2, p1, Lbg/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbk/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lbh/a;->f:Lbk/a;

    iget-object v2, p1, Lbg/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbk/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lbh/a;->f:Lbk/a;

    invoke-virtual {v1, v0}, Lbk/a;->a(Lbg/c;)V

    :cond_24
    sget-object v1, Lbh/c;->a:[I

    invoke-virtual {v0}, Lbg/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1d4

    :goto_2f
    iget-object v0, p0, Lbh/a;->m:Lcom/google/googlenav/wallpaper/f;

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/f;->b()V

    goto :goto_6

    :pswitch_35
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto :goto_2f

    :pswitch_4a
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    sget-object v1, Lbi/f;->b:Lbi/f;

    sget-object v2, Lbi/c;->a:Lbi/c;

    invoke-virtual {v0, v1, v2, v3}, Lbi/d;->a(Lbi/f;Lbi/c;Z)V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto :goto_2f

    :pswitch_63
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    sget-object v1, Lbi/f;->a:Lbi/f;

    sget-object v2, Lbi/c;->a:Lbi/c;

    invoke-virtual {v0, v1, v2, v3}, Lbi/d;->a(Lbi/f;Lbi/c;Z)V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto :goto_2f

    :pswitch_7c
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    sget-object v1, Lbi/f;->a:Lbi/f;

    invoke-virtual {v0, v1}, Lbj/b;->a(Lbi/f;)V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto :goto_2f

    :pswitch_93
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    sget-object v1, Lbi/f;->a:Lbi/f;

    sget-object v2, Lbi/c;->c:Lbi/c;

    invoke-virtual {v0, v1, v2, v3}, Lbi/d;->a(Lbi/f;Lbi/c;Z)V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto :goto_2f

    :pswitch_ac
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    sget-object v1, Lbm/f;->a:Lbm/f;

    invoke-virtual {v0, v1}, Lbm/e;->a(Lbm/f;)V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto/16 :goto_2f

    :pswitch_c4
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    sget-object v1, Lbm/f;->b:Lbm/f;

    invoke-virtual {v0, v1}, Lbm/e;->a(Lbm/f;)V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto/16 :goto_2f

    :pswitch_dc
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    sget-object v1, Lbm/f;->a:Lbm/f;

    invoke-virtual {v0, v1}, Lbm/e;->a(Lbm/f;)V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->a:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_f6
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->a:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_10e
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->b:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_126
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->b:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_13e
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->c:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_156
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    sget-object v1, Lbi/f;->b:Lbi/f;

    sget-object v2, Lbi/c;->b:Lbi/c;

    sget-object v3, Lbi/e;->c:Lbi/e;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbi/d;->a(Lbi/f;Lbi/c;Lbi/e;Z)V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->a:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_174
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    sget-object v1, Lbi/f;->b:Lbi/f;

    sget-object v2, Lbi/c;->c:Lbi/c;

    sget-object v3, Lbi/e;->a:Lbi/e;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbi/d;->a(Lbi/f;Lbi/c;Lbi/e;Z)V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    sget-object v1, Lbl/c;->c:Lbl/c;

    invoke-virtual {v0, v1}, Lbl/a;->a(Lbl/c;)V

    goto/16 :goto_2f

    :pswitch_192
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto/16 :goto_2f

    :pswitch_1a8
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto/16 :goto_2f

    :pswitch_1be
    iget-object v0, p0, Lbh/a;->e:Lbj/b;

    invoke-virtual {v0}, Lbj/b;->a()V

    iget-object v0, p0, Lbh/a;->d:Lbi/d;

    invoke-virtual {v0}, Lbi/d;->a()V

    iget-object v0, p0, Lbh/a;->b:Lbm/e;

    invoke-virtual {v0}, Lbm/e;->a()V

    iget-object v0, p0, Lbh/a;->c:Lbl/a;

    invoke-virtual {v0}, Lbl/a;->a()V

    goto/16 :goto_2f

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_35
        :pswitch_4a
        :pswitch_63
        :pswitch_7c
        :pswitch_7c
        :pswitch_93
        :pswitch_ac
        :pswitch_ac
        :pswitch_c4
        :pswitch_c4
        :pswitch_dc
        :pswitch_f6
        :pswitch_10e
        :pswitch_10e
        :pswitch_126
        :pswitch_13e
        :pswitch_156
        :pswitch_174
        :pswitch_192
        :pswitch_192
        :pswitch_1a8
        :pswitch_1be
    .end packed-switch
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lbh/a;->h:Z

    return-void
.end method
