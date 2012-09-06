.class public final Lcom/google/zxing/a/a;
.super Lcom/google/zxing/common/i;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;ZII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/common/i;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;)V

    .line 31
    iput-boolean p3, p0, Lcom/google/zxing/a/a;->a:Z

    .line 32
    iput p4, p0, Lcom/google/zxing/a/a;->b:I

    .line 33
    iput p5, p0, Lcom/google/zxing/a/a;->c:I

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/zxing/a/a;->c:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/zxing/a/a;->b:I

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/zxing/a/a;->a:Z

    return v0
.end method
