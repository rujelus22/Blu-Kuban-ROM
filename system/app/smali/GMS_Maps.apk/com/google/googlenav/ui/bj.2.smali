.class public Lcom/google/googlenav/ui/bJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/c;


# instance fields
.field private final a:Lat/u;

.field private b:Lcom/google/googlenav/ui/view/d;

.field private c:Lcom/google/googlenav/ui/view/d;

.field private final d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lat/u;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bJ;->d:Landroid/graphics/Point;

    .line 33
    iput-object p1, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    .line 34
    return-void
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 114
    :cond_9
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aC()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->z()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 125
    :cond_9
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bJ;->c()V

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_e

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/bJ;->d:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 76
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_19

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/bJ;->d:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 79
    :cond_19
    return-void
.end method

.method public a(LZ/b;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1}, LZ/b;->i()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 135
    iget-object v1, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v2

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lat/u;->a(ZII)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 136
    const/4 v0, 0x1

    .line 140
    :cond_18
    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 145
    .line 146
    iget-object v2, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_10

    .line 148
    iget-object v2, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    invoke-virtual {v2, v1}, Lat/u;->a(Z)Z

    .line 155
    :goto_f
    return v0

    .line 150
    :cond_10
    iget-object v2, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_1e

    .line 152
    iget-object v1, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->a(Z)Z

    goto :goto_f

    :cond_1e
    move v0, v1

    goto :goto_f
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->G()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 53
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    .line 55
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    .line 65
    :cond_21
    :goto_21
    return-void

    .line 58
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_2b

    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->b:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 61
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_21

    .line 62
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->c:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    goto :goto_21
.end method

.method public b(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    invoke-virtual {v0}, Lat/u;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/bJ;->a(Z)V

    .line 94
    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    invoke-virtual {v0}, Lat/u;->j()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 95
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/bJ;->b(Z)V

    .line 102
    :goto_18
    iget-object v0, p0, Lcom/google/googlenav/ui/bJ;->a:Lat/u;

    invoke-virtual {v0}, Lat/u;->p()V

    .line 103
    return-void

    .line 90
    :cond_1e
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/bJ;->a(Z)V

    goto :goto_d

    .line 97
    :cond_22
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/bJ;->b(Z)V

    goto :goto_18
.end method
