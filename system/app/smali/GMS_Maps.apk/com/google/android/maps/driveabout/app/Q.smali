.class public Lcom/google/android/maps/driveabout/app/q;
.super Lcom/google/android/maps/driveabout/app/o;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[F

.field private static final d:[F


# instance fields
.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x5

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->a:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->b:[I

    .line 65
    new-array v0, v1, [F

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->c:[F

    .line 74
    new-array v0, v1, [F

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->d:[F

    return-void

    .line 47
    :array_1e
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0x88t 0x88t 0x88t 0x40t
        0x88t 0x88t 0x88t 0x40t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x0t
    .end array-data

    .line 56
    :array_2c
    .array-data 0x4
        0x88t 0x88t 0x88t 0x40t
        0x88t 0x88t 0x88t 0x40t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x0t
        0x88t 0x88t 0x88t 0x40t
    .end array-data

    .line 65
    :array_3a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 74
    :array_48
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/o;-><init>()V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/q;->f:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/q;->g:Landroid/graphics/drawable/NinePatchDrawable;

    .line 91
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x4100

    const/high16 v6, 0x3f40

    const/high16 v5, 0x3e80

    .line 95
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/q;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/q;->g:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/q;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 99
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/q;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 111
    iget v0, p0, Lcom/google/android/maps/driveabout/app/q;->e:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_6c

    .line 112
    sget-object v1, Lcom/google/android/maps/driveabout/app/q;->b:[I

    .line 113
    sget-object v0, Lcom/google/android/maps/driveabout/app/q;->d:[F

    .line 114
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/q;->e:F

    add-float/2addr v4, v6

    aput v4, v0, v3

    .line 115
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/q;->e:F

    add-float/2addr v4, v6

    aput v4, v0, v3

    .line 122
    :goto_4f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/q;->f:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/SweepGradient;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-direct {v4, v5, v6, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    return-void

    .line 117
    :cond_6c
    sget-object v1, Lcom/google/android/maps/driveabout/app/q;->a:[I

    .line 118
    sget-object v0, Lcom/google/android/maps/driveabout/app/q;->c:[F

    .line 119
    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/app/q;->e:F

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 120
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/maps/driveabout/app/q;->e:F

    sub-float/2addr v4, v5

    aput v4, v0, v3

    goto :goto_4f
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 132
    const/4 v0, -0x3

    return v0
.end method

.method public onLevelChange(I)Z
    .registers 4
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/app/o;->onLevelChange(I)Z

    .line 138
    int-to-float v0, p1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/q;->e:F

    .line 139
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/q;->invalidateSelf()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter

    .prologue
    .line 144
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    return-void
.end method
