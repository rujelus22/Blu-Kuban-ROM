.class public LaM/cg;
.super LaM/bj;
.source "SourceFile"


# instance fields
.field private E:Ljava/lang/String;

.field private F:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lat/k;I)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v6, Lcom/google/googlenav/layer/m;

    const-string v0, ""

    invoke-direct {v6, v0}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 54
    return-void
.end method

.method private bS()V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, LaM/cg;->E:Ljava/lang/String;

    iget-object v2, p0, LaM/cg;->F:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v3, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;Lcom/google/googlenav/ui/v;)V

    .line 112
    iget-object v0, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 113
    return-void
.end method

.method private bT()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1b

    .line 118
    iget-object v0, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 120
    :cond_1b
    iget-object v0, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(I)V

    .line 121
    iget-object v0, p0, LaM/cg;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 122
    return-void
.end method

.method private i(Lcom/google/googlenav/aW;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_13
    move v0, v1

    .line 140
    :goto_14
    return v0

    .line 129
    :cond_15
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    .line 130
    if-nez v0, :cond_28

    move v0, v1

    .line 131
    goto :goto_14

    .line 133
    :cond_28
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    invoke-virtual {v0}, Lcom/google/googlenav/ba;->c()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v2

    .line 136
    if-nez v2, :cond_3e

    move v0, v1

    .line 137
    goto :goto_14

    .line 139
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, LaM/cg;->E:Ljava/lang/String;

    .line 154
    iput-object p2, p0, LaM/cg;->F:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 155
    return-void
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bA;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bA;-><init>(LaM/bj;)V

    iput-object v0, p0, LaM/cg;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 59
    return-void
.end method

.method public d(Lcom/google/googlenav/aW;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, LaM/cg;->i(Lcom/google/googlenav/aW;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    const/16 v0, 0x2fb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_c
    return-object v0

    :cond_d
    const/16 v0, 0x480

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->a(LaM/m;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public h()V
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, LaM/cg;->o()B

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 95
    :pswitch_7
    invoke-super {p0}, LaM/bj;->h()V

    .line 97
    :goto_a
    return-void

    .line 81
    :pswitch_b
    iget-object v0, p0, LaM/cg;->F:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_13

    .line 82
    invoke-direct {p0}, LaM/cg;->bS()V

    goto :goto_a

    .line 84
    :cond_13
    invoke-direct {p0}, LaM/cg;->bT()V

    goto :goto_a

    .line 90
    :pswitch_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/cg;->i(Z)V

    .line 91
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaM/cg;->a(B)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/cg;->i(Z)V

    goto :goto_a

    .line 78
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_7
        :pswitch_17
        :pswitch_b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserReviewsLayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaM/cg;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
