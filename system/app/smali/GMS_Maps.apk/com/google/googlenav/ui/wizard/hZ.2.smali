.class public Lcom/google/googlenav/ui/wizard/hZ;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:LaM/m;

.field private i:Lcom/google/googlenav/J;

.field private j:LaM/am;

.field private k:LaM/bj;

.field private l:Lcom/google/googlenav/F;

.field private m:B

.field private n:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 60
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 7

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->a:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hZ;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 79
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    .line 80
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    .line 81
    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hZ;->j:LaM/am;

    .line 82
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hZ;->a()V

    move-object v0, p0

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/hZ;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;Lcom/google/googlenav/J;LaM/am;)V

    .line 84
    return-void
.end method

.method public a(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 194
    instance-of v0, p1, LaM/cg;

    if-eqz v0, :cond_10

    .line 195
    check-cast p1, LaM/cg;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v0, v1}, LaM/cg;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hZ;->a()V

    .line 198
    :cond_10
    return-void
.end method

.method public a(Lcom/google/googlenav/aV;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    const/16 v0, 0x6f

    const-string v1, "uc"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 139
    new-instance v0, Lcom/google/googlenav/ba;

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/aV;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/google/googlenav/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/google/googlenav/aZ;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/googlenav/aV;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v0}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x5f9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/bd;->k(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    instance-of v0, v0, LaM/bj;

    if-eqz v0, :cond_a9

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    check-cast v0, LaM/bj;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->l:Lcom/google/googlenav/F;

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->l:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    iput-byte v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->m:B

    .line 164
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->l:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->n:I

    .line 165
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->j:LaM/am;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    invoke-virtual {v0, v2}, LaM/am;->g(LaM/i;)V

    .line 170
    :cond_a9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    if-eqz v0, :cond_b2

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 173
    :cond_b2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;Lcom/google/googlenav/J;LaM/am;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hZ;->a:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hZ;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 69
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    .line 70
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    .line 71
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/hZ;->j:LaM/am;

    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hZ;->j()V

    .line 73
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 89
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bK;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hZ;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/bK;-><init>(Lcom/google/googlenav/ui/wizard/hZ;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 91
    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 5
    .parameter

    .prologue
    .line 179
    const/16 v0, 0x6f

    const-string v1, "up"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    if-eqz v0, :cond_17

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->l()Lcom/google/googlenav/L;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/aV;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Lcom/google/googlenav/android/R;)V

    .line 188
    :cond_17
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->a:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 98
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    .line 99
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->i:Lcom/google/googlenav/J;

    .line 100
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->j:LaM/am;

    .line 101
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 102
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->c:LaM/m;

    invoke-virtual {v0}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    const/4 v0, 0x1

    .line 114
    :goto_13
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->j:LaM/am;

    if-eqz v1, :cond_42

    if-nez v0, :cond_42

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->j:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    invoke-virtual {v0, v1}, LaM/am;->e(LaM/i;)V

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->l:Lcom/google/googlenav/F;

    invoke-virtual {v0, v1}, LaM/bj;->b(Lcom/google/googlenav/F;)V

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->l:Lcom/google/googlenav/F;

    iget-byte v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->m:B

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/hZ;->n:I

    invoke-virtual {v0, v1}, LaM/bj;->b(I)V

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->y()V

    .line 125
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/hZ;->k:LaM/bj;

    .line 126
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/hZ;->l:Lcom/google/googlenav/F;

    .line 128
    :cond_42
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hZ;->a()V

    .line 129
    return-void

    .line 108
    :cond_46
    const/4 v0, 0x0

    goto :goto_13
.end method
