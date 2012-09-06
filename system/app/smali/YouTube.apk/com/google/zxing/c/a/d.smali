.class final Lcom/google/zxing/c/a/d;
.super Lcom/google/zxing/c/a/b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/c/a/c;

.field private b:I


# direct methods
.method constructor <init>(IILcom/google/zxing/c/a/c;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/c/a/b;-><init>(II)V

    .line 26
    iput-object p3, p0, Lcom/google/zxing/c/a/d;->a:Lcom/google/zxing/c/a/c;

    .line 27
    return-void
.end method


# virtual methods
.method final c()Lcom/google/zxing/c/a/c;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/zxing/c/a/d;->a:Lcom/google/zxing/c/a/c;

    return-object v0
.end method

.method final d()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/zxing/c/a/d;->b:I

    return v0
.end method

.method final e()V
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/zxing/c/a/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/c/a/d;->b:I

    .line 39
    return-void
.end method
