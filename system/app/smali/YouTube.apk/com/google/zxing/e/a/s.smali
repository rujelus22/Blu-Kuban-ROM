.class public final Lcom/google/zxing/e/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/e/a/r;


# direct methods
.method constructor <init>(ILcom/google/zxing/e/a/r;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lcom/google/zxing/e/a/s;->a:I

    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/e/a/r;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/e/a/s;->b:[Lcom/google/zxing/e/a/r;

    .line 195
    return-void
.end method

.method constructor <init>(ILcom/google/zxing/e/a/r;Lcom/google/zxing/e/a/r;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/google/zxing/e/a/s;->a:I

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/e/a/r;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/e/a/s;->b:[Lcom/google/zxing/e/a/r;

    .line 200
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/google/zxing/e/a/s;->a:I

    return v0
.end method

.method public final b()[Lcom/google/zxing/e/a/r;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/zxing/e/a/s;->b:[Lcom/google/zxing/e/a/r;

    return-object v0
.end method
