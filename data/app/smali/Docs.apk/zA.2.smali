.class public LzA;
.super Lzu;
.source "Text.java"


# instance fields
.field private final a:LwM;


# direct methods
.method public constructor <init>(LBH;LBV;Lyg;LwH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LBV",
            "<",
            "Lzr;",
            ">;",
            "Lyg;",
            "LwH;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lzu;-><init>(LBH;LBV;)V

    .line 34
    new-instance v0, LwM;

    invoke-direct {v0, p1, p2, p3, p4}, LwM;-><init>(LBH;LBV;Lyg;LwH;)V

    iput-object v0, p0, LzA;->a:LwM;

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, LzA;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, LzA;->a:LBV;

    invoke-virtual {v1}, LBV;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LzA;->a:LwM;

    invoke-virtual {v0, p1, p2}, LwM;->c(II)V

    .line 51
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, LzA;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    iget-object v1, p0, LzA;->a:LBV;

    invoke-virtual {v1}, LBV;->d()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    if-lt v1, v0, :cond_2e

    iget-object v2, p0, LzA;->a:LBV;

    invoke-virtual {v2}, LBV;->d()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 79
    new-instance v2, LFt;

    invoke-virtual {p0, v0}, LzA;->b(I)I

    move-result v0

    invoke-virtual {p0, v1}, LzA;->b(I)I

    move-result v1

    invoke-direct {v2, v0, v1}, LFt;-><init>(II)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2e
    return-void
.end method

.method public a(IILAV;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, LzA;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    iget-object v1, p0, LzA;->a:LBV;

    invoke-virtual {v1}, LBV;->d()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 67
    if-le v1, v0, :cond_1e

    .line 68
    iget-object v2, p0, LzA;->a:LwM;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v0, v1, p3}, LwM;->a(IILAV;)Z

    move-result v0

    .line 70
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LzA;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, LzA;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, LzA;->a:LwM;

    invoke-virtual {v0, p1, p2}, LwM;->a(II)V

    .line 56
    return-void
.end method

.method protected c(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, LzA;->a:LwM;

    invoke-virtual {v0, p1, p2}, LwM;->b(II)V

    .line 61
    return-void
.end method
