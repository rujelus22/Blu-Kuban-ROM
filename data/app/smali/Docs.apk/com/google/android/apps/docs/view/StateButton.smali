.class public Lcom/google/android/apps/docs/view/StateButton;
.super Landroid/widget/Button;
.source "StateButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/view/StateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/StateButton;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/StateButton;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/StateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, LcP;->grey_disabled_quick_action_icons:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v1, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/StateButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 59
    array-length v0, v3

    new-array v4, v0, [Landroid/graphics/drawable/Drawable;

    move v0, v1

    .line 61
    :goto_18
    array-length v5, v3

    if-ge v0, v5, :cond_29

    .line 62
    aget-object v5, v3, v0

    .line 63
    if-nez v5, :cond_22

    .line 61
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 66
    :cond_22
    invoke-virtual {p0, v5, v2}, Lcom/google/android/apps/docs/view/StateButton;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_1f

    .line 69
    :cond_29
    aget-object v0, v4, v1

    const/4 v1, 0x1

    aget-object v1, v4, v1

    const/4 v2, 0x2

    aget-object v2, v4, v2

    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/view/StateButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    .line 80
    if-eqz v3, :cond_20

    move-object v0, p1

    .line 81
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 82
    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    .line 89
    :goto_14
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_28

    .line 90
    const-string v0, "StateButton"

    const-string v1, "Could not find source icon to be grey-ified. Giving up."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_1f
    return-object p1

    .line 85
    :cond_20
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object v1, p1

    move-object v2, v0

    .line 86
    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 94
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 97
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, -0x101009e

    aput v6, v4, v5

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/StateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2}, LabD;->a(Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    if-nez v3, :cond_4f

    .line 102
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4f
    move-object p1, v2

    .line 105
    goto :goto_1f
.end method
