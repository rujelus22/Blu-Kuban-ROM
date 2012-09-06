.class public LaM/bE;
.super LaM/h;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/googlenav/ui/bn;


# direct methods
.method public constructor <init>(LaM/bH;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, LaM/h;-><init>(LaM/i;)V

    .line 45
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, LaM/bE;->d:Lcom/google/googlenav/ui/bn;

    .line 46
    return-void
.end method

.method private a(Lcom/google/googlenav/ca;)Lcom/google/googlenav/ui/bd;
    .registers 6
    .parameter

    .prologue
    .line 62
    new-instance v1, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 73
    const/4 v0, -0x1

    .line 79
    :goto_12
    invoke-virtual {p0, p1, v1}, LaM/bE;->a(Lcom/google/googlenav/ca;Ljava/util/List;)V

    .line 81
    new-instance v2, Lcom/google/googlenav/ui/be;

    invoke-direct {v2}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/be;->a(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->d(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    .line 86
    sget-object v1, Lak/b;->a:Lak/b;

    invoke-virtual {v1}, Lak/b;->e()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 87
    invoke-direct {p0, p1, v0}, LaM/bE;->a(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/be;)V

    .line 90
    :cond_33
    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    return-object v0

    .line 75
    :cond_38
    invoke-static {v2, p1}, LaM/bE;->a(Ljava/lang/String;Lcom/google/googlenav/ca;)Ljava/lang/String;

    move-result-object v2

    .line 76
    sget-object v3, Lcom/google/googlenav/ui/aV;->m:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/ca;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->l()I

    move-result v0

    if-lez v0, :cond_25

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/bn;->bm:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_25
    return-object p0
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/cn;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x30f

    const/16 v9, 0x30e

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->c()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_11
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->a()Z

    move-result v3

    .line 169
    if-eqz v3, :cond_8a

    invoke-virtual {p1, v7}, Lcom/google/googlenav/cn;->d(Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 176
    :goto_1c
    if-eqz v3, :cond_90

    invoke-static {v10}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_22
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    const/16 v4, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_66

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_66
    if-eqz v3, :cond_95

    .line 185
    invoke-static {v10}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_76
    return-object v0

    .line 165
    :cond_77
    const/16 v0, 0x4ee

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 169
    :cond_8a
    invoke-virtual {p1, v6}, Lcom/google/googlenav/cn;->c(Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1c

    .line 176
    :cond_90
    invoke-static {v9}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 189
    :cond_95
    invoke-static {v9}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76
.end method

.method private a(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/be;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, LaM/bE;->d:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->J()LS/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bf;->a(LS/f;)Lcom/google/googlenav/ui/bf;

    move-result-object v2

    .line 98
    iget-object v0, p0, LaM/bE;->c:LaM/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, LaM/i;->a(Lat/B;I)Z

    move-result v3

    .line 100
    if-eqz v3, :cond_45

    iget-object v0, p0, LaM/bE;->d:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->K()LS/f;

    move-result-object v0

    .line 102
    :goto_1d
    new-instance v4, Lcom/google/googlenav/ui/view/a;

    if-eqz v3, :cond_4c

    const/16 v1, 0x25c

    :goto_23
    iget-object v5, p0, LaM/bE;->c:LaM/i;

    invoke-virtual {v5}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/F;->c()I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bf;->a(LS/f;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/bf;

    move-result-object v0

    .line 108
    new-instance v1, LaM/bF;

    invoke-direct {v1, p0, v3}, LaM/bF;-><init>(LaM/bE;Z)V

    .line 129
    invoke-virtual {p2, v2}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->b(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/be;

    .line 132
    return-void

    .line 100
    :cond_45
    iget-object v0, p0, LaM/bE;->d:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->L()LS/f;

    move-result-object v0

    goto :goto_1d

    .line 102
    :cond_4c
    const/16 v1, 0x262

    goto :goto_23
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 5

    .prologue
    .line 50
    iget-object v0, p0, LaM/bE;->c:LaM/i;

    invoke-virtual {v0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cq;

    .line 52
    invoke-virtual {v0}, Lcom/google/googlenav/cq;->c()B

    move-result v1

    if-nez v1, :cond_10

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_f
    return-object v0

    .line 55
    :cond_10
    invoke-virtual {v0}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-direct {p0, v0}, LaM/bE;->a(Lcom/google/googlenav/ca;)Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    iget-object v2, p0, LaM/bE;->c:LaM/i;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    goto :goto_f
.end method

.method a(Lcom/google/googlenav/ca;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Lcom/google/googlenav/ca;->c(Z)Lcom/google/googlenav/cn;

    move-result-object v0

    .line 152
    if-nez v0, :cond_8

    .line 161
    :cond_7
    :goto_7
    return-void

    .line 155
    :cond_8
    invoke-virtual {v0, v1}, Lcom/google/googlenav/cn;->c(Z)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_7

    .line 159
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaM/bE;->a(Ljava/lang/String;Lcom/google/googlenav/cn;)Ljava/lang/String;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/google/googlenav/ui/aV;->h:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method
