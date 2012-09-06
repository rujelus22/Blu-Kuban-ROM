.class public abstract Lzu;
.super Ljava/lang/Object;
.source "LeafElement.java"

# interfaces
.implements Lzr;


# instance fields
.field protected final a:LBH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBH",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field

.field protected final a:LBV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBV",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBH;LBV;)V
    .registers 4
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lzu;->a:LBH;

    .line 33
    iget-object v0, p0, Lzu;->a:LBH;

    invoke-virtual {v0, p0}, LBH;->a(Ljava/lang/Object;)V

    .line 34
    iput-object p2, p0, Lzu;->a:LBV;

    .line 35
    iget-object v0, p0, Lzu;->a:LBV;

    invoke-virtual {v0, p0}, LBV;->a(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private a(IILye;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lzu;->a:LBH;

    neg-int v1, p2

    invoke-virtual {v0, v1}, LBH;->a(I)V

    .line 126
    invoke-virtual {p0, p1, p2}, Lzu;->a(II)V

    .line 127
    neg-int v0, p2

    invoke-interface {p3, p1, v0}, Lye;->b(II)V

    .line 128
    return-void
.end method

.method private b(IILye;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lzu;->a:LBH;

    invoke-virtual {v0, p2}, LBH;->a(I)V

    .line 136
    invoke-virtual {p0, p1, p2}, Lzu;->b(II)V

    .line 137
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0, p2}, Lye;->a(II)V

    .line 138
    return-void
.end method


# virtual methods
.method public a()LBV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBV",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lzu;->a:LBV;

    return-object v0
.end method

.method protected abstract a(II)V
.end method

.method public a(LvZ;Lye;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lzu;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v2

    .line 49
    :goto_7
    invoke-static {p1}, Lyo;->a(LvZ;)Lyo;

    move-result-object v0

    sget-object v3, Lyo;->a:Lyo;

    if-eq v0, v3, :cond_83

    invoke-interface {p1}, LvZ;->b()I

    move-result v0

    iget-object v3, p0, Lzu;->a:LBH;

    invoke-virtual {v3}, LBH;->d()I

    move-result v3

    if-ge v0, v3, :cond_83

    invoke-interface {p1}, LvZ;->b()I

    move-result v0

    if-ge v0, p3, :cond_83

    .line 50
    invoke-static {p1}, Lyo;->a(LvZ;)Lyo;

    move-result-object v3

    .line 51
    invoke-interface {p1}, LvZ;->b()I

    move-result v4

    .line 52
    if-lt v4, v2, :cond_51

    const/4 v0, 0x1

    :goto_2c
    invoke-static {v0}, LafQ;->a(Z)V

    .line 53
    sget-object v0, Lzv;->a:[I

    invoke-virtual {v3}, Lyo;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_a0

    goto :goto_7

    .line 55
    :pswitch_3b
    sub-int v0, v4, v2

    .line 56
    invoke-interface {p1}, LvZ;->d()I

    move-result v3

    iget-object v5, p0, Lzu;->a:LBH;

    invoke-virtual {v5}, LBH;->e()I

    move-result v5

    sub-int v0, v5, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    invoke-direct {p0, v4, v0, p2}, Lzu;->a(IILye;)V

    goto :goto_7

    :cond_51
    move v0, v1

    .line 52
    goto :goto_2c

    .line 62
    :pswitch_53
    invoke-interface {p1}, LvZ;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    sub-int/2addr v0, v4

    .line 64
    invoke-direct {p0, v4, v0, p2}, Lzu;->b(IILye;)V

    goto :goto_7

    .line 68
    :pswitch_62
    iget-object v0, p0, Lzu;->a:LBH;

    invoke-virtual {v0}, LBH;->d()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    invoke-interface {p1}, LvZ;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    sub-int v3, v4, v2

    .line 71
    sub-int v3, v0, v4

    invoke-virtual {p0, v4, v3}, Lzu;->c(II)V

    .line 72
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0, v1}, Lye;->a(II)V

    goto :goto_7

    .line 80
    :cond_83
    sub-int v0, p3, v2

    .line 81
    iget-object v1, p0, Lzu;->a:LBH;

    invoke-virtual {v1}, LBH;->e()I

    move-result v1

    sub-int/2addr v0, v1

    .line 82
    if-lez v0, :cond_98

    .line 83
    iget-object v1, p0, Lzu;->a:LBH;

    invoke-virtual {v1}, LBH;->d()I

    move-result v1

    .line 84
    invoke-direct {p0, v1, v0, p2}, Lzu;->b(IILye;)V

    .line 88
    :cond_97
    :goto_97
    return-void

    .line 85
    :cond_98
    if-gez v0, :cond_97

    .line 86
    neg-int v0, v0

    invoke-direct {p0, p3, v0, p2}, Lzu;->a(IILye;)V

    goto :goto_97

    .line 53
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_53
        :pswitch_62
    .end packed-switch
.end method

.method public a(Lye;)V
    .registers 4
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lzu;->a:LBH;

    invoke-virtual {v0}, LBH;->e()I

    move-result v0

    .line 93
    iget-object v1, p0, Lzu;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    .line 94
    invoke-direct {p0, v1, v0, p1}, Lzu;->a(IILye;)V

    .line 95
    return-void
.end method

.method protected abstract b(II)V
.end method

.method protected abstract c(II)V
.end method
