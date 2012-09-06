.class public Lcom/google/android/maps/driveabout/app/dB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Window;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/dB;->a(Landroid/view/Window;Z)V

    .line 269
    return-void
.end method

.method public static a(Landroid/view/Window;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 282
    const v2, 0x7f0b00eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 284
    if-eqz p1, :cond_22

    .line 285
    const v2, 0x7f0b00ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 288
    if-eqz v2, :cond_44

    .line 289
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 295
    :cond_22
    :goto_22
    const v2, 0x7f0b00ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 296
    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 298
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 299
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 304
    if-eqz v0, :cond_40

    .line 305
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 306
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 309
    :cond_40
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 310
    return-void

    .line 291
    :cond_44
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_22
.end method
