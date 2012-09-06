.class public Lcom/anddoes/launcher/PagedViewIcon;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field a:Lcom/anddoes/launcher/dp;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/animation/ObjectAnimator;

.field private j:F

.field private k:I

.field private l:I

.field private m:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b0003

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->b:Landroid/graphics/Paint;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->f:I

    .line 49
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->j:F

    .line 68
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/anddoes/launcher/Launcher;

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->m:Lcom/anddoes/launcher/Launcher;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 73
    if-lez v1, :cond_41

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    iput v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->j:F

    .line 76
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 75
    iput v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->k:I

    .line 78
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 77
    iput v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->l:I

    .line 81
    :cond_41
    new-instance v0, Lcom/anddoes/launcher/dp;

    invoke-direct {v0, p1, p0}, Lcom/anddoes/launcher/dp;-><init>(Landroid/content/Context;Lcom/anddoes/launcher/PagedViewIcon;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->a:Lcom/anddoes/launcher/dp;

    .line 82
    return-void
.end method


# virtual methods
.method protected final a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Lcom/anddoes/launcher/y;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p1, Lcom/anddoes/launcher/y;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->e:Landroid/graphics/Bitmap;

    .line 96
    new-instance v0, Lcom/anddoes/launcher/cj;

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/anddoes/launcher/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->m:Lcom/anddoes/launcher/Launcher;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->m:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->P:Z

    if-eqz v1, :cond_1d

    .line 99
    const/4 v0, 0x0

    .line 101
    :cond_1d
    if-eqz v0, :cond_24

    .line 102
    iget-object v0, p1, Lcom/anddoes/launcher/y;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_24
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->m:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 106
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->m:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v1, "drawer_icon_text_color"

    invoke-virtual {v0, p0, v1}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->h:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->f:I

    if-lez v0, :cond_7

    .line 137
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    :cond_7
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_15

    .line 144
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->c:Landroid/graphics/Bitmap;

    .line 148
    :cond_15
    if-eqz v0, :cond_3d

    .line 149
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewIcon;->getScrollX()I

    move-result v1

    .line 150
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewIcon;->getCompoundPaddingLeft()I

    move-result v2

    .line 151
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewIcon;->getCompoundPaddingRight()I

    move-result v3

    .line 152
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewIcon;->getWidth()I

    move-result v4

    sub-int v3, v4, v3

    sub-int/2addr v3, v2

    .line 154
    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 155
    iget v2, p0, Lcom/anddoes/launcher/PagedViewIcon;->mPaddingTop:I

    int-to-float v2, v2

    .line 156
    iget-object v3, p0, Lcom/anddoes/launcher/PagedViewIcon;->b:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    :cond_3d
    return-void
.end method

.method public setAlpha(F)V
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x437f

    .line 116
    invoke-static {p1}, Lcom/anddoes/launcher/do;->b(F)F

    move-result v0

    .line 117
    invoke-static {p1}, Lcom/anddoes/launcher/do;->a(F)F

    move-result v1

    .line 118
    mul-float v2, v0, v3

    float-to-int v2, v2

    .line 119
    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 120
    iget v3, p0, Lcom/anddoes/launcher/PagedViewIcon;->f:I

    if-ne v3, v2, :cond_17

    iget v3, p0, Lcom/anddoes/launcher/PagedViewIcon;->g:I

    if-eq v3, v1, :cond_1e

    .line 121
    :cond_17
    iput v2, p0, Lcom/anddoes/launcher/PagedViewIcon;->f:I

    .line 122
    iput v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->g:I

    .line 123
    invoke-super {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 125
    :cond_1e
    return-void
.end method

.method public setChecked(Z)V
    .registers 8
    .parameter

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->h:Z

    if-eq v0, p1, :cond_3a

    iput-boolean p1, p0, Lcom/anddoes/launcher/PagedViewIcon;->h:Z

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->h:Z

    if-eqz v0, :cond_3b

    iget v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->j:F

    iget v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->k:I

    :goto_e
    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewIcon;->i:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewIcon;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_17
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewIcon;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->i:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewIcon;->i:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewIcon;->invalidate()V

    .line 198
    :cond_3a
    return-void

    .line 197
    :cond_3b
    const/high16 v1, 0x3f80

    iget v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->l:I

    goto :goto_e
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewIcon;->h:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewIcon;->setChecked(Z)V

    .line 203
    return-void

    .line 202
    :cond_9
    const/4 v0, 0x1

    goto :goto_5
.end method
