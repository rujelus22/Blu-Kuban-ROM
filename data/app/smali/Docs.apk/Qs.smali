.class LQs;
.super Ljava/lang/Object;
.source "SharingInfoManagerImpl.java"

# interfaces
.implements LQm;


# instance fields
.field final synthetic a:LQp;

.field private a:LQr;

.field private a:Ldv;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation
.end field

.field private volatile a:Z

.field private final b:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldq;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(LQp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, LQs;->a:LQp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, LQs;->e:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LQs;->b:Ljava/util/List;

    .line 71
    iput-object p2, p0, LQs;->c:Ljava/lang/String;

    .line 72
    iput-object p3, p0, LQs;->a:Ljava/lang/String;

    .line 73
    iput-object p4, p0, LQs;->b:Ljava/lang/String;

    .line 74
    invoke-static {p2}, LQF;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQs;->e:Ljava/lang/String;

    .line 75
    new-instance v0, LQr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQr;-><init>(LQq;)V

    iput-object v0, p0, LQs;->a:LQr;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LQs;->a:Ljava/util/List;

    .line 77
    return-void
.end method

.method static synthetic a(LQs;Ljava/util/Set;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, LQs;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, LQs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    new-instance v0, LQr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQr;-><init>(LQq;)V

    iput-object v0, p0, LQs;->a:LQr;

    .line 131
    sget-object v0, Ldv;->n:Ldv;

    iput-object v0, p0, LQs;->a:Ldv;

    .line 132
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldq;

    .line 133
    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v2

    sget-object v3, Ldx;->b:Ldx;

    if-eq v2, v3, :cond_4c

    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v2

    sget-object v3, Ldx;->a:Ldx;

    if-eq v2, v3, :cond_4c

    .line 134
    invoke-virtual {v0}, Ldq;->a()Ldv;

    move-result-object v2

    iput-object v2, p0, LQs;->a:Ldv;

    .line 135
    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LQs;->f:Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v2

    sget-object v3, Ldx;->c:Ldx;

    if-ne v2, v3, :cond_15

    .line 137
    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQs;->d:Ljava/lang/String;

    goto :goto_15

    .line 140
    :cond_4c
    iget-object v2, p0, LQs;->a:LQp;

    iget-object v2, v2, LQp;->a:LPj;

    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v4

    invoke-interface {v2, v3, v4}, LPj;->a(Ljava/lang/String;Ldx;)LPh;

    move-result-object v2

    .line 142
    iget-object v3, p0, LQs;->a:LQr;

    new-instance v4, LQC;

    new-instance v5, LQl;

    invoke-direct {v5, v0}, LQl;-><init>(Ldq;)V

    invoke-direct {v4, v2, v5}, LQC;-><init>(LPh;LQl;)V

    invoke-virtual {v3, v4}, LQr;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0}, Ldq;->a()Ldw;

    move-result-object v2

    sget-object v3, Ldw;->a:Ldw;

    if-ne v2, v3, :cond_15

    iget-object v2, p0, LQs;->d:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 144
    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQF;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQs;->d:Ljava/lang/String;

    goto :goto_15

    .line 148
    :cond_82
    iget-object v0, p0, LQs;->a:LQr;

    new-instance v1, LHU;

    invoke-direct {v1}, LHU;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    iget-object v0, p0, LQs;->a:Ldv;

    sget-object v1, Ldv;->n:Ldv;

    if-ne v0, v1, :cond_9c

    invoke-virtual {p0}, LQs;->b()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 151
    sget-object v0, Ldv;->m:Ldv;

    iput-object v0, p0, LQs;->a:Ldv;

    .line 153
    :cond_9c
    iget-object v0, p0, LQs;->a:LQr;

    iput-object v0, p0, LQs;->a:Ljava/util/List;

    .line 154
    return-void
.end method

.method static synthetic a(LQs;)Z
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, LQs;->a:Z

    return v0
.end method

.method static synthetic a(LQs;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, LQs;->b:Z

    return p1
.end method

.method private d()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 247
    iget-object v0, p0, LQs;->a:LQr;

    invoke-virtual {v0}, LQr;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 248
    invoke-virtual {v0}, LQC;->a()Ldq;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v3

    sget-object v4, Ldx;->a:Ldx;

    if-eq v3, v4, :cond_27

    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v3

    sget-object v4, Ldx;->b:Ldx;

    if-ne v3, v4, :cond_7

    .line 250
    :cond_27
    invoke-virtual {v0}, Ldq;->a()Ldw;

    move-result-object v3

    sget-object v4, Ldw;->a:Ldw;

    if-ne v3, v4, :cond_3d

    .line 251
    iget-object v3, p0, LQs;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 260
    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    .line 256
    goto :goto_3c

    .line 260
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3c
.end method


# virtual methods
.method public a(Ljava/lang/String;)LQC;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0}, LQs;->a()Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 326
    if-nez v0, :cond_24

    move-object v2, v1

    .line 327
    :goto_18
    if-nez v2, :cond_29

    move-object v2, v1

    .line 328
    :goto_1b
    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 333
    :goto_23
    return-object v0

    .line 326
    :cond_24
    invoke-virtual {v0}, LQC;->a()LPh;

    move-result-object v2

    goto :goto_18

    .line 327
    :cond_29
    invoke-interface {v2}, LPh;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_2e
    move-object v0, v1

    goto :goto_23
.end method

.method public a()Ldv;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, LQs;->a:Ldv;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, LQs;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, LQs;->a:LQr;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, LQs;->a:Z

    .line 125
    iget-object v0, p0, LQs;->a:LQp;

    iget-object v0, v0, LQp;->a:LOR;

    invoke-interface {v0}, LOR;->a()V

    .line 126
    return-void
.end method

.method public a(LQn;)V
    .registers 6
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LQs;->a:LQp;

    iget-object v0, v0, LQp;->a:Landroid/content/Context;

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 82
    invoke-interface {p1}, LQn;->b()V

    .line 120
    :goto_d
    return-void

    .line 85
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, LQs;->a:Z

    .line 86
    iget-object v0, p0, LQs;->a:LQp;

    iget-object v0, v0, LQp;->a:LOR;

    iget-object v1, p0, LQs;->c:Ljava/lang/String;

    iget-object v2, p0, LQs;->a:Ljava/lang/String;

    new-instance v3, LQt;

    invoke-direct {v3, p0, p1}, LQt;-><init>(LQs;LQn;)V

    invoke-interface {v0, v1, v2, v3}, LOR;->a(Ljava/lang/String;Ljava/lang/String;LOS;)V

    goto :goto_d
.end method

.method public a(Ldq;)V
    .registers 3
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, LQs;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public a(Ldv;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, LQs;->a:Ldv;

    .line 304
    return-void
.end method

.method public a()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, LQs;->a:LQr;

    if-nez v0, :cond_f

    .line 208
    const-string v0, "SharingWorkflowImpl"

    const-string v2, "ACL modification tested while ACL is null."

    invoke-static {v0, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 219
    :goto_e
    return v0

    .line 211
    :cond_f
    iget-object v0, p0, LQs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    move v0, v2

    .line 212
    goto :goto_e

    .line 214
    :cond_19
    iget-object v0, p0, LQs;->a:LQr;

    invoke-virtual {v0}, LQr;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 215
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    .line 216
    goto :goto_e

    :cond_37
    move v0, v1

    .line 219
    goto :goto_e
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, LQs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, LQs;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()V
    .registers 7

    .prologue
    .line 265
    new-instance v1, LQr;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LQr;-><init>(LQq;)V

    .line 266
    iget-object v0, p0, LQs;->a:LQr;

    invoke-virtual {v0}, LQr;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 267
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v3

    .line 268
    iget-object v4, p0, LQs;->a:LQp;

    iget-object v4, v4, LQp;->a:LPj;

    invoke-virtual {v0}, LQC;->a()LPh;

    move-result-object v0

    invoke-interface {v0}, LPh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, LQl;->a()Ldx;

    move-result-object v5

    invoke-interface {v4, v0, v5}, LPj;->a(Ljava/lang/String;Ldx;)LPh;

    move-result-object v0

    .line 270
    new-instance v4, LQC;

    invoke-direct {v4, v0, v3}, LQC;-><init>(LPh;LQl;)V

    invoke-virtual {v1, v4}, LQr;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 272
    :cond_39
    iput-object v1, p0, LQs;->a:LQr;

    .line 273
    iget-object v0, p0, LQs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    return-void
.end method

.method public b(LQn;)V
    .registers 6
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, LQs;->a:LQp;

    iget-object v0, v0, LQp;->a:Landroid/content/Context;

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 162
    invoke-interface {p1}, LQn;->b()V

    .line 203
    :goto_d
    return-void

    .line 165
    :cond_e
    invoke-virtual {p0}, LQs;->a()Z

    move-result v0

    if-nez v0, :cond_18

    .line 166
    invoke-interface {p1}, LQn;->a()V

    goto :goto_d

    .line 169
    :cond_18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 170
    iget-object v0, p0, LQs;->a:LQr;

    invoke-virtual {v0}, LQr;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 171
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v3

    invoke-virtual {v3}, LQl;->a()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 172
    invoke-virtual {v0}, LQC;->a()Ldq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 177
    :cond_41
    iget-object v0, p0, LQs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldq;

    .line 178
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 180
    :cond_57
    iget-object v0, p0, LQs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, LQs;->a:LQp;

    iget-object v0, v0, LQp;->a:LOR;

    iget-object v2, p0, LQs;->c:Ljava/lang/String;

    new-instance v3, LQw;

    invoke-direct {v3, p0, p1}, LQw;-><init>(LQs;LQn;)V

    invoke-interface {v0, v2, v1, v3}, LOR;->a(Ljava/lang/String;Ljava/util/Set;LOS;)V

    goto :goto_d
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 224
    iget-object v2, p0, LQs;->a:LQr;

    invoke-virtual {v2}, LQr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 243
    :cond_a
    :goto_a
    return v0

    .line 227
    :cond_b
    invoke-direct {p0}, LQs;->d()Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 228
    goto :goto_a

    .line 230
    :cond_13
    sget-object v2, LQq;->a:[I

    iget-object v3, p0, LQs;->a:Ldv;

    invoke-virtual {v3}, Ldv;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    goto :goto_a

    :pswitch_21
    move v0, v1

    .line 233
    goto :goto_a

    .line 236
    :pswitch_23
    iget-object v2, p0, LQs;->e:Ljava/lang/String;

    iget-object v3, p0, LQs;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 237
    goto :goto_a

    .line 230
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, LQs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, LQs;->b:Z

    return v0
.end method
