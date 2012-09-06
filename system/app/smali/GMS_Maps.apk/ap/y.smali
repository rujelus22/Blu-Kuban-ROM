.class public final LaP/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F


# direct methods
.method public constructor <init>(IIF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, LaP/y;->a:I

    .line 450
    iput p2, p0, LaP/y;->b:I

    .line 451
    iput p3, p0, LaP/y;->c:F

    .line 452
    return-void
.end method

.method public static a(IIF)LaP/y;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    new-instance v0, LaP/y;

    invoke-direct {v0, p0, p1, p2}, LaP/y;-><init>(IIF)V

    return-object v0
.end method


# virtual methods
.method public a(LaP/y;)I
    .registers 5
    .parameter

    .prologue
    .line 494
    iget v0, p0, LaP/y;->c:F

    iget v1, p1, LaP/y;->c:F

    sub-float/2addr v0, v1

    .line 495
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_11
    return v0

    :cond_12
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_11
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 438
    check-cast p1, LaP/y;

    invoke-virtual {p0, p1}, LaP/y;->a(LaP/y;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 478
    if-ne p0, p1, :cond_5

    .line 484
    :cond_4
    :goto_4
    return v0

    .line 481
    :cond_5
    instance-of v2, p1, LaP/y;

    if-eqz v2, :cond_13

    .line 482
    iget v2, p0, LaP/y;->a:I

    check-cast p1, LaP/y;

    iget v3, p1, LaP/y;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4

    :cond_13
    move v0, v1

    .line 484
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 489
    iget v0, p0, LaP/y;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 469
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "beginIndex"

    iget v2, p0, LaP/y;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "stopIndex"

    iget v2, p0, LaP/y;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "distance"

    iget v2, p0, LaP/y;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
