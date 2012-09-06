.class final Lcom/google/zxing/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Lcom/google/zxing/b/a/f;->a:I

    .line 158
    iput p2, p0, Lcom/google/zxing/b/a/f;->b:I

    .line 159
    return-void
.end method

.method constructor <init>(IIB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/b/a/f;-><init>(II)V

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/google/zxing/b/a/f;->a:I

    return v0
.end method

.method final b()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/zxing/b/a/f;->b:I

    return v0
.end method
