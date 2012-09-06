.class final Lcom/google/zxing/e/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/common/f;


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .registers 2
    .parameter

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput p1, p0, Lcom/google/zxing/e/b/g;->a:F

    .line 558
    return-void
.end method

.method constructor <init>(FB)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/google/zxing/e/b/g;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 560
    check-cast p2, Lcom/google/zxing/e/b/d;

    invoke-virtual {p2}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    iget v1, p0, Lcom/google/zxing/e/b/g;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 561
    check-cast p1, Lcom/google/zxing/e/b/d;

    invoke-virtual {p1}, Lcom/google/zxing/e/b/d;->c()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/e/b/g;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 562
    cmpg-float v2, v0, v1

    if-gez v2, :cond_20

    const/4 v0, -0x1

    :goto_1f
    return v0

    :cond_20
    cmpl-float v0, v0, v1

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_1f

    :cond_26
    const/4 v0, 0x1

    goto :goto_1f
.end method
