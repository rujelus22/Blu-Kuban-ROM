.class public Lad/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/E;
.implements Lcom/google/googlenav/common/util/n;


# instance fields
.field protected a:Lad/a;

.field private b:Lad/t;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lat/B;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lad/t;IIILat/B;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lad/m;->i:Z

    .line 69
    iput-object p1, p0, Lad/m;->b:Lad/t;

    .line 70
    iput p2, p0, Lad/m;->e:I

    .line 71
    iput p3, p0, Lad/m;->c:I

    .line 72
    iput p4, p0, Lad/m;->d:I

    .line 73
    iput-object p5, p0, Lad/m;->f:Lat/B;

    .line 74
    iput-object p6, p0, Lad/m;->g:Ljava/lang/String;

    .line 75
    iput v0, p0, Lad/m;->h:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lad/m;->a:Lad/a;

    .line 77
    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lad/m;->f:Lat/B;

    return-object v0
.end method

.method public a(Lat/B;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lad/m;->f:Lat/B;

    .line 94
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-boolean p1, p0, Lad/m;->i:Z

    .line 188
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lad/m;->b:Lad/t;

    invoke-virtual {v0}, Lad/t;->h()Ln/B;

    move-result-object v0

    .line 86
    if-nez v0, :cond_d

    .line 87
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 89
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_c
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lad/m;->h:I

    .line 164
    return-void
.end method

.method public c()B
    .registers 4

    .prologue
    const/4 v0, 0x3

    .line 97
    iget v1, p0, Lad/m;->e:I

    if-nez v1, :cond_c

    iget v1, p0, Lad/m;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    .line 98
    const/4 v0, 0x4

    .line 102
    :cond_b
    :goto_b
    return v0

    .line 99
    :cond_c
    iget v1, p0, Lad/m;->c:I

    if-ne v1, v0, :cond_b

    .line 100
    const/4 v0, 0x5

    goto :goto_b
.end method

.method public d()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 195
    return-object p0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lad/m;->b:Lad/t;

    invoke-virtual {v0}, Lad/t;->G()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    .line 200
    iget-object v1, p0, Lad/m;->g:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 201
    iget-object v1, p0, Lad/m;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_13
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "DirectionsFeature"

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public k()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lad/m;->c:I

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lad/m;->d:I

    return v0
.end method

.method public m()Lad/t;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lad/m;->b:Lad/t;

    return-object v0
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lad/m;->b:Lad/t;

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public o()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lad/m;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public p()Z
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lad/m;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lad/m;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public r()Z
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Lad/m;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public s()Z
    .registers 3

    .prologue
    .line 143
    iget v0, p0, Lad/m;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lad/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lad/m;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lad/m;->a:Lad/a;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lad/m;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public w()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lad/m;->h:I

    return v0
.end method

.method public x()Z
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lad/m;->h:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public y()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lad/m;->e:I

    return v0
.end method

.method public z()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lad/m;->i:Z

    return v0
.end method
