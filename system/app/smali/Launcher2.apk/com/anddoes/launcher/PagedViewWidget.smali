.class public Lcom/anddoes/launcher/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static a:Z


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/ImageView;

.field private final e:Landroid/graphics/RectF;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/animation/ObjectAnimator;

.field private k:F

.field private l:I

.field private m:I

.field private n:Lcom/anddoes/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anddoes/launcher/PagedViewWidget;->a:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b0003

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->b:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->e:Landroid/graphics/RectF;

    .line 55
    const/16 v0, 0xff

    iput v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->g:I

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->k:F

    .line 76
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/anddoes/launcher/Launcher;

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 80
    if-lez v1, :cond_49

    .line 84
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    .line 83
    iput v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->k:F

    .line 86
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 85
    iput v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->l:I

    .line 88
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 87
    iput v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->m:I

    .line 90
    :cond_49
    const v1, 0x7f060256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->f:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedViewWidget;->setWillNotDraw(Z)V

    .line 93
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedViewWidget;->setClipToPadding(Z)V

    .line 94
    return-void
.end method

.method public static a(Z)V
    .registers 1
    .parameter

    .prologue
    .line 97
    sput-boolean p0, Lcom/anddoes/launcher/PagedViewWidget;->a:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final a(Landroid/appwidget/AppWidgetProviderInfo;[I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->d:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->Q:Z

    if-eqz v0, :cond_79

    move v1, v2

    .line 132
    :goto_1f
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    if-eqz v1, :cond_2f

    .line 134
    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_2f
    iget-object v4, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 137
    iget-object v4, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v5, "drawer_icon_text_color"

    invoke-virtual {v4, v0, v5}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 138
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    if-eqz v0, :cond_78

    .line 140
    if-eqz v1, :cond_68

    .line 141
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->f:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p2, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget v2, p2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_68
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 144
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v2, "drawer_widget_size_color"

    invoke-virtual {v1, v0, v2}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 146
    :cond_78
    return-void

    :cond_79
    move v1, v3

    goto :goto_1f
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 151
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 152
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->d:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->Q:Z

    if-eqz v0, :cond_75

    move v1, v2

    .line 159
    :goto_21
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    if-eqz v1, :cond_2f

    .line 161
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_2f
    iget-object v4, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 164
    iget-object v4, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v5, "drawer_icon_text_color"

    invoke-virtual {v4, v0, v5}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 165
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    if-eqz v0, :cond_74

    .line 167
    if-eqz v1, :cond_64

    .line 168
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->f:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_64
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 171
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v2, "drawer_widget_size_color"

    invoke-virtual {v1, v0, v2}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 173
    :cond_74
    return-void

    :cond_75
    move v1, v3

    goto :goto_21
.end method

.method final a(Lcom/anddoes/launcher/cj;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewWidgetImageView;

    .line 185
    if-eqz p1, :cond_19

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anddoes/launcher/PagedViewWidgetImageView;->a:Z

    .line 187
    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/PagedViewWidgetImageView;->setAlpha(F)V

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/PagedViewWidgetImageView;->a:Z

    .line 191
    :cond_19
    return-void
.end method

.method public final a()[I
    .registers 6

    .prologue
    .line 176
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 177
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 179
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int v0, v3, v0

    aput v0, v1, v2

    .line 180
    return-object v1
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->i:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 104
    sget-boolean v0, Lcom/anddoes/launcher/PagedViewWidget;->a:Z

    if-eqz v0, :cond_2b

    .line 105
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    if-eqz v0, :cond_2b

    .line 108
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    check-cast v1, Lcom/anddoes/launcher/cj;

    .line 109
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/anddoes/launcher/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 110
    invoke-virtual {v1}, Lcom/anddoes/launcher/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_2b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 218
    iget v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->g:I

    if-lez v0, :cond_a

    .line 219
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->h:I

    if-lez v0, :cond_4f

    .line 225
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 228
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 230
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 231
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 232
    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewWidget;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anddoes/launcher/PagedViewWidget;->b:Landroid/graphics/Paint;

    .line 231
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    :cond_4f
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x437f

    .line 252
    invoke-static {p1}, Lcom/anddoes/launcher/do;->b(F)F

    move-result v1

    .line 254
    invoke-static {p1}, Lcom/anddoes/launcher/do;->a(F)F

    move-result v0

    .line 255
    mul-float v2, v1, v3

    float-to-int v2, v2

    .line 256
    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 257
    iget v3, p0, Lcom/anddoes/launcher/PagedViewWidget;->g:I

    if-ne v3, v2, :cond_17

    .line 258
    iget v3, p0, Lcom/anddoes/launcher/PagedViewWidget;->h:I

    if-eq v3, v0, :cond_25

    .line 259
    :cond_17
    iput v2, p0, Lcom/anddoes/launcher/PagedViewWidget;->g:I

    .line 260
    iput v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->h:I

    .line 261
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewWidget;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_20
    if-lt v0, v2, :cond_26

    .line 262
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 264
    :cond_25
    return-void

    .line 261
    :cond_26
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public setChecked(Z)V
    .registers 8
    .parameter

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->i:Z

    if-eq v0, p1, :cond_3a

    iput-boolean p1, p0, Lcom/anddoes/launcher/PagedViewWidget;->i:Z

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->i:Z

    if-eqz v0, :cond_3b

    iget v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->k:F

    iget v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->l:I

    :goto_e
    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewWidget;->j:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewWidget;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_17
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->j:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewWidget;->j:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewWidget;->invalidate()V

    .line 300
    :cond_3a
    return-void

    .line 299
    :cond_3b
    const/high16 v1, 0x3f80

    iget v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->m:I

    goto :goto_e
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewWidget;->i:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewWidget;->setChecked(Z)V

    .line 310
    return-void

    .line 309
    :cond_9
    const/4 v0, 0x1

    goto :goto_5
.end method
