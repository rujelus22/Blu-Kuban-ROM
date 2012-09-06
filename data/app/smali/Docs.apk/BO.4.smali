.class public LBO;
.super Ljava/lang/Object;
.source "SpanInfo.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(LBV;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBV",
            "<*>;III)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, LBO;->a:I

    .line 11
    iput v0, p0, LBO;->b:I

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, LBO;->a(LBV;III)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, LBO;->a:I

    return v0
.end method

.method public a(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    sub-int v0, p3, p2

    .line 59
    iget v1, p0, LBO;->a:I

    if-lt v1, p1, :cond_10

    .line 60
    iget v1, p0, LBO;->a:I

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1f

    .line 61
    add-int v1, p1, p3

    iput v1, p0, LBO;->a:I

    .line 66
    :cond_10
    :goto_10
    iget v1, p0, LBO;->b:I

    if-le v1, p1, :cond_1e

    .line 67
    iget v1, p0, LBO;->b:I

    add-int v2, p1, p2

    if-ge v1, v2, :cond_25

    .line 68
    add-int v0, p1, p3

    iput v0, p0, LBO;->b:I

    .line 73
    :cond_1e
    :goto_1e
    return-void

    .line 63
    :cond_1f
    iget v1, p0, LBO;->a:I

    add-int/2addr v1, v0

    iput v1, p0, LBO;->a:I

    goto :goto_10

    .line 70
    :cond_25
    iget v1, p0, LBO;->b:I

    add-int/2addr v0, v1

    iput v0, p0, LBO;->b:I

    goto :goto_1e
.end method

.method public a(LBV;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBV",
            "<*>;III)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, LBV;->length()I

    move-result v0

    .line 47
    const-string v1, "setSpan"

    invoke-static {v1, p2, p3, v0}, LBW;->a(Ljava/lang/String;III)V

    .line 48
    iput p2, p0, LBO;->a:I

    .line 49
    iput p3, p0, LBO;->b:I

    .line 50
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, LBO;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
