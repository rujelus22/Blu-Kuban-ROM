.class public final Lcom/anddoes/launcher/ba;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private final b:Landroid/app/WallpaperManager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/ba;->a:[I

    .line 45
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ba;->b:Landroid/app/WallpaperManager;

    .line 46
    check-cast p1, Lcom/anddoes/launcher/Launcher;

    iput-object p1, p0, Lcom/anddoes/launcher/ba;->g:Lcom/anddoes/launcher/Launcher;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .prologue
    .line 174
    iget-object v0, p0, Lcom/anddoes/launcher/ba;->g:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aR:Z

    if-eqz v0, :cond_30

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v3

    .line 178
    const/4 v0, 0x0

    :goto_17
    if-lt v0, v3, :cond_31

    .line 186
    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->removeAllViews()V

    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_43

    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 194
    :cond_30
    return-void

    .line 179
    :cond_31
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 180
    instance-of v5, v4, Lcom/anddoes/launcher/gl;

    if-eqz v5, :cond_3f

    .line 181
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 183
    :cond_3f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 187
    :cond_43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 188
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->addView(Landroid/view/View;)V

    goto :goto_20

    .line 190
    :cond_4d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 191
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->addView(Landroid/view/View;)V

    goto :goto_2a
.end method

.method public final a(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/anddoes/launcher/ba;->c:I

    .line 55
    iput p2, p0, Lcom/anddoes/launcher/ba;->d:I

    .line 56
    iput p3, p0, Lcom/anddoes/launcher/ba;->e:I

    .line 57
    iput p4, p0, Lcom/anddoes/launcher/ba;->f:I

    .line 58
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 91
    iget v1, p0, Lcom/anddoes/launcher/ba;->c:I

    .line 92
    iget v2, p0, Lcom/anddoes/launcher/ba;->d:I

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 95
    iget v3, p0, Lcom/anddoes/launcher/ba;->e:I

    iget v4, p0, Lcom/anddoes/launcher/ba;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a(IIII)V

    .line 96
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->width:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 97
    iget v0, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->height:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 99
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 100
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/CellLayout$LayoutParams;)V
    .registers 6
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/anddoes/launcher/ba;->c:I

    iget v1, p0, Lcom/anddoes/launcher/ba;->d:I

    iget v2, p0, Lcom/anddoes/launcher/ba;->e:I

    iget v3, p0, Lcom/anddoes/launcher/ba;->f:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a(IIII)V

    .line 88
    return-void
.end method

.method public final cancelLongPress()V
    .registers 4

    .prologue
    .line 145
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 148
    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v1

    .line 149
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_b

    .line 153
    return-void

    .line 150
    :cond_b
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected final onLayout(ZIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v8

    .line 105
    const/4 v0, 0x0

    move v7, v0

    :goto_6
    if-lt v7, v8, :cond_9

    .line 126
    return-void

    .line 106
    :cond_9
    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_54

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 110
    iget v3, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->f:I

    .line 111
    iget v5, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->g:I

    .line 112
    iget v0, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v3

    iget v2, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v5, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 114
    iget-boolean v0, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->h:Z

    if-eqz v0, :cond_54

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->h:Z

    .line 117
    iget-object v6, p0, Lcom/anddoes/launcher/ba;->a:[I

    .line 118
    invoke-virtual {p0, v6}, Lcom/anddoes/launcher/ba;->getLocationOnScreen([I)V

    .line 119
    iget-object v0, p0, Lcom/anddoes/launcher/ba;->b:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 120
    const-string v2, "android.home.drop"

    .line 121
    const/4 v9, 0x0

    aget v9, v6, v9

    add-int/2addr v3, v9

    iget v9, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    .line 122
    const/4 v9, 0x1

    aget v6, v6, v9

    add-int/2addr v5, v6

    iget v4, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 105
    :cond_54
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6
.end method

.method protected final onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v1

    .line 77
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_13

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/ba;->setMeasuredDimension(II)V

    .line 84
    return-void

    .line 78
    :cond_13
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 79
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/ba;->a(Landroid/view/View;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 136
    if-eqz p1, :cond_10

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 141
    :cond_10
    return-void
.end method

.method protected final setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v1

    .line 158
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 166
    return-void

    .line 159
    :cond_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 160
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz p1, :cond_1b

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 158
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected final setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 171
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method
