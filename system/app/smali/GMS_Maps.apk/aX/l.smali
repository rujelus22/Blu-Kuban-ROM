.class public Lax/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lax/l;


# instance fields
.field private b:Lax/M;

.field private c:Lax/F;

.field private d:Lax/m;

.field private e:Lax/m;

.field private f:Lax/m;

.field private g:Lax/m;

.field private h:Lax/m;

.field private i:Lax/m;

.field private j:Lax/m;

.field private k:[Lax/m;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lax/l;->c(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 54
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 55
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lax/l;->e:Lax/m;

    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 56
    iget-object v0, p0, Lax/l;->f:Lax/m;

    if-eqz v0, :cond_26

    .line 57
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lax/l;->f:Lax/m;

    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 60
    :cond_26
    return-void
.end method

.method public static a()Lax/l;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lax/l;->a:Lax/l;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/wizard/ju;)Lax/l;
    .registers 2
    .parameter

    .prologue
    .line 75
    sget-object v0, Lax/l;->a:Lax/l;

    if-nez v0, :cond_18

    .line 76
    const-string v0, "MyPlacesContext.MyPlacesContext"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lax/l;

    invoke-direct {v0, p0}, Lax/l;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    sput-object v0, Lax/l;->a:Lax/l;

    .line 78
    const-string v0, "MyPlacesContext.MyPlacesContext"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 82
    :cond_15
    :goto_15
    sget-object v0, Lax/l;->a:Lax/l;

    return-object v0

    .line 79
    :cond_18
    if-eqz p0, :cond_15

    .line 80
    sget-object v0, Lax/l;->a:Lax/l;

    invoke-direct {v0, p0}, Lax/l;->b(Lcom/google/googlenav/ui/wizard/ju;)V

    goto :goto_15
.end method

.method private b(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lax/l;->e:Lax/m;

    invoke-interface {v0, p1}, Lax/m;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 264
    iget-object v0, p0, Lax/l;->f:Lax/m;

    if-eqz v0, :cond_e

    .line 265
    iget-object v0, p0, Lax/l;->f:Lax/m;

    invoke-interface {v0, p1}, Lax/m;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 267
    :cond_e
    iget-object v0, p0, Lax/l;->d:Lax/m;

    if-eqz v0, :cond_17

    .line 268
    iget-object v0, p0, Lax/l;->d:Lax/m;

    invoke-interface {v0, p1}, Lax/m;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 270
    :cond_17
    iget-object v0, p0, Lax/l;->b:Lax/M;

    invoke-virtual {v0, p1}, Lax/M;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 271
    return-void
.end method

.method private c(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 9
    .parameter

    .prologue
    .line 274
    new-instance v0, Lax/M;

    invoke-direct {v0, p1}, Lax/M;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lax/l;->b:Lax/M;

    .line 275
    new-instance v0, Lax/F;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lax/F;-><init>(Lcom/google/googlenav/common/io/j;)V

    iput-object v0, p0, Lax/l;->c:Lax/F;

    .line 276
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/go;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->e:Lax/m;

    .line 283
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/4 v4, 0x3

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/eq;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->f:Lax/m;

    .line 291
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/16 v4, 0x8

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/es;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->d:Lax/m;

    .line 298
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/4 v4, 0x7

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/eq;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->i:Lax/m;

    .line 305
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/4 v4, 0x5

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/eq;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->g:Lax/m;

    .line 312
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/4 v4, 0x4

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/eq;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->h:Lax/m;

    .line 319
    new-instance v0, Lax/o;

    iget-object v2, p0, Lax/l;->b:Lax/M;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    const/4 v4, 0x6

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/eq;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v6, p0, Lax/l;->c:Lax/F;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lax/o;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V

    iput-object v0, p0, Lax/l;->j:Lax/m;

    .line 328
    invoke-direct {p0}, Lax/l;->n()V

    .line 329
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 332
    const/4 v0, 0x7

    new-array v0, v0, [Lax/m;

    const/4 v1, 0x0

    iget-object v2, p0, Lax/l;->e:Lax/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lax/l;->f:Lax/m;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lax/l;->h:Lax/m;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lax/l;->g:Lax/m;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lax/l;->i:Lax/m;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lax/l;->d:Lax/m;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lax/l;->j:Lax/m;

    aput-object v2, v0, v1

    .line 341
    iput-object v0, p0, Lax/l;->k:[Lax/m;

    .line 342
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lax/A;
    .registers 4
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lax/l;->k:[Lax/m;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 230
    iget-object v1, p0, Lax/l;->k:[Lax/m;

    aget-object v1, v1, v0

    .line 231
    if-nez v1, :cond_f

    .line 229
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_f
    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-interface {v1, p1}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 239
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public b()Lax/U;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lax/l;->b:Lax/M;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 250
    move v0, v1

    :goto_2
    iget-object v2, p0, Lax/l;->k:[Lax/m;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 251
    iget-object v2, p0, Lax/l;->k:[Lax/m;

    aget-object v2, v2, v0

    .line 252
    if-nez v2, :cond_10

    .line 250
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_10
    invoke-interface {v2}, Lax/m;->g()Lax/r;

    move-result-object v2

    invoke-interface {v2, p1}, Lax/r;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 256
    const/4 v1, 0x1

    .line 259
    :cond_1b
    return v1
.end method

.method public c()Lax/L;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lax/l;->b:Lax/M;

    return-object v0
.end method

.method public d()[Lax/m;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lax/l;->k:[Lax/m;

    return-object v0
.end method

.method public e()Lax/m;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lax/l;->d:Lax/m;

    return-object v0
.end method

.method public f()Lax/m;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lax/l;->e:Lax/m;

    return-object v0
.end method

.method public g()Lax/m;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lax/l;->f:Lax/m;

    return-object v0
.end method

.method public h()Lax/m;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lax/l;->h:Lax/m;

    return-object v0
.end method

.method public i()Lax/m;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lax/l;->g:Lax/m;

    return-object v0
.end method

.method public j()Lax/m;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lax/l;->i:Lax/m;

    return-object v0
.end method

.method public k()Lax/m;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lax/l;->j:Lax/m;

    return-object v0
.end method

.method public l()Lax/F;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lax/l;->c:Lax/F;

    return-object v0
.end method

.method public m()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lax/l;->b:Lax/M;

    invoke-virtual {v0}, Lax/M;->h()V

    .line 218
    return-void
.end method
