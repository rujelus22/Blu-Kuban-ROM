.class final Lcom/google/zxing/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput p1, p0, Lcom/google/zxing/a/b/b;->a:I

    .line 608
    iput p2, p0, Lcom/google/zxing/a/b/b;->b:I

    .line 609
    return-void
.end method

.method constructor <init>(IIB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/a/b/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/zxing/j;
    .registers 4

    .prologue
    .line 603
    new-instance v0, Lcom/google/zxing/j;

    iget v1, p0, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/j;-><init>(FF)V

    return-object v0
.end method
