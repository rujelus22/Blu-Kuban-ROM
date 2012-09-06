.class public abstract Laj/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Laj/t;->a:I

    .line 36
    iput-boolean p2, p0, Laj/t;->b:Z

    .line 37
    return-void
.end method


# virtual methods
.method public abstract a()F
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

    .line 129
    iget v1, p0, Laj/t;->a:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Laj/t;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 143
    iget v0, p0, Laj/t;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 150
    iget v0, p0, Laj/t;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Laj/t;->b:Z

    return v0
.end method
