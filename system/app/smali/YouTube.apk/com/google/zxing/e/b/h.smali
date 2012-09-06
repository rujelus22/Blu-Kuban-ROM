.class public final Lcom/google/zxing/e/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/e/b/d;

.field private final b:Lcom/google/zxing/e/b/d;

.field private final c:Lcom/google/zxing/e/b/d;


# direct methods
.method public constructor <init>([Lcom/google/zxing/e/b/d;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/e/b/h;->a:Lcom/google/zxing/e/b/d;

    .line 33
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/e/b/h;->b:Lcom/google/zxing/e/b/d;

    .line 34
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/e/b/h;->c:Lcom/google/zxing/e/b/d;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/zxing/e/b/d;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/zxing/e/b/h;->a:Lcom/google/zxing/e/b/d;

    return-object v0
.end method

.method public final b()Lcom/google/zxing/e/b/d;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/zxing/e/b/h;->b:Lcom/google/zxing/e/b/d;

    return-object v0
.end method

.method public final c()Lcom/google/zxing/e/b/d;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/zxing/e/b/h;->c:Lcom/google/zxing/e/b/d;

    return-object v0
.end method
