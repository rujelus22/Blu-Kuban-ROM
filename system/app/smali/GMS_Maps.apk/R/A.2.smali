.class public Lr/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr/B;

.field public final b:[B

.field public final c:I

.field public final d:[B


# direct methods
.method private constructor <init>(Lr/B;I[B)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1405
    array-length v0, p3

    const v1, 0xffffff

    if-le v0, v1, :cond_11

    .line 1406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1408
    :cond_11
    iput-object p1, p0, Lr/A;->a:Lr/B;

    .line 1409
    invoke-virtual {p1}, Lr/B;->b()[B

    move-result-object v0

    iput-object v0, p0, Lr/A;->b:[B

    .line 1410
    iput p2, p0, Lr/A;->c:I

    .line 1411
    iput-object p3, p0, Lr/A;->d:[B

    .line 1412
    return-void
.end method

.method synthetic constructor <init>(Lr/B;I[BLr/x;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1393
    invoke-direct {p0, p1, p2, p3}, Lr/A;-><init>(Lr/B;I[B)V

    return-void
.end method

.method private constructor <init>(Lr/B;[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lr/A;-><init>(Lr/B;I[B)V

    .line 1402
    return-void
.end method

.method synthetic constructor <init>(Lr/B;[BLr/x;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1393
    invoke-direct {p0, p1, p2}, Lr/A;-><init>(Lr/B;[B)V

    return-void
.end method
