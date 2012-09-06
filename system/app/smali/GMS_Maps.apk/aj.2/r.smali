.class public abstract Laj/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Laj/r;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract a(FF)V
.end method

.method public abstract b()F
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method

.method public f()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 109
    iget v1, p0, Laj/r;->a:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 123
    iget v0, p0, Laj/r;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
