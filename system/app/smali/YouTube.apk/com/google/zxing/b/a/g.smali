.class final Lcom/google/zxing/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/b/a/f;


# direct methods
.method private constructor <init>(ILcom/google/zxing/b/a/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/google/zxing/b/a/g;->a:I

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/b/a/f;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/b/a/g;->b:[Lcom/google/zxing/b/a/f;

    .line 131
    return-void
.end method

.method constructor <init>(ILcom/google/zxing/b/a/f;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/b/a/g;-><init>(ILcom/google/zxing/b/a/f;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/zxing/b/a/f;Lcom/google/zxing/b/a/f;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/google/zxing/b/a/g;->a:I

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/b/a/f;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/b/a/g;->b:[Lcom/google/zxing/b/a/f;

    .line 136
    return-void
.end method

.method constructor <init>(ILcom/google/zxing/b/a/f;Lcom/google/zxing/b/a/f;B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const/16 v0, 0x3e

    invoke-direct {p0, v0, p2, p3}, Lcom/google/zxing/b/a/g;-><init>(ILcom/google/zxing/b/a/f;Lcom/google/zxing/b/a/f;)V

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/google/zxing/b/a/g;->a:I

    return v0
.end method

.method final b()[Lcom/google/zxing/b/a/f;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/zxing/b/a/g;->b:[Lcom/google/zxing/b/a/f;

    return-object v0
.end method
