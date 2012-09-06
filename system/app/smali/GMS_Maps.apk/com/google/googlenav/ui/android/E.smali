.class public Lcom/google/googlenav/ui/android/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private c:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)F
    .registers 9
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/google/googlenav/ui/android/E;->c:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/android/E;->a:D

    sub-double v2, p1, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/googlenav/ui/android/E;->b:D

    iget-wide v4, p0, Lcom/google/googlenav/ui/android/E;->a:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public a(DD)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/E;->a:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/google/googlenav/ui/android/E;->b:D

    cmpl-double v0, v0, p3

    if-eqz v0, :cond_12

    .line 21
    :cond_c
    iput-wide p1, p0, Lcom/google/googlenav/ui/android/E;->a:D

    .line 22
    iput-wide p3, p0, Lcom/google/googlenav/ui/android/E;->b:D

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(F)Z
    .registers 3
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlenav/ui/android/E;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_a

    .line 48
    iput p1, p0, Lcom/google/googlenav/ui/android/E;->c:F

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
