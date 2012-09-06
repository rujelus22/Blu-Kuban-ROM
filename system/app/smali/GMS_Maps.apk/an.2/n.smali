.class public LaN/n;
.super LaN/j;
.source "SourceFile"


# instance fields
.field private final d:I


# direct methods
.method public constructor <init>(LaM/i;Lcom/google/googlenav/E;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZI)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-direct/range {p0 .. p9}, LaN/j;-><init>(LaM/i;Lcom/google/googlenav/E;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V

    .line 844
    iput p10, p0, LaN/n;->d:I

    .line 845
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ay;)I
    .registers 5
    .parameter

    .prologue
    .line 849
    instance-of v0, p1, LaN/n;

    if-eqz v0, :cond_19

    move-object v0, p1

    .line 850
    check-cast v0, LaN/n;

    .line 851
    iget v1, p0, LaN/n;->d:I

    iget v2, v0, LaN/n;->d:I

    if-ne v1, v2, :cond_12

    .line 852
    invoke-super {p0, p1}, LaN/j;->a(Lcom/google/android/maps/driveabout/vector/ay;)I

    move-result v0

    .line 856
    :goto_11
    return v0

    .line 854
    :cond_12
    iget v1, p0, LaN/n;->d:I

    iget v0, v0, LaN/n;->d:I

    sub-int v0, v1, v0

    goto :goto_11

    .line 856
    :cond_19
    invoke-super {p0, p1}, LaN/j;->a(Lcom/google/android/maps/driveabout/vector/ay;)I

    move-result v0

    goto :goto_11
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 835
    check-cast p1, Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {p0, p1}, LaN/n;->a(Lcom/google/android/maps/driveabout/vector/ay;)I

    move-result v0

    return v0
.end method
