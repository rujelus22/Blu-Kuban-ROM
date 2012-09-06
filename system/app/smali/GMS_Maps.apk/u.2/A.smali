.class public Lu/a;
.super Lu/n;
.source "SourceFile"


# instance fields
.field private final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;[Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1}, Lu/n;-><init>(Landroid/view/animation/Interpolator;)V

    .line 32
    array-length v0, p2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_21

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 33
    iput-object p2, p0, Lu/a;->e:[Ljava/lang/Object;

    .line 34
    aget-object v0, p2, v2

    iput-object v0, p0, Lu/a;->a:Ljava/lang/Object;

    .line 35
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lu/a;->b:Ljava/lang/Object;

    .line 36
    aget-object v0, p2, v2

    iput-object v0, p0, Lu/a;->c:Ljava/lang/Object;

    .line 37
    iput-boolean v1, p0, Lu/a;->d:Z

    .line 38
    return-void

    :cond_21
    move v0, v2

    .line 32
    goto :goto_a
.end method


# virtual methods
.method protected a(J)V
    .registers 5
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lu/a;->c(J)F

    move-result v0

    .line 46
    iget-object v1, p0, Lu/a;->e:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 48
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 49
    iget-object v1, p0, Lu/a;->e:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50
    iget-object v1, p0, Lu/a;->e:[Ljava/lang/Object;

    aget-object v0, v1, v0

    iput-object v0, p0, Lu/a;->c:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lu/a;->a:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lu/a;->b:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lu/a;->c:Ljava/lang/Object;

    .line 66
    return-void
.end method
