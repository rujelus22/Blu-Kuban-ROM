.class public Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Lr/aH;

.field private c:Lr/K;

.field private d:Ln/aa;

.field private e:Ln/am;

.field private f:Ln/am;


# direct methods
.method public constructor <init>(Lr/aH;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lq/b;->b:Lr/aH;

    .line 88
    new-instance v0, Lr/K;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lr/K;-><init>(I)V

    iput-object v0, p0, Lq/b;->c:Lr/K;

    .line 89
    sput-boolean p2, Lq/b;->a:Z

    .line 90
    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 206
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 208
    iget-object v3, p0, Lq/b;->c:Lr/K;

    invoke-virtual {v3, v0}, Lr/K;->c(Ln/am;)Ln/al;

    move-result-object v3

    .line 209
    if-nez v3, :cond_2e

    .line 211
    iget-object v3, p0, Lq/b;->b:Lr/aH;

    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_2e

    .line 213
    iget-object v5, p0, Lq/b;->c:Lr/K;

    invoke-virtual {v5, v0, v3}, Lr/K;->a(Ln/am;Ln/al;)V

    .line 216
    :cond_2e
    if-eqz v3, :cond_3d

    .line 217
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    add-int/lit8 v2, v2, -0x1

    .line 206
    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 222
    :cond_3d
    const-string v3, "RoadGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetTiles: couldn\'t load tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 225
    :cond_56
    if-nez p2, :cond_a4

    .line 226
    new-instance v1, Lr/a;

    invoke-direct {v1, v2}, Lr/a;-><init>(I)V

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 229
    if-eqz v0, :cond_61

    .line 230
    iget-object v3, p0, Lq/b;->b:Lr/aH;

    invoke-interface {v3, v0, v1}, Lr/aH;->a(Ln/am;Lr/aF;)V

    goto :goto_61

    .line 234
    :cond_75
    const-wide/16 v2, 0x4e20

    :try_start_77
    invoke-virtual {v1, v2, v3}, Lr/a;->a(J)Z
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_9b

    .line 238
    :goto_7a
    invoke-virtual {v1}, Lr/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    .line 239
    iget-object v2, p0, Lq/b;->c:Lr/K;

    invoke-interface {v0}, Ln/al;->d()Ln/am;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lr/K;->a(Ln/am;Ln/al;)V

    .line 240
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 235
    :catch_9b
    move-exception v0

    .line 236
    const-string v0, "RoadGraph"

    const-string v2, "Interupted while waiting for tiles"

    invoke-static {v0, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 243
    :cond_a4
    return-object v4
.end method


# virtual methods
.method public a(Ln/Q;D)Ljava/util/Iterator;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    double-to-int v0, p2

    invoke-static {p1, v0}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    .line 130
    iget-object v2, p0, Lq/b;->d:Ln/aa;

    if-eqz v2, :cond_14

    .line 131
    iget-object v2, p0, Lq/b;->d:Ln/aa;

    invoke-virtual {v0, v2}, Ln/aa;->c(Ln/aa;)Ln/aa;

    move-result-object v0

    .line 133
    :cond_14
    invoke-static {v0}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v0

    const/16 v2, 0xe

    invoke-static {v0, v2}, Ln/am;->a(Ln/aL;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    sget-boolean v2, Lq/b;->a:Z

    invoke-direct {p0, v0, v2}, Lq/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    .line 138
    check-cast v0, Lq/d;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 140
    :cond_3a
    new-instance v0, Lq/c;

    invoke-direct {v0, v1}, Lq/c;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lq/e;)Lq/e;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x2

    .line 160
    invoke-virtual {p1}, Lq/e;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lq/e;->b(I)Ln/Q;

    move-result-object v4

    .line 161
    invoke-virtual {p1}, Lq/e;->e()Ln/Q;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v6

    if-le v0, v6, :cond_90

    move v0, v1

    .line 166
    :goto_1c
    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v6

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v4

    if-le v6, v4, :cond_92

    .line 167
    :goto_26
    new-instance v2, Ln/Q;

    invoke-direct {v2, v0, v1}, Ln/Q;-><init>(II)V

    invoke-virtual {v5, v2}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    invoke-static {v5, v0}, Ln/aa;->a(Ln/Q;Ln/Q;)Ln/aa;

    move-result-object v0

    invoke-static {v0}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v0

    .line 169
    const/16 v1, 0xe

    invoke-static {v0, v1}, Ln/am;->a(Ln/aL;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lq/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    .line 173
    invoke-interface {v0}, Ln/al;->d()Ln/am;

    move-result-object v4

    .line 174
    iget-object v5, p0, Lq/b;->f:Ln/am;

    if-eqz v5, :cond_94

    iget-object v5, p0, Lq/b;->e:Ln/am;

    if-eqz v5, :cond_94

    invoke-virtual {v4}, Ln/am;->c()I

    move-result v5

    iget-object v6, p0, Lq/b;->f:Ln/am;

    invoke-virtual {v6}, Ln/am;->c()I

    move-result v6

    if-gt v5, v6, :cond_8e

    invoke-virtual {v4}, Ln/am;->c()I

    move-result v5

    iget-object v6, p0, Lq/b;->e:Ln/am;

    invoke-virtual {v6}, Ln/am;->c()I

    move-result v6

    if-lt v5, v6, :cond_8e

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v5

    iget-object v6, p0, Lq/b;->f:Ln/am;

    invoke-virtual {v6}, Ln/am;->d()I

    move-result v6

    if-gt v5, v6, :cond_8e

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v4

    iget-object v5, p0, Lq/b;->e:Ln/am;

    invoke-virtual {v5}, Ln/am;->d()I

    move-result v5

    if-ge v4, v5, :cond_94

    :cond_8e
    move-object v0, v3

    .line 189
    :goto_8f
    return-object v0

    :cond_90
    move v0, v2

    .line 165
    goto :goto_1c

    :cond_92
    move v1, v2

    .line 166
    goto :goto_26

    .line 185
    :cond_94
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    .line 186
    check-cast v0, Lq/d;

    invoke-virtual {v0, p1}, Lq/d;->a(Lq/e;)Lq/e;

    move-result-object v0

    goto :goto_8f

    :cond_a1
    move-object v0, v3

    .line 189
    goto :goto_8f
.end method

.method public a(Ln/aa;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 100
    iput-object p1, p0, Lq/b;->d:Ln/aa;

    .line 101
    iget-object v0, p0, Lq/b;->d:Ln/aa;

    if-nez v0, :cond_e

    .line 102
    iput-object v2, p0, Lq/b;->f:Ln/am;

    .line 103
    iput-object v2, p0, Lq/b;->e:Ln/am;

    .line 110
    :goto_d
    return-void

    .line 105
    :cond_e
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    invoke-static {v3, v0, v1, v2}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v0

    iput-object v0, p0, Lq/b;->e:Ln/am;

    .line 107
    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v0, v1, v2}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v0

    iput-object v0, p0, Lq/b;->f:Ln/am;

    goto :goto_d
.end method
