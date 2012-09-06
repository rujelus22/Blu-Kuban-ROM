.class LaM/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field a:LaM/i;


# direct methods
.method constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, LaM/bb;->a:LaM/i;

    .line 544
    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 548
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    new-instance v1, LaM/bc;

    iget-object v2, p0, LaM/bb;->a:LaM/i;

    invoke-direct {v1, v2}, LaM/bc;-><init>(LaM/i;)V

    invoke-virtual {v0, p1, v1}, Lr/af;->a(Ljava/lang/String;Lr/ae;)Lr/ac;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lr/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 551
    const-wide/high16 v1, 0x3fe0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 553
    invoke-virtual {v0}, Lr/ac;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 554
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 555
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 564
    :goto_44
    return-object v0

    :cond_45
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_44
.end method
