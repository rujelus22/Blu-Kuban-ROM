.class final Lcom/google/zxing/e/b/f;
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
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lcom/google/zxing/e/b/f;->a:F

    .line 573
    return-void
.end method

.method constructor <init>(FB)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/google/zxing/e/b/f;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    move-object v0, p2

    .line 575
    check-cast v0, Lcom/google/zxing/e/b/d;

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->d()I

    move-result v1

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/e/b/d;

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->d()I

    move-result v0

    if-ne v1, v0, :cond_38

    .line 576
    check-cast p2, Lcom/google/zxing/e/b/d;

    invoke-virtual {p2}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    iget v1, p0, Lcom/google/zxing/e/b/f;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 577
    check-cast p1, Lcom/google/zxing/e/b/d;

    invoke-virtual {p1}, Lcom/google/zxing/e/b/d;->c()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/e/b/f;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 578
    cmpg-float v2, v0, v1

    if-gez v2, :cond_30

    const/4 v0, 0x1

    .line 580
    :goto_2f
    return v0

    .line 578
    :cond_30
    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    const/4 v0, 0x0

    goto :goto_2f

    :cond_36
    const/4 v0, -0x1

    goto :goto_2f

    .line 580
    :cond_38
    check-cast p2, Lcom/google/zxing/e/b/d;

    invoke-virtual {p2}, Lcom/google/zxing/e/b/d;->d()I

    move-result v0

    check-cast p1, Lcom/google/zxing/e/b/d;

    invoke-virtual {p1}, Lcom/google/zxing/e/b/d;->d()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2f
.end method
