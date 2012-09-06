.class final Lcom/google/zxing/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/common/f;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/zxing/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 439
    check-cast p1, Lcom/google/zxing/b/b/b;

    invoke-virtual {p1}, Lcom/google/zxing/b/b/b;->c()I

    move-result v0

    check-cast p2, Lcom/google/zxing/b/b/b;

    invoke-virtual {p2}, Lcom/google/zxing/b/b/b;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
