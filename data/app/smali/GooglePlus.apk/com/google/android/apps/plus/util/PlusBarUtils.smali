.class public Lcom/google/android/apps/plus/util/PlusBarUtils;
.super Ljava/lang/Object;
.source "PlusBarUtils.java"


# static fields
.field public static sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field public static sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sInitialized:Z

.field public static sNotPlusOnedTextPaint:Landroid/text/TextPaint;

.field public static sPlusBarXPadding:I

.field public static sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field public static sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field public static sPlusOnedTextPaint:Landroid/text/TextPaint;


# direct methods
.method public static init(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const v8, 0x7f0a010d

    const/4 v7, 0x1

    const v6, 0x7f0d01b0

    .line 30
    sget-boolean v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sInitialized:Z

    if-nez v1, :cond_d2

    .line 31
    sput-boolean v7, Lcom/google/android/apps/plus/util/PlusBarUtils;->sInitialized:Z

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 36
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 38
    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 39
    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 42
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    .line 43
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 44
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 45
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 48
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0d01b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0d01b3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f0a010b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 53
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 56
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    .line 57
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 58
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 59
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 61
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 63
    sget-object v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 66
    const v1, 0x7f0d01c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusBarXPadding:I

    .line 68
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_d2
    return-void
.end method
