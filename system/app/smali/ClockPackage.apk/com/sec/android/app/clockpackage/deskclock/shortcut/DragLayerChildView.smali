.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;
.super Landroid/widget/TextView;
.source "DragLayerChildView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIsDelete:Z

.field private mMode:I

.field private mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

.field private mWidthDrwable:I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;)V
    .registers 8
    .parameter "context"
    .parameter "shortCutHelper"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mMode:I

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mIsDelete:Z

    .line 254
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->runnable:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setClickable(Z)V

    .line 67
    invoke-virtual {p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->init()V

    .line 74
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setSingleLine(Z)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity(I)V

    .line 81
    const/high16 v0, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setShadowLayer(FFFI)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setFocusable(Z)V

    .line 83
    return-void
.end method

.method private elseDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "className"
    .parameter "drawable"

    .prologue
    .line 262
    if-eqz p1, :cond_1e

    .line 263
    const-string v0, "com.sec.android.app.clockpackage.alarm.Alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 267
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    .line 268
    const-string v0, "mainmenu alarm"

    const-string v1, "main_menu_alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1e
    return-object p2
.end method

.method private elseLableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "className"
    .parameter "text"

    .prologue
    .line 276
    move-object v0, p1

    .line 277
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 278
    const-string v1, "com.sec.android.app.clockpackage.alarm.Alarm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_16
    :goto_16
    return-object v0

    .line 282
    :cond_17
    move-object v0, p2

    goto :goto_16
.end method

.method private init()V
    .registers 4

    .prologue
    .line 87
    const v0, 0xfffffff

    .line 88
    .local v0, textColor:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setTextColor(I)V

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    .line 93
    return-void
.end method


# virtual methods
.method public getViewId()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 217
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->showShortcutDaialog(Landroid/view/View;)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setClickable(Z)V

    .line 228
    :cond_e
    :goto_e
    return-void

    .line 223
    :cond_f
    const-string v0, "shortcut Execute"

    const-string v1, "shortcut Execute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mIsDelete:Z

    if-nez v0, :cond_e

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->shortCutExcute(I)V

    goto :goto_e
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 54
    if-eqz p1, :cond_c

    .line 55
    const v0, 0x7f02014a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setBackgroundResource(I)V

    .line 60
    :goto_b
    return-void

    .line 58
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setBackgroundResource(I)V

    goto :goto_b
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity()V

    .line 144
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mIsDelete:Z

    if-nez v0, :cond_1b

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setColor(I)V

    .line 239
    :goto_18
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->invalidate()V

    .line 242
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 237
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setColor(I)V

    goto :goto_18
.end method

.method protected setColor(I)V
    .registers 8
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    .line 195
    :goto_6
    return-void

    .line 187
    :cond_7
    const/4 v0, -0x1

    .line 189
    .local v0, textColor:I
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setTextColor(I)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v1, v4, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->invalidate()V

    goto :goto_6
.end method

.method protected setDeletemode(Z)V
    .registers 2
    .parameter "isDelete"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mIsDelete:Z

    .line 248
    return-void
.end method

.method public setGravity()V
    .registers 5

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 148
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 150
    .local v1, textSize:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_33

    .line 151
    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setFadingEdgeLength(I)V

    .line 152
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 153
    const/16 v2, 0x53

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity(I)V

    .line 158
    :goto_32
    return-void

    .line 155
    :cond_33
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 156
    const/16 v2, 0x51

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity(I)V

    goto :goto_32
.end method

.method public setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .parameter "text"
    .parameter "top"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 100
    const/4 v1, -0x1

    .line 101
    .local v1, textColor:I
    move-object v0, p1

    .line 103
    .local v0, lableName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->elseLableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->elseDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 108
    :cond_14
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {p0, v4, p2, v4, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setTextColor(I)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    return-void
.end method

.method public setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 10
    .parameter "text"
    .parameter "top"
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    move-object v0, p1

    .line 164
    .local v0, lableName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->elseLableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mClassName:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->elseDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 169
    :cond_13
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 172
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    const/4 v1, -0x1

    .line 175
    .local v1, textColor:I
    invoke-virtual {p0, v4, p2, v4, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setTextColor(I)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity()V

    .line 180
    return-void
.end method

.method public setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 11
    .parameter "text"
    .parameter "top"
    .parameter "className"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 118
    const/4 v2, -0x1

    .line 119
    .local v2, textColor:I
    move-object v0, p1

    .line 121
    .local v0, lableName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, nu:I
    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->elseLableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->elseDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 126
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    iget v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mWidthDrwable:I

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    invoke-virtual {p0, v5, p2, v5, v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setTextColor(I)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity()V

    .line 137
    return-void
.end method

.method public setViewId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 212
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->mId:I

    .line 213
    return-void
.end method
