.class public Lcom/google/googlenav/ui/wizard/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/gg;

.field private final b:Lcom/google/googlenav/ui/wizard/fU;

.field private final c:Lcom/google/googlenav/ui/wizard/gf;

.field private d:Lcom/google/googlenav/ui/wizard/fH;

.field private e:Lcom/google/googlenav/ui/wizard/fL;

.field private f:Z

.field private final g:Lcom/google/googlenav/ui/wizard/ju;

.field private h:Lcom/google/googlenav/aU;

.field private final i:Lcom/google/googlenav/ui/ap;

.field private j:Lcom/google/googlenav/ui/wizard/aK;

.field private final k:Lan/s;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/ap;Lan/s;Lcom/google/googlenav/ui/wizard/gg;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gb;->f:Z

    .line 141
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gb;->g:Lcom/google/googlenav/ui/wizard/ju;

    .line 142
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gb;->i:Lcom/google/googlenav/ui/ap;

    .line 143
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/gb;->a:Lcom/google/googlenav/ui/wizard/gg;

    .line 147
    new-instance v0, Lcom/google/googlenav/ui/wizard/gd;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gd;-><init>(Lcom/google/googlenav/ui/wizard/gb;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->b:Lcom/google/googlenav/ui/wizard/fU;

    .line 149
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gb;->k:Lan/s;

    .line 153
    new-instance v0, Lcom/google/googlenav/ui/wizard/gf;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/gf;-><init>(Lcom/google/googlenav/ui/wizard/gb;Lcom/google/googlenav/ui/wizard/gc;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->c:Lcom/google/googlenav/ui/wizard/gf;

    .line 157
    new-instance v0, Lcom/google/googlenav/ui/wizard/fH;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/fH;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->c:Lcom/google/googlenav/ui/wizard/gf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fH;->a(Lcom/google/googlenav/ui/wizard/fJ;)V

    .line 160
    invoke-virtual {p2}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    .line 165
    new-instance v2, Lcom/google/googlenav/ui/wizard/aK;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/aK;-><init>(Lan/h;Lcom/google/googlenav/android/Y;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gb;->j:Lcom/google/googlenav/ui/wizard/aK;

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gb;Lcom/google/googlenav/aU;)Lcom/google/googlenav/aU;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gb;->h:Lcom/google/googlenav/aU;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->a:Lcom/google/googlenav/ui/wizard/gg;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/aU;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->h:Lcom/google/googlenav/aU;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/ap;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->i:Lcom/google/googlenav/ui/ap;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/fL;->a(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->j:Lcom/google/googlenav/ui/wizard/aK;

    new-instance v1, Lcom/google/googlenav/ui/wizard/gh;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/gh;-><init>(Lcom/google/googlenav/ui/wizard/gb;Lcom/google/googlenav/ui/wizard/gc;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aK;->a(Lan/y;)V

    .line 223
    return-void
.end method

.method private d()Lan/s;
    .registers 6

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->i:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->b()Lan/s;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2f

    .line 257
    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->g:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/gb;)Lan/s;
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gb;->d()Lan/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fH;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/fU;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->b:Lcom/google/googlenav/ui/wizard/fU;

    return-object v0
.end method

.method public a(Lan/s;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gb;->f:Z

    .line 191
    if-nez p1, :cond_a

    .line 192
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gb;->c()V

    .line 199
    :goto_9
    return-void

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/fL;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    invoke-virtual {p1}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {p1}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/fH;->a(II)V

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    invoke-virtual {v0, p1, v3}, Lcom/google/googlenav/ui/wizard/fH;->a(Lan/s;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a(Lcom/google/googlenav/ui/wizard/fL;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    .line 176
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->k:Lan/s;

    .line 231
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->k:Lan/s;

    if-nez v1, :cond_a

    .line 232
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gb;->d()Lan/s;

    move-result-object v0

    .line 235
    :cond_a
    if-nez v0, :cond_14

    .line 236
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(I)V

    .line 243
    :goto_13
    return-void

    .line 238
    :cond_14
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/fL;->a(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fH;->a(II)V

    .line 241
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->d:Lcom/google/googlenav/ui/wizard/fH;

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/ui/wizard/fH;->a(Lan/s;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/fL;->l()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/fL;->n()Z

    move-result v1

    if-nez v1, :cond_12

    .line 216
    :cond_11
    :goto_11
    return v0

    .line 211
    :cond_12
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/gb;->f:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/fL;->n()Z

    move-result v1

    if-nez v1, :cond_11

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fL;->i()V

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gb;->e:Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fL;->m()V

    .line 214
    const/4 v0, 0x1

    goto :goto_11
.end method
