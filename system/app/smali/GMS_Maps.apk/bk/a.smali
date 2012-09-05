.class public Lbk/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:Lbn/f;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Lbn/b;

.field private j:Lbn/f;

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Lbn/f;

.field private q:Lbn/f;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:[Landroid/graphics/Bitmap;

.field private w:I

.field private x:I

.field private y:Z

.field private z:Lbn/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFLandroid/graphics/Bitmap;)V
    .registers 15

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/16 v7, 0x78

    const/16 v6, 0xff

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbn/f;

    invoke-direct {v0, v1, v1}, Lbn/f;-><init>(II)V

    iput-object v0, p0, Lbk/a;->c:Lbn/f;

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbk/a;->e:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbk/a;->f:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbk/a;->g:I

    const/high16 v0, 0x3f00

    iput v0, p0, Lbk/a;->h:F

    const/16 v0, 0x18

    iput v0, p0, Lbk/a;->n:I

    iput-boolean v1, p0, Lbk/a;->t:Z

    iput-boolean v1, p0, Lbk/a;->u:Z

    iput v1, p0, Lbk/a;->w:I

    iput v1, p0, Lbk/a;->x:I

    iput-boolean v1, p0, Lbk/a;->y:Z

    iput-object p1, p0, Lbk/a;->a:Landroid/content/Context;

    iput p2, p0, Lbk/a;->b:I

    iget-object v0, p0, Lbk/a;->c:Lbn/f;

    iput p3, v0, Lbn/f;->b:F

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lbk/a;->v:[Landroid/graphics/Bitmap;

    move v2, v1

    :goto_45
    const/4 v0, 0x4

    if-ge v2, v0, :cond_62

    move v0, v1

    :goto_49
    const/4 v3, 0x4

    if-ge v0, v3, :cond_5e

    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v0

    mul-int/lit8 v4, v0, 0x78

    mul-int/lit8 v5, v2, 0x78

    invoke-static {p4, v4, v5, v7, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lbk/a;->v:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_5e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_45

    :cond_62
    iput v7, p0, Lbk/a;->k:I

    iput v7, p0, Lbk/a;->l:I

    new-instance v0, Lbn/f;

    iget v2, p0, Lbk/a;->k:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lbk/a;->l:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Lbn/f;-><init>(II)V

    iput-object v0, p0, Lbk/a;->j:Lbn/f;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbk/a;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lbk/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbk/a;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbk/a;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lbk/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbk/a;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbk/a;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lbk/a;->o:Landroid/graphics/Paint;

    iget v1, p0, Lbk/a;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lbk/a;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Lbn/f;

    iget-object v1, p0, Lbk/a;->j:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget-object v2, p0, Lbk/a;->j:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    iget-object v3, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x4040

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbn/f;-><init>(FF)V

    iput-object v0, p0, Lbk/a;->p:Lbn/f;

    new-instance v0, Lbn/f;

    iget-object v1, p0, Lbk/a;->p:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget-object v2, p0, Lbk/a;->p:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    iget-object v3, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbn/f;-><init>(FF)V

    iput-object v0, p0, Lbk/a;->q:Lbn/f;

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbk/a;->i:Lbn/b;

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v0, v8}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v0, v8}, Lbn/b;->b(F)V

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbk/a;->z:Lbn/b;

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0, v9}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0, v9}, Lbn/b;->b(F)V

    invoke-direct {p0}, Lbk/a;->d()V

    return-void
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.genie.geniewidget/.activities.NewsActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.genie.weather"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lbk/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()V
    .registers 9

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x8c

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbk/a;->e:I

    const/16 v0, 0x64

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbk/a;->f:I

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbk/a;->g:I

    new-array v5, v3, [I

    iget v0, p0, Lbk/a;->e:I

    aput v0, v5, v2

    const/4 v0, 0x1

    iget v2, p0, Lbk/a;->f:I

    aput v2, v5, v0

    const/4 v0, 0x2

    iget v2, p0, Lbk/a;->g:I

    aput v2, v5, v0

    new-array v6, v3, [F

    fill-array-data v6, :array_4c

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x4348

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lbk/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lbk/a;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lbk/a;->r:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbk/a;->s:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lbk/a;->t:Z

    if-nez v0, :cond_10

    iput-boolean v1, p0, Lbk/a;->t:Z

    iput-boolean v1, p0, Lbk/a;->u:Z

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    :cond_10
    return-void
.end method

.method public a(F)V
    .registers 3

    iput p1, p0, Lbk/a;->h:F

    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_11

    iget-boolean v0, p0, Lbk/a;->t:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lbk/a;->a()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-boolean v0, p0, Lbk/a;->t:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbk/a;->b()V

    goto :goto_10
.end method

.method public a(II)V
    .registers 6

    invoke-direct {p0}, Lbk/a;->e()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget v0, p0, Lbk/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    int-to-float v0, p2

    iget-object v1, p0, Lbk/a;->c:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    iget v2, p0, Lbk/a;->l:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-direct {p0}, Lbk/a;->c()V

    goto :goto_6
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 12

    const/16 v9, 0xff

    const/high16 v8, 0x3f80

    const/high16 v7, 0x437f

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbk/a;->u:Z

    if-eqz v0, :cond_127

    invoke-direct {p0}, Lbk/a;->e()Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbk/a;->m:Landroid/graphics/Paint;

    iget-object v2, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lbk/a;->y:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_138

    iget v0, p0, Lbk/a;->w:I

    iput v0, p0, Lbk/a;->x:I

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0, v8}, Lbn/b;->b(F)V

    :cond_40
    :goto_40
    iget-object v0, p0, Lbk/a;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lbk/a;->b:I

    int-to-float v3, v0

    const/high16 v4, 0x4348

    iget-object v5, p0, Lbk/a;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbk/a;->c:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v2, p0, Lbk/a;->c:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    iget-object v3, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v3}, Lbn/b;->b()F

    move-result v3

    sub-float v3, v8, v3

    const/high16 v4, 0x41f0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x4240

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lbk/a;->k:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lbk/a;->l:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    iget-object v2, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    iget-object v2, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lbk/a;->v:[Landroid/graphics/Bitmap;

    iget v2, p0, Lbk/a;->x:I

    aget-object v0, v0, v2

    iget v2, p0, Lbk/a;->k:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lbk/a;->l:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lbk/a;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lbk/a;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbk/a;->r:Ljava/lang/String;

    iget-object v2, p0, Lbk/a;->p:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbk/a;->p:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    iget-object v4, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lbk/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lbk/a;->q:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbk/a;->q:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    iget-object v4, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lbk/a;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbk/a;->r:Ljava/lang/String;

    iget-object v2, p0, Lbk/a;->p:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbk/a;->p:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    iget-object v4, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lbk/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lbk/a;->q:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbk/a;->q:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    iget-object v4, p0, Lbk/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_127
    iget-boolean v0, p0, Lbk/a;->t:Z

    if-nez v0, :cond_137

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_137

    iput-boolean v6, p0, Lbk/a;->u:Z

    :cond_137
    return-void

    :cond_138
    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_40

    iget v0, p0, Lbk/a;->x:I

    iget v2, p0, Lbk/a;->w:I

    if-ne v0, v2, :cond_40

    iput-boolean v6, p0, Lbk/a;->y:Z

    goto/16 :goto_40
.end method

.method public a(Lbg/c;)V
    .registers 6

    const/16 v3, 0xf

    const/4 v2, 0x1

    sget-object v0, Lbk/b;->a:[I

    invoke-virtual {p1}, Lbg/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    :goto_e
    iget v0, p0, Lbk/a;->x:I

    iget v1, p0, Lbk/a;->w:I

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lbk/a;->z:Lbn/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iput-boolean v2, p0, Lbk/a;->y:Z

    :cond_1c
    return-void

    :pswitch_1d
    const/4 v0, 0x0

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_21
    const/16 v0, 0xd

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_26
    const/16 v0, 0xa

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_2b
    const/4 v0, 0x7

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_2f
    const/4 v0, 0x5

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_33
    iput v3, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_36
    const/4 v0, 0x6

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_3a
    iput v3, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_3d
    iput v2, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_40
    const/16 v0, 0xb

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_45
    iput v2, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_48
    const/16 v0, 0xe

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_4d
    const/4 v0, 0x3

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_51
    const/16 v0, 0xc

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_56
    const/16 v0, 0x9

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    :pswitch_5b
    const/4 v0, 0x4

    iput v0, p0, Lbk/a;->w:I

    goto :goto_e

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_33
        :pswitch_36
        :pswitch_36
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_40
        :pswitch_45
        :pswitch_48
        :pswitch_4d
        :pswitch_51
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_5b
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbk/a;->r:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Lbk/a;->t:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbk/a;->t:Z

    iget-object v0, p0, Lbk/a;->i:Lbn/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbk/a;->s:Ljava/lang/String;

    return-void
.end method
