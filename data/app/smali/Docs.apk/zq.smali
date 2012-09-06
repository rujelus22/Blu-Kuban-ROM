.class public abstract Lzq;
.super Ljava/lang/Object;
.source "ContainerElement.java"

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

.field protected final a:LwH;

.field private final a:LyO;

.field protected final a:Lyg;


# direct methods
.method public constructor <init>(LBH;LBV;LyO;Lyg;LwH;)V
    .registers 7
    .parameter
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
            "LyO;",
            "Lyg;",
            "LwH;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lzq;->a:LBH;

    .line 41
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0, p0}, LBH;->a(Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Lzq;->a:LBV;

    .line 43
    iget-object v0, p0, Lzq;->a:LBV;

    invoke-virtual {v0, p0}, LBV;->a(Ljava/lang/Object;)V

    .line 44
    iput-object p3, p0, Lzq;->a:LyO;

    .line 45
    iput-object p4, p0, Lzq;->a:Lyg;

    .line 46
    iput-object p5, p0, Lzq;->a:LwH;

    .line 47
    return-void
.end method

.method private a(LBJ;ILBJ;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBJ",
            "<**>;I",
            "LBJ",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p1}, LBJ;->c()I

    move-result v0

    if-gt p2, v0, :cond_b

    .line 203
    invoke-virtual {p3}, LBJ;->c()I

    move-result v0

    .line 211
    :goto_a
    return v0

    .line 204
    :cond_b
    invoke-virtual {p1}, LBJ;->f()I

    move-result v0

    if-ge p2, v0, :cond_25

    .line 205
    invoke-virtual {p1}, LBJ;->c()I

    move-result v0

    sub-int v0, p2, v0

    .line 206
    invoke-virtual {p3}, LBJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, LBJ;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_a

    .line 207
    :cond_25
    invoke-virtual {p1}, LBJ;->g()I

    move-result v0

    if-gt p2, v0, :cond_30

    .line 208
    invoke-virtual {p3}, LBJ;->g()I

    move-result v0

    goto :goto_a

    .line 210
    :cond_30
    invoke-virtual {p1}, LBJ;->g()I

    move-result v0

    sub-int v0, p2, v0

    .line 211
    invoke-virtual {p3}, LBJ;->g()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, LBJ;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_a
.end method

.method private a(LBH;LvZ;Lye;I)LBH;
    .registers 11
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
            "LvZ;",
            "Lye;",
            "I)",
            "LBH",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p2}, Lyo;->a(LvZ;)Lyo;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, LBH;->c()I

    move-result v1

    .line 118
    invoke-interface {p2}, LvZ;->b()I

    move-result v2

    sub-int/2addr v2, v1

    .line 119
    sget-object v3, Lyo;->d:Lyo;

    if-ne v0, v3, :cond_29

    if-nez v2, :cond_29

    invoke-interface {p2}, LvZ;->d()I

    move-result v3

    invoke-virtual {p1}, LBH;->e()I

    move-result v4

    if-lt v3, v4, :cond_29

    .line 122
    invoke-direct {p0, p1, p3}, Lzq;->a(LBH;Lye;)V

    .line 124
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0, v1}, LBH;->a(I)LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 140
    :goto_28
    return-object v0

    .line 126
    :cond_29
    iget-object v1, p0, Lzq;->a:LyO;

    invoke-virtual {p1}, LBH;->c()I

    move-result v3

    iget-object v4, p0, Lzq;->a:Lyg;

    iget-object v5, p0, Lzq;->a:LwH;

    invoke-interface {v1, v3, p4, v4, v5}, LyO;->a(IILyg;LwH;)LyP;

    move-result-object v1

    .line 128
    invoke-interface {v1}, LyP;->a()I

    move-result v3

    .line 129
    sget-object v4, Lyo;->c:Lyo;

    if-ne v0, v4, :cond_61

    invoke-interface {p2}, LvZ;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_61

    const/4 v0, 0x1

    .line 131
    :goto_48
    if-nez v2, :cond_63

    if-nez v0, :cond_58

    invoke-virtual {p1}, LBH;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    invoke-interface {v1, v0}, LyP;->a(Lzr;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 133
    :cond_58
    invoke-direct {p0, p1, v1}, Lzq;->a(LBH;LyP;)Lzr;

    move-result-object v0

    .line 134
    invoke-interface {v0, p2, p3, v3}, Lzr;->a(LvZ;Lye;I)V

    move-object v0, p1

    .line 135
    goto :goto_28

    .line 129
    :cond_61
    const/4 v0, 0x0

    goto :goto_48

    .line 138
    :cond_63
    invoke-virtual {p1}, LBH;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    .line 139
    invoke-interface {v0, p2, p3, v3}, Lzr;->a(LvZ;Lye;I)V

    .line 140
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {p1}, LBH;->d()I

    move-result v1

    invoke-virtual {v0, v1}, LBH;->a(I)LBJ;

    move-result-object v0

    check-cast v0, LBH;

    goto :goto_28
.end method

.method private a(LBH;LyP;)Lzr;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LyP;",
            ")",
            "Lzr;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, LBH;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    .line 221
    iget-object v1, p0, Lzq;->a:LBH;

    invoke-virtual {v1, p1}, LBH;->a(LBJ;)LBJ;

    move-result-object v1

    check-cast v1, LBH;

    .line 222
    iget-object v2, p0, Lzq;->a:LBV;

    invoke-interface {v0}, Lzr;->a()LBV;

    move-result-object v0

    invoke-virtual {v2, v0}, LBV;->a(LBJ;)LBJ;

    move-result-object v0

    check-cast v0, LBV;

    .line 223
    invoke-interface {p2, v1, v0}, LyP;->a(LBH;LBV;)Lzr;

    move-result-object v0

    return-object v0
.end method

.method private a(LBH;Lye;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "Lye;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, LBH;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    .line 147
    if-eqz v0, :cond_1a

    .line 148
    invoke-interface {v0, p2}, Lzr;->a(Lye;)V

    .line 155
    :goto_b
    iget-object v1, p0, Lzq;->a:LBV;

    invoke-interface {v0}, Lzr;->a()LBV;

    move-result-object v0

    invoke-virtual {v1, v0}, LBV;->a(LBJ;)Z

    .line 156
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0, p1}, LBH;->a(LBJ;)Z

    .line 157
    return-void

    .line 150
    :cond_1a
    const-string v1, "ContainerElement"

    const-string v2, "Attempted to delete null child."

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0, p1}, LBH;->a(I)LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 178
    if-eqz v0, :cond_15

    .line 179
    invoke-virtual {v0}, LBH;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    invoke-interface {v0, p1}, Lzr;->a(I)I

    move-result v0

    .line 181
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lzq;->a:LBH;

    iget-object v1, p0, Lzq;->a:LBV;

    invoke-direct {p0, v0, p1, v1}, Lzq;->a(LBJ;ILBJ;)I

    move-result v0

    goto :goto_14
.end method

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
    .line 161
    iget-object v0, p0, Lzq;->a:LBV;

    return-object v0
.end method

.method public a(LvZ;Lye;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0}, LBH;->b()LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 64
    :goto_8
    if-eqz v0, :cond_12

    .line 65
    invoke-static {p1}, Lyo;->a(LvZ;)Lyo;

    move-result-object v1

    .line 66
    sget-object v2, Lyo;->a:Lyo;

    if-ne v1, v2, :cond_26

    .line 88
    :cond_12
    :goto_12
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0}, LBH;->g()I

    move-result v0

    if-le v0, p3, :cond_46

    .line 89
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0, p3}, LBH;->a(I)LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 90
    invoke-direct {p0, v0, p2}, Lzq;->a(LBH;Lye;)V

    goto :goto_12

    .line 69
    :cond_26
    invoke-interface {p1}, LvZ;->b()I

    move-result v1

    .line 70
    if-ge v1, p3, :cond_12

    .line 74
    invoke-virtual {v0}, LBH;->d()I

    move-result v2

    if-le v1, v2, :cond_3e

    .line 76
    iget-object v0, p0, Lzq;->a:LBH;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LBH;->a(I)LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 77
    if-eqz v0, :cond_12

    .line 82
    :cond_3e
    invoke-virtual {v0}, LBH;->c()I

    .line 83
    invoke-direct {p0, v0, p1, p2, p3}, Lzq;->a(LBH;LvZ;Lye;I)LBH;

    move-result-object v0

    goto :goto_8

    .line 94
    :cond_46
    :goto_46
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0}, LBH;->g()I

    move-result v0

    if-ge v0, p3, :cond_7a

    .line 95
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0}, LBH;->a()LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 96
    iget-object v1, p0, Lzq;->a:LBV;

    invoke-virtual {v1}, LBV;->a()LBJ;

    move-result-object v1

    check-cast v1, LBV;

    .line 97
    iget-object v2, p0, Lzq;->a:LyO;

    iget-object v3, p0, Lzq;->a:LBH;

    invoke-virtual {v3}, LBH;->g()I

    move-result v3

    iget-object v4, p0, Lzq;->a:Lyg;

    iget-object v5, p0, Lzq;->a:LwH;

    invoke-interface {v2, v3, p3, v4, v5}, LyO;->a(IILyg;LwH;)LyP;

    move-result-object v2

    .line 99
    invoke-interface {v2, v0, v1}, LyP;->a(LBH;LBV;)Lzr;

    move-result-object v0

    .line 100
    invoke-interface {v2}, LyP;->a()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lzr;->a(LvZ;Lye;I)V

    goto :goto_46

    .line 103
    :cond_7a
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0}, LBH;->e()I

    move-result v0

    if-lez v0, :cond_87

    const/4 v0, 0x1

    :goto_83
    invoke-static {v0}, LafQ;->b(Z)V

    .line 104
    return-void

    .line 103
    :cond_87
    const/4 v0, 0x0

    goto :goto_83
.end method

.method public a(Lye;)V
    .registers 3
    .parameter

    .prologue
    .line 167
    :goto_0
    iget-object v0, p0, Lzq;->a:LBH;

    invoke-virtual {v0}, LBH;->b()LBJ;

    move-result-object v0

    check-cast v0, LBH;

    .line 168
    if-nez v0, :cond_b

    .line 173
    return-void

    .line 171
    :cond_b
    invoke-direct {p0, v0, p1}, Lzq;->a(LBH;Lye;)V

    goto :goto_0
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lzq;->a:LBV;

    invoke-virtual {v0, p1}, LBV;->a(I)LBJ;

    move-result-object v0

    check-cast v0, LBV;

    .line 187
    if-eqz v0, :cond_15

    .line 188
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    invoke-interface {v0, p1}, Lzr;->b(I)I

    move-result v0

    .line 190
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lzq;->a:LBV;

    iget-object v1, p0, Lzq;->a:LBH;

    invoke-direct {p0, v0, p1, v1}, Lzq;->a(LBJ;ILBJ;)I

    move-result v0

    goto :goto_14
.end method
