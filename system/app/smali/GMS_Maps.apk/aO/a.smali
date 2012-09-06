.class public LaO/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:LaM/i;

.field protected b:Lcom/google/googlenav/ui/bn;


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, LaO/a;->a:LaM/i;

    .line 55
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, LaO/a;->b:Lcom/google/googlenav/ui/bn;

    .line 56
    return-void
.end method

.method private static c(Lcom/google/googlenav/E;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-interface {p0}, Lcom/google/googlenav/E;->d()I

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    :cond_7
    :goto_7
    return v0

    .line 137
    :cond_8
    check-cast p0, Lcom/google/googlenav/ai;

    .line 138
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bo()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_16
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public a(ZBI)C
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    const/16 v0, 0x20

    return v0
.end method

.method public a(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, LaO/a;->b:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(B)I

    move-result v0

    return v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method protected a(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->u()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 86
    :goto_c
    return v0

    .line 66
    :cond_d
    iget-object v0, p0, LaO/a;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1b

    move v0, v1

    .line 68
    goto :goto_c

    .line 71
    :cond_1b
    invoke-interface {v0}, Lcom/google/googlenav/E;->b()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    move v0, v1

    .line 73
    goto :goto_c

    .line 76
    :cond_27
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v2

    invoke-virtual {v2}, Ll/q;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    move v0, v1

    .line 77
    goto :goto_c

    .line 81
    :cond_37
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 82
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v3

    invoke-virtual {v3, v0}, Ll/q;->d(Ln/B;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    .line 83
    goto :goto_c

    .line 86
    :cond_53
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, LaO/a;->b:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->c(B)I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, LaO/a;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 126
    :cond_19
    :goto_19
    return-object v1

    .line 101
    :cond_1a
    invoke-static {v0}, LaO/a;->c(Lcom/google/googlenav/E;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 103
    check-cast v0, Lcom/google/googlenav/ai;

    .line 104
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 106
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v1

    .line 107
    :cond_32
    iget-object v2, p0, LaO/a;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/bn;->a(BLS/f;)Lcom/google/googlenav/e;

    move-result-object v1

    goto :goto_19

    :cond_3d
    move-object v1, v2

    .line 109
    goto :goto_19

    .line 113
    :cond_3f
    invoke-interface {v0}, Lcom/google/googlenav/E;->d()I

    move-result v1

    if-nez v1, :cond_4f

    move-object v1, v0

    .line 114
    check-cast v1, Lcom/google/googlenav/ai;

    .line 115
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ae()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 118
    const/4 p1, -0x1

    .line 122
    :cond_4f
    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, LaO/a;->a(ZBI)C

    move-result v1

    .line 123
    const/16 v2, 0x20

    if-ne v1, v2, :cond_67

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v0

    .line 126
    :goto_60
    iget-object v2, p0, LaO/a;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/bn;->a(BC)Lcom/google/googlenav/e;

    move-result-object v1

    goto :goto_19

    .line 123
    :cond_67
    invoke-static {v1}, Lcom/google/googlenav/ui/aN;->j(C)B

    move-result v0

    goto :goto_60
.end method
