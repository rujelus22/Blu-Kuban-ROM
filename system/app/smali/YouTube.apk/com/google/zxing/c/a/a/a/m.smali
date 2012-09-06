.class final Lcom/google/zxing/c/a/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/c/a/a/a/m;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method final a()Z
    .registers 3

    .prologue
    .line 47
    iget v0, p0, Lcom/google/zxing/c/a/a/a/m;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final b()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/google/zxing/c/a/a/a/m;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final c()V
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/c/a/a/a/m;->b:I

    .line 60
    return-void
.end method

.method final d()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/zxing/c/a/a/a/m;->b:I

    .line 64
    return-void
.end method

.method final e()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/zxing/c/a/a/a/m;->b:I

    .line 68
    return-void
.end method
