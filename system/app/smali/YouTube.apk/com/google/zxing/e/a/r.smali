.class public final Lcom/google/zxing/e/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/google/zxing/e/a/r;->a:I

    .line 234
    iput p2, p0, Lcom/google/zxing/e/a/r;->b:I

    .line 235
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/google/zxing/e/a/r;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/google/zxing/e/a/r;->b:I

    return v0
.end method
