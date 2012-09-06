.class public Lcom/google/googlenav/ui/view/android/rideabout/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 58
    float-to-int v0, v0

    float-to-int v1, p1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p3, p1, p2}, Lcom/google/googlenav/ui/p;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 42
    :goto_14
    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/p;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 43
    if-eqz v0, :cond_3f

    .line 44
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 47
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v3, Lcom/google/googlenav/ui/view/android/rideabout/a;

    invoke-direct {v3, v2}, Lcom/google/googlenav/ui/view/android/rideabout/a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    .line 52
    :goto_39
    return-object v0

    .line 41
    :cond_3a
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_14

    .line 52
    :cond_3f
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    const-string v1, ""

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0f00dc

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0f00e3

    invoke-direct {v1, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p0, p2, p3, p5}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;JLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    .line 26
    if-eqz p4, :cond_29

    .line 27
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f0f00dc

    invoke-direct {v3, p0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Lcom/google/googlenav/ui/view/android/rideabout/n;)V

    .line 30
    :cond_29
    return-object v0
.end method
