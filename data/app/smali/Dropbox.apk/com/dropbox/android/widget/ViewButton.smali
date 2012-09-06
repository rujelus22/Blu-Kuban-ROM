.class public Lcom/dropbox/android/widget/ViewButton;
.super Landroid/widget/FrameLayout;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ViewButton;->a(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ViewButton;->a(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/dropbox/android/widget/ViewButton;->a(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/ViewButton;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/ViewButton;->setClickable(Z)V

    .line 39
    if-eqz p1, :cond_33

    .line 41
    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 42
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ViewButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 44
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 48
    :goto_24
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ViewButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ViewButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_33
    return-void

    .line 46
    :cond_34
    const v0, 0x1080062

    goto :goto_24
.end method
