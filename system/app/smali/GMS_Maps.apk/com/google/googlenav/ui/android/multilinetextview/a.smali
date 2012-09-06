.class Lcom/google/googlenav/ui/android/multilinetextview/a;
.super Lcom/google/googlenav/ui/android/multilinetextview/g;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/multilinetextview/g;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/a;->a:Landroid/widget/TextView;

    .line 24
    iput p3, p0, Lcom/google/googlenav/ui/android/multilinetextview/a;->b:I

    .line 25
    return-void
.end method

.method private a()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 39
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/a;->b:I

    .line 40
    iget-object v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    aget-object v2, v1, v3

    if-eqz v2, :cond_15

    .line 42
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 44
    :cond_15
    aget-object v2, v1, v4

    if-eqz v2, :cond_20

    .line 45
    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 47
    :cond_20
    return v0
.end method

.method private b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 35
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/multilinetextview/a;->a()I

    move-result v1

    div-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/android/multilinetextview/g;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
