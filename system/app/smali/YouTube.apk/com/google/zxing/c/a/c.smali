.class public final Lcom/google/zxing/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[Lcom/google/zxing/j;


# direct methods
.method public constructor <init>(I[IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/zxing/c/a/c;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/zxing/c/a/c;->b:[I

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/j;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/j;

    int-to-float v3, p3

    int-to-float v4, p5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/j;

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/c/a/c;->c:[Lcom/google/zxing/j;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/zxing/c/a/c;->a:I

    return v0
.end method

.method public final b()[I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/zxing/c/a/c;->b:[I

    return-object v0
.end method

.method public final c()[Lcom/google/zxing/j;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/zxing/c/a/c;->c:[Lcom/google/zxing/j;

    return-object v0
.end method
