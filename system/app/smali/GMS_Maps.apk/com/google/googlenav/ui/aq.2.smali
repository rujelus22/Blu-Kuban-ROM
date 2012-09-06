.class public abstract Lcom/google/googlenav/ui/aQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/googlenav/ui/aQ;->a:I

    .line 53
    iput p2, p0, Lcom/google/googlenav/ui/aQ;->b:I

    .line 54
    iput p3, p0, Lcom/google/googlenav/ui/aQ;->c:I

    .line 55
    iput p4, p0, Lcom/google/googlenav/ui/aQ;->d:I

    .line 56
    iput p5, p0, Lcom/google/googlenav/ui/aQ;->e:I

    .line 57
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 70
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aQ;->a()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aQ;->b()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aQ;->c()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aQ;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public f()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->a:I

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->b:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->c:I

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->d:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/google/googlenav/ui/aQ;->e:I

    return v0
.end method
