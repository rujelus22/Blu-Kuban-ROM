.class public Lcom/google/zxing/common/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:[Lcom/google/zxing/j;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/b;

    .line 35
    iput-object p2, p0, Lcom/google/zxing/common/i;->b:[Lcom/google/zxing/j;

    .line 36
    return-void
.end method


# virtual methods
.method public final d()Lcom/google/zxing/common/b;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/b;

    return-object v0
.end method

.method public final e()[Lcom/google/zxing/j;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/zxing/common/i;->b:[Lcom/google/zxing/j;

    return-object v0
.end method
