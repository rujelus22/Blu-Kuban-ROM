.class public Lcom/google/googlenav/ui/view/android/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:[Lcom/google/googlenav/ui/view/android/bj;

.field private f:Ljava/util/List;

.field private g:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/bj;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->f:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bf;->b:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bf;->c:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bf;->d:I

    .line 47
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bf;->e:[Lcom/google/googlenav/ui/view/android/bj;

    .line 48
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->g:[I

    .line 49
    iget v1, p0, Lcom/google/googlenav/ui/view/android/bf;->b:I

    .line 50
    const/4 v0, 0x0

    :goto_47
    array-length v2, p2

    if-ge v0, v2, :cond_6c

    .line 51
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bf;->g:[I

    aput v1, v2, v0

    .line 52
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/bj;->a()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 53
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bf;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget v2, p0, Lcom/google/googlenav/ui/view/android/bf;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 50
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 56
    :cond_68
    iget v2, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    add-int/2addr v1, v2

    goto :goto_65

    .line 59
    :cond_6c
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    return v0
.end method

.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->g:[I

    aget v0, v0, p1

    return v0
.end method

.method public b()I
    .registers 4

    .prologue
    .line 76
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bf;->e:[Lcom/google/googlenav/ui/view/android/bj;

    array-length v1, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bf;->d:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bf;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bf;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bf;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bf;->c:I

    return v0
.end method
