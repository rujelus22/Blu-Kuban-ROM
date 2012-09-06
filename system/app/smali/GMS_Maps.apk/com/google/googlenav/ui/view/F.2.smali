.class public Lcom/google/googlenav/ui/view/F;
.super Lcom/google/googlenav/ui/view/G;
.source "SourceFile"


# instance fields
.field public a:Lad/j;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lad/j;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 29
    new-array v2, v5, [I

    new-array v3, v5, [I

    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/G;-><init>(Ljava/lang/String;[I[ILjava/util/List;Z)V

    .line 30
    iput-object p2, p0, Lcom/google/googlenav/ui/view/F;->a:Lad/j;

    .line 31
    iput p3, p0, Lcom/google/googlenav/ui/view/F;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/F;->b()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Lad/y;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlenav/ui/view/F;->a:Lad/j;

    invoke-virtual {v0}, Lad/j;->aq()Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Lad/y;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/view/F;->a:Lad/j;

    invoke-virtual {v0}, Lad/j;->as()Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Lcom/google/googlenav/ui/view/F;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
