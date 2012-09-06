.class public Lcom/google/android/apps/plus/views/Thermometer;
.super Landroid/view/View;
.source "Thermometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/Thermometer$Orientation;
    }
.end annotation


# static fields
.field private static sBounds:Landroid/graphics/Rect;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mFillLevel:D

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/Thermometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/Thermometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer$Orientation;->HORIZONTAL:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    .line 57
    if-nez p2, :cond_c

    .line 87
    :cond_b
    :goto_b
    return-void

    .line 63
    :cond_c
    sget-object v2, Lcom/google/android/apps/plus/R$styleable;->Thermometer:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, attrsArray:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_b

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 70
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_20
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 73
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_2c
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 78
    .local v1, mode:I
    if-nez v1, :cond_3b

    .line 79
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer$Orientation;->HORIZONTAL:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    .line 86
    :goto_37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_b

    .line 80
    :cond_3b
    if-ne v1, v4, :cond_42

    .line 81
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer$Orientation;->VERTICAL:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    goto :goto_37

    .line 83
    :cond_42
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer$Orientation;->HORIZONTAL:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    goto :goto_37
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_d

    .line 237
    :goto_c
    return-void

    .line 215
    :cond_d
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/Thermometer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/Thermometer;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 217
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2c

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 220
    :cond_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3c

    .line 221
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 222
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    :cond_3c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 225
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    sget-object v3, Lcom/google/android/apps/plus/views/Thermometer$Orientation;->HORIZONTAL:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    if-ne v2, v3, :cond_6d

    .line 226
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/apps/plus/views/Thermometer;->mFillLevel:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 227
    .local v1, width:I
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 232
    .end local v1           #width:I
    :cond_59
    :goto_59
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_69

    .line 234
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    :cond_69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 228
    :cond_6d
    iget-object v2, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    sget-object v3, Lcom/google/android/apps/plus/views/Thermometer$Orientation;->VERTICAL:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    if-ne v2, v3, :cond_59

    .line 229
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/apps/plus/views/Thermometer;->mFillLevel:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 230
    .local v0, height:I
    sget-object v2, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/apps/plus/views/Thermometer;->sBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_59
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 147
    const/4 v5, 0x0

    .line 148
    .local v5, width:I
    const/4 v1, 0x0

    .line 151
    .local v1, height:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_18

    .line 152
    iget-object v6, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 153
    .local v4, w:I
    if-le v4, v5, :cond_f

    .line 154
    move v5, v4

    .line 156
    :cond_f
    iget-object v6, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 157
    .local v0, h:I
    if-le v0, v1, :cond_18

    .line 158
    move v1, v0

    .line 161
    .end local v0           #h:I
    .end local v4           #w:I
    :cond_18
    iget-object v6, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2e

    .line 162
    iget-object v6, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 163
    .restart local v4       #w:I
    if-le v4, v5, :cond_25

    .line 164
    move v5, v4

    .line 166
    :cond_25
    iget-object v6, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 167
    .restart local v0       #h:I
    if-le v0, v1, :cond_2e

    .line 168
    move v1, v0

    .line 171
    .end local v0           #h:I
    .end local v4           #w:I
    :cond_2e
    if-lez v5, :cond_3e

    if-lez v1, :cond_3e

    .line 172
    invoke-static {v5, p1}, Lcom/google/android/apps/plus/views/Thermometer;->resolveSize(II)I

    move-result v3

    .line 173
    .local v3, resolvedWidth:I
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/views/Thermometer;->resolveSize(II)I

    move-result v2

    .line 174
    .local v2, resolvedHeight:I
    invoke-virtual {p0, v3, v2}, Lcom/google/android/apps/plus/views/Thermometer;->setMeasuredDimension(II)V

    .line 178
    .end local v2           #resolvedHeight:I
    .end local v3           #resolvedWidth:I
    :goto_3d
    return-void

    .line 176
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_3d
.end method

.method public setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "background"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/plus/views/Thermometer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/Thermometer;->invalidate()V

    .line 97
    return-void
.end method

.method public setFillLevel(D)V
    .registers 5
    .parameter "level"

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_8

    .line 187
    const-wide/16 p1, 0x0

    .line 189
    :cond_8
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_10

    .line 190
    const-wide/high16 p1, 0x3ff0

    .line 192
    :cond_10
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/Thermometer;->mFillLevel:D

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/Thermometer;->invalidate()V

    .line 194
    return-void
.end method

.method public setForegroundImage(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "foreground"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/views/Thermometer;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/Thermometer;->invalidate()V

    .line 115
    return-void
.end method

.method public setOrientation(Lcom/google/android/apps/plus/views/Thermometer$Orientation;)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/plus/views/Thermometer;->mOrientation:Lcom/google/android/apps/plus/views/Thermometer$Orientation;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/Thermometer;->invalidate()V

    .line 132
    return-void
.end method
