.class public Lax/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/m;
.implements Lax/z;
.implements Lcom/google/googlenav/g;


# instance fields
.field private final a:I

.field private final b:Lax/L;

.field private c:Lac/h;

.field private final d:Ljava/util/List;

.field private e:Lcom/google/googlenav/ui/wizard/ju;

.field private f:Lax/r;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lax/L;Lac/h;ILcom/google/googlenav/common/io/protocol/ProtoBufType;Lax/F;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lax/o;->d:Ljava/util/List;

    .line 64
    iput-boolean v1, p0, Lax/o;->g:Z

    .line 67
    iput-boolean v1, p0, Lax/o;->h:Z

    .line 74
    iput-boolean v1, p0, Lax/o;->i:Z

    .line 83
    iput-object p1, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    .line 84
    iput-object p2, p0, Lax/o;->b:Lax/L;

    .line 85
    iput-object p3, p0, Lax/o;->c:Lac/h;

    .line 86
    iput p4, p0, Lax/o;->a:I

    .line 88
    iget-object v0, p0, Lax/o;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0, p6, p5}, Lax/o;->a(Lax/F;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 90
    return-void
.end method

.method private a(Lax/F;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lax/o;->a:I

    iget-object v1, p0, Lax/o;->b:Lax/L;

    iget v2, p0, Lax/o;->a:I

    invoke-interface {v1, v2}, Lax/L;->a(I)Lax/N;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lax/s;->a(ILax/N;Lax/F;)Lax/s;

    move-result-object v0

    iput-object v0, p0, Lax/o;->f:Lax/r;

    .line 98
    iget-object v0, p0, Lax/o;->f:Lax/r;

    invoke-interface {v0, p0}, Lax/r;->a(Lax/z;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lax/o;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lax/o;->h()V

    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 308
    iput-boolean v1, p0, Lax/o;->h:Z

    .line 309
    iget-boolean v0, p0, Lax/o;->g:Z

    if-eqz v0, :cond_e

    .line 310
    iput-boolean v1, p0, Lax/o;->g:Z

    .line 311
    iget-object v0, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 313
    :cond_e
    iget-object v0, p0, Lax/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 314
    invoke-interface {v0}, Las/h;->D_()V

    goto :goto_14

    .line 316
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/o;->i:Z

    .line 317
    return-void
.end method


# virtual methods
.method public B_()V
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_18

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/o;->g:Z

    .line 277
    iget-object v0, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x582

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bf

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    .line 280
    :cond_18
    return-void
.end method

.method public D_()V
    .registers 4

    .prologue
    .line 289
    iget-boolean v0, p0, Lax/o;->h:Z

    if-eqz v0, :cond_5

    .line 305
    :goto_4
    return-void

    .line 293
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/o;->h:Z

    .line 294
    iget-object v0, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 295
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lax/q;

    invoke-direct {v2, p0}, Lax/q;-><init>(Lax/o;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_4

    .line 303
    :cond_24
    invoke-direct {p0}, Lax/o;->h()V

    goto :goto_4
.end method

.method public E_()V
    .registers 3

    .prologue
    .line 321
    iget-boolean v0, p0, Lax/o;->g:Z

    if-eqz v0, :cond_c

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/o;->g:Z

    .line 323
    iget-object v0, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 325
    :cond_c
    iget-object v0, p0, Lax/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 326
    invoke-interface {v0}, Las/h;->E_()V

    goto :goto_12

    .line 328
    :cond_22
    return-void
.end method

.method public F_()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 365
    .line 366
    invoke-virtual {p0}, Lax/o;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0}, Lax/r;->a()Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    .line 368
    invoke-virtual {v0}, Lax/A;->n()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 369
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    goto :goto_e

    .line 372
    :cond_24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "v="

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    const/16 v1, 0x9

    const-string v2, "s"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    :cond_4d
    move v0, v1

    goto :goto_22
.end method

.method public L_()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lax/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 345
    invoke-interface {v0}, Las/h;->L_()V

    goto :goto_6

    .line 349
    :cond_16
    iget-boolean v0, p0, Lax/o;->i:Z

    if-eqz v0, :cond_24

    .line 350
    invoke-virtual {p0}, Lax/o;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0}, Lax/r;->c()V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/o;->i:Z

    .line 353
    :cond_24
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 358
    return-void
.end method

.method public a(Lax/A;Lax/E;LaM/am;Ljava/lang/String;)Lax/A;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lax/o;->g()Lax/r;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lax/A;->n()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 231
    invoke-virtual {v0, v4}, Lax/A;->a(Z)V

    .line 232
    invoke-interface {v1, v0}, Lax/r;->a(Lax/A;)Z

    .line 233
    const-string v1, "d"

    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, Lax/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 251
    :goto_25
    return-object p1

    .line 236
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lax/A;->a(Z)V

    .line 237
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lax/A;->a(J)V

    .line 238
    invoke-interface {v1, p1}, Lax/r;->a(Lax/A;)Z

    .line 239
    if-eqz p2, :cond_41

    .line 240
    invoke-interface {v1, p2}, Lax/r;->a(Lax/E;)V

    .line 242
    :cond_41
    if-eqz p3, :cond_53

    .line 244
    invoke-virtual {p3}, LaM/am;->y()LaM/bx;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 245
    invoke-virtual {p3, v4}, LaM/am;->a(Z)LaM/bx;

    .line 247
    :cond_4c
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, LaM/am;->f(Ljava/lang/String;)V

    .line 249
    :cond_53
    const-string v0, "c"

    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4}, Lax/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public a(Lax/I;)V
    .registers 4
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lax/o;->b:Lax/L;

    iget v1, p0, Lax/o;->a:I

    invoke-interface {v0, v1, p1}, Lax/L;->a(ILax/I;)V

    .line 115
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lax/o;->b:Lax/L;

    iget v1, p0, Lax/o;->a:I

    invoke-interface {v0, v1, p1, p2, p3}, Lax/L;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V

    .line 258
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lax/o;->e:Lcom/google/googlenav/ui/wizard/ju;

    .line 380
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/google/googlenav/f;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lax/o;->c:Lac/h;

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 125
    new-instance v0, Lax/p;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lax/p;-><init>(Lax/o;LY/c;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v0}, Lax/p;->g()V

    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 262
    const-string v0, "p"

    invoke-virtual {p0, p1, p2, v0}, Lax/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const/16 v1, 0x9

    const-string v2, "f"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 189
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    :cond_7
    :goto_7
    return-void

    .line 193
    :cond_8
    iget-object v0, p0, Lax/o;->f:Lax/r;

    invoke-interface {v0, p1}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_7

    .line 200
    iget-object v1, p0, Lax/o;->f:Lax/r;

    invoke-interface {v1, p1}, Lax/r;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 203
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fz;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 204
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 205
    const/16 v2, 0x90

    invoke-virtual {v1, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 206
    const/4 v2, 0x2

    invoke-virtual {v0}, Lax/A;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    invoke-static {v1}, Lax/E;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/E;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v4}, Lax/E;->a(I)V

    .line 212
    :try_start_37
    invoke-virtual {v0}, Lax/A;->j()Lat/B;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 213
    const/4 v3, 0x3

    invoke-virtual {v0}, Lax/A;->j()Lat/B;

    move-result-object v0

    invoke-static {v0}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 217
    :cond_4d
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lax/E;->a(Z)V

    .line 218
    iget-object v0, p0, Lax/o;->f:Lax/r;

    invoke-interface {v0, v2}, Lax/r;->a(Lax/E;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_56} :catch_57

    goto :goto_7

    .line 219
    :catch_57
    move-exception v0

    goto :goto_7
.end method

.method public b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x90

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 135
    if-nez p2, :cond_8

    move v0, v1

    .line 184
    :goto_7
    return v0

    .line 140
    :cond_8
    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 141
    goto :goto_7

    .line 144
    :cond_10
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 147
    invoke-virtual {p2, v3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 150
    :cond_19
    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    iget-object v0, p0, Lax/o;->f:Lax/r;

    invoke-interface {v0, v3}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v2

    .line 154
    goto :goto_7

    .line 161
    :cond_27
    iget-object v0, p0, Lax/o;->f:Lax/r;

    invoke-interface {v0, v3}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v4

    .line 163
    if-nez v4, :cond_51

    .line 164
    new-instance v0, Lax/E;

    invoke-direct {v0}, Lax/E;-><init>()V

    .line 166
    invoke-virtual {v0, v3}, Lax/E;->a(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v2}, Lax/E;->a(I)V

    .line 177
    :goto_3a
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 178
    invoke-virtual {v3, v2, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 179
    invoke-virtual {v0, v3}, Lax/E;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 180
    invoke-virtual {v0, v1}, Lax/E;->a(Z)V

    .line 183
    iget-object v1, p0, Lax/o;->f:Lax/r;

    invoke-interface {v1, v0}, Lax/r;->a(Lax/E;)V

    move v0, v2

    .line 184
    goto :goto_7

    .line 173
    :cond_51
    new-instance v0, Lax/E;

    invoke-virtual {v4}, Lax/E;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v0, v3}, Lax/E;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_3a
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lax/o;->b:Lax/L;

    invoke-interface {v0}, Lax/L;->d()Z

    move-result v0

    return v0
.end method

.method public g()Lax/r;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lax/o;->f:Lax/r;

    return-object v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method
