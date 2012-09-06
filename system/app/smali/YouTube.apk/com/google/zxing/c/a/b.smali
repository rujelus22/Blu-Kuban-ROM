.class public Lcom/google/zxing/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/zxing/c/a/b;->a:I

    .line 26
    iput p2, p0, Lcom/google/zxing/c/a/b;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/google/zxing/c/a/b;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/zxing/c/a/b;->b:I

    return v0
.end method
