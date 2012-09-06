.class public LuL;
.super LuM;
.source "SolidColorBitmapDrawable.java"


# instance fields
.field private final a:F

.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FI)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, LuM;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 28
    iput p3, p0, LuL;->a:F

    .line 29
    iput p4, p0, LuL;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, LXs;->a(Landroid/graphics/Bitmap;)LXs;

    move-result-object v0

    iget v1, p0, LuL;->a:F

    iget v2, p0, LuL;->a:I

    invoke-virtual {v0, v1, v2}, LXs;->a(FI)LXs;

    move-result-object v0

    invoke-virtual {v0}, LXs;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
