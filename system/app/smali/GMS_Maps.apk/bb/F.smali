.class public Lbb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lbb/f;->a:F

    .line 33
    iput v0, p0, Lbb/f;->b:F

    .line 34
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    double-to-float v0, p1

    iput v0, p0, Lbb/f;->a:F

    .line 23
    double-to-float v0, p3

    iput v0, p0, Lbb/f;->b:F

    .line 24
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lbb/f;->a:F

    .line 28
    iput p2, p0, Lbb/f;->b:F

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    int-to-float v0, p1

    iput v0, p0, Lbb/f;->a:F

    .line 18
    int-to-float v0, p2

    iput v0, p0, Lbb/f;->b:F

    .line 19
    return-void
.end method


# virtual methods
.method public a(DD)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 37
    double-to-float v0, p1

    iput v0, p0, Lbb/f;->a:F

    .line 38
    double-to-float v0, p3

    iput v0, p0, Lbb/f;->b:F

    .line 39
    return-void
.end method

.method public a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lbb/f;->a:F

    .line 48
    iput p2, p0, Lbb/f;->b:F

    .line 49
    return-void
.end method

.method public a(Lbb/f;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget v0, p1, Lbb/f;->a:F

    iput v0, p0, Lbb/f;->a:F

    .line 53
    iget v0, p1, Lbb/f;->b:F

    iput v0, p0, Lbb/f;->b:F

    .line 54
    return-void
.end method
