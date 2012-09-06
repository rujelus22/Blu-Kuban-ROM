.class Lcom/google/googlenav/bL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p1, p0, Lcom/google/googlenav/bL;->a:I

    .line 330
    iput p2, p0, Lcom/google/googlenav/bL;->b:I

    .line 331
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lcom/google/googlenav/bL;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput p1, p0, Lcom/google/googlenav/bL;->b:I

    .line 343
    return-void
.end method

.method public a(Lcom/google/googlenav/bL;)Z
    .registers 4
    .parameter

    .prologue
    .line 351
    iget v0, p0, Lcom/google/googlenav/bL;->a:I

    iget v1, p1, Lcom/google/googlenav/bL;->a:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Lcom/google/googlenav/bL;->b:I

    return v0
.end method
