.class public LFh;
.super Ljava/lang/Object;
.source "IconUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 40
    new-instance v2, LFi;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, LFi;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v1, LuK;

    invoke-direct {v1, v2, v3}, LuK;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v2, Luo;->tool_bar_focus_outline:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, LuK;->c(Landroid/graphics/drawable/Drawable;)LuK;

    move-result-object v1

    invoke-virtual {v1, v0}, LuK;->b(Landroid/graphics/drawable/Drawable;)LuK;

    move-result-object v1

    .line 64
    if-eqz p4, :cond_49

    .line 65
    invoke-virtual {v1, v0}, LuK;->a(Landroid/graphics/drawable/Drawable;)LuK;

    .line 67
    :cond_49
    invoke-virtual {v1}, LuK;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
