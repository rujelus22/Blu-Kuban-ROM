.class public Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
.super Landroid/widget/Gallery;
.source "StockClockGallery.java"


# instance fields
.field private changeTabs:Z

.field child:Landroid/view/View;

.field needPositioning:Z

.field position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->child:Landroid/view/View;

    .line 20
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    .line 21
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->needPositioning:Z

    .line 22
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 139
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSoundEffectsEnabled(Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->child:Landroid/view/View;

    .line 20
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    .line 21
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->needPositioning:Z

    .line 22
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 164
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSoundEffectsEnabled(Z)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->child:Landroid/view/View;

    .line 20
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    .line 21
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->needPositioning:Z

    .line 22
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 170
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSoundEffectsEnabled(Z)V

    .line 174
    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/Gallery;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public fixSelectedItemMetadata()V
    .registers 15

    .prologue
    .line 247
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 249
    .local v12, selectedView:Landroid/view/View;
    if-eqz v12, :cond_c5

    .line 251
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setSelected(Z)V

    .line 252
    const v13, 0x7f0b00e7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 253
    .local v7, detailName:Landroid/widget/TextView;
    const v13, 0x7f0b00fb

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 254
    .local v5, detailHigh:Landroid/widget/TextView;
    const v13, 0x7f0b00fc

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 255
    .local v6, detailLow:Landroid/widget/TextView;
    const v13, 0x7f0b0118

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 256
    .local v11, detailVolume:Landroid/widget/TextView;
    const v13, 0x7f0b00fd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 257
    .local v10, detailPrevClose:Landroid/widget/TextView;
    const v13, 0x7f0b00fe

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 258
    .local v8, detailOpen:Landroid/widget/TextView;
    const v13, 0x7f0b0119

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 259
    .local v2, detailCap:Landroid/widget/TextView;
    const v13, 0x7f0b011a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 260
    .local v3, detailEPS:Landroid/widget/TextView;
    const v13, 0x7f0b011b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 261
    .local v9, detailPER:Landroid/widget/TextView;
    const v13, 0x7f0b00ff

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, detail52wkHigh:Landroid/widget/TextView;
    const v13, 0x7f0b0100

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 263
    .local v1, detail52wkLow:Landroid/widget/TextView;
    const v13, 0x7f0b010a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 264
    .local v4, detailExchage:Landroid/widget/TextView;
    sget-boolean v13, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->onoff:Z

    if-eqz v13, :cond_c6

    .line 266
    if-eqz v7, :cond_83

    .line 267
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 268
    :cond_83
    if-eqz v5, :cond_89

    .line 269
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 270
    :cond_89
    if-eqz v6, :cond_8f

    .line 271
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 272
    :cond_8f
    if-eqz v11, :cond_95

    .line 273
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 274
    :cond_95
    if-eqz v10, :cond_9b

    .line 275
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 276
    :cond_9b
    if-eqz v8, :cond_a1

    .line 277
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 278
    :cond_a1
    if-eqz v2, :cond_a7

    .line 279
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 280
    :cond_a7
    if-eqz v3, :cond_ad

    .line 281
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 282
    :cond_ad
    if-eqz v9, :cond_b3

    .line 283
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 284
    :cond_b3
    if-eqz v0, :cond_b9

    .line 285
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    :cond_b9
    if-eqz v1, :cond_bf

    .line 287
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 288
    :cond_bf
    if-eqz v4, :cond_c5

    .line 289
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 329
    .end local v0           #detail52wkHigh:Landroid/widget/TextView;
    .end local v1           #detail52wkLow:Landroid/widget/TextView;
    .end local v2           #detailCap:Landroid/widget/TextView;
    .end local v3           #detailEPS:Landroid/widget/TextView;
    .end local v4           #detailExchage:Landroid/widget/TextView;
    .end local v5           #detailHigh:Landroid/widget/TextView;
    .end local v6           #detailLow:Landroid/widget/TextView;
    .end local v7           #detailName:Landroid/widget/TextView;
    .end local v8           #detailOpen:Landroid/widget/TextView;
    .end local v9           #detailPER:Landroid/widget/TextView;
    .end local v10           #detailPrevClose:Landroid/widget/TextView;
    .end local v11           #detailVolume:Landroid/widget/TextView;
    :cond_c5
    :goto_c5
    return-void

    .line 293
    .restart local v0       #detail52wkHigh:Landroid/widget/TextView;
    .restart local v1       #detail52wkLow:Landroid/widget/TextView;
    .restart local v2       #detailCap:Landroid/widget/TextView;
    .restart local v3       #detailEPS:Landroid/widget/TextView;
    .restart local v4       #detailExchage:Landroid/widget/TextView;
    .restart local v5       #detailHigh:Landroid/widget/TextView;
    .restart local v6       #detailLow:Landroid/widget/TextView;
    .restart local v7       #detailName:Landroid/widget/TextView;
    .restart local v8       #detailOpen:Landroid/widget/TextView;
    .restart local v9       #detailPER:Landroid/widget/TextView;
    .restart local v10       #detailPrevClose:Landroid/widget/TextView;
    .restart local v11       #detailVolume:Landroid/widget/TextView;
    :cond_c6
    sget-object v13, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v13, :cond_11b

    sget-object v13, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_11b

    .line 295
    if-eqz v7, :cond_d8

    .line 296
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 303
    :cond_d8
    :goto_d8
    if-eqz v5, :cond_de

    .line 304
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 305
    :cond_de
    if-eqz v6, :cond_e4

    .line 306
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 307
    :cond_e4
    if-eqz v11, :cond_ea

    .line 308
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 309
    :cond_ea
    if-eqz v10, :cond_f0

    .line 310
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 311
    :cond_f0
    if-eqz v8, :cond_f6

    .line 312
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 313
    :cond_f6
    if-eqz v2, :cond_fc

    .line 314
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 315
    :cond_fc
    if-eqz v3, :cond_102

    .line 316
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 317
    :cond_102
    if-eqz v9, :cond_108

    .line 318
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 319
    :cond_108
    if-eqz v0, :cond_10e

    .line 320
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 321
    :cond_10e
    if-eqz v1, :cond_114

    .line 322
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 323
    :cond_114
    if-eqz v4, :cond_c5

    .line 324
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_c5

    .line 300
    :cond_11b
    if-eqz v7, :cond_d8

    .line 301
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_d8
.end method

.method public forceSetLayout()V
    .registers 8

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 225
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_1e

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Landroid/widget/Gallery;->onLayout(ZIIII)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 230
    :cond_1e
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 219
    const/high16 v0, 0x3f80

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    .line 199
    const/16 v0, 0x15

    .line 207
    .local v0, keyCode:I
    :goto_11
    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 208
    const/4 v1, 0x1

    return v1

    .line 203
    .end local v0           #keyCode:I
    :cond_17
    const/16 v0, 0x16

    .restart local v0       #keyCode:I
    goto :goto_11
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Gallery;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 152
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    if-eqz v0, :cond_8

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 73
    :goto_7
    return v1

    .line 55
    :cond_8
    const/16 v0, 0x16

    if-eq p1, v0, :cond_18

    const/16 v0, 0x15

    if-eq p1, v0, :cond_18

    const/16 v0, 0x13

    if-eq p1, v0, :cond_18

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2f

    .line 57
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    goto :goto_7

    .line 63
    :cond_2c
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    goto :goto_7

    .line 69
    :cond_2f
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    goto :goto_7
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 77
    const/16 v3, 0x17

    if-eq p1, v3, :cond_9

    const/16 v3, 0x42

    if-ne p1, v3, :cond_1c

    .line 79
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_18

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 86
    .end local v1           #v:Landroid/view/View;
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 97
    .end local v0           #selectedView:Landroid/view/View;
    :cond_1b
    :goto_1b
    return v2

    .line 90
    :cond_1c
    const/16 v3, 0x16

    if-eq p1, v3, :cond_1b

    const/16 v3, 0x15

    if-eq p1, v3, :cond_1b

    const/16 v3, 0x13

    if-eq p1, v3, :cond_1b

    const/16 v3, 0x14

    if-eq p1, v3, :cond_1b

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1b
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 243
    :goto_8
    return-void

    .line 240
    :cond_9
    invoke-super/range {p0 .. p5}, Landroid/widget/Gallery;->onLayout(ZIIII)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    goto :goto_8
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->needPositioning:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/16 v1, -0x14

    if-le v0, v1, :cond_37

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_37

    .line 123
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_3c

    .line 125
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(IZ)V

    .line 132
    :cond_37
    :goto_37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 127
    :cond_3c
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_37

    .line 129
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(IZ)V

    goto :goto_37
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 178
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 179
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 180
    .local v2, isResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, action:I
    if-nez v0, :cond_22

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_13
    if-ltz v1, :cond_1f

    .line 185
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 183
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 187
    :cond_1f
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setPressed(Z)V

    .line 189
    .end local v1           #i:I
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 190
    return v2
.end method

.method public setChangeTabStatus(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 26
    return-void
.end method

.method public setPosition(ILandroid/view/View;)V
    .registers 4
    .parameter "position"
    .parameter "child"

    .prologue
    .line 30
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    .line 31
    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->child:Landroid/view/View;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->needPositioning:Z

    .line 33
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->changeTabs:Z

    .line 44
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 45
    return-void
.end method

.method public setSelection(IZ)V
    .registers 4
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_1b

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    .line 116
    :goto_17
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 117
    return-void

    .line 113
    :cond_1b
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->position:I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->needPositioning:Z

    goto :goto_17
.end method
