.class public Lcom/google/googlenav/mylocationnotifier/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;
.implements Lcom/google/googlenav/friend/bh;


# static fields
.field static a:I

.field private static f:I

.field private static g:I


# instance fields
.field b:Lan/s;

.field c:Lcom/google/googlenav/ai;

.field d:Lan/s;

.field e:Z

.field private h:J

.field private final i:Lcom/google/googlenav/ui/v;

.field private j:Lcom/google/googlenav/mylocationnotifier/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x64

    .line 42
    const/4 v0, 0x6

    sput v0, Lcom/google/googlenav/mylocationnotifier/k;->f:I

    .line 51
    sput v1, Lcom/google/googlenav/mylocationnotifier/k;->g:I

    .line 56
    sput v1, Lcom/google/googlenav/mylocationnotifier/k;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 4
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->h:J

    .line 102
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/k;->i:Lcom/google/googlenav/ui/v;

    .line 103
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lan/h;->a(Lan/y;)V

    .line 104
    return-void
.end method


# virtual methods
.method public a(ILan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->c()V

    .line 331
    return-void
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->e:Z

    .line 413
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_c

    .line 414
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->e()V

    .line 416
    :cond_c
    return-void
.end method

.method a(Lan/s;Ljava/lang/String;Lcom/google/googlenav/friend/bh;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->e:Z

    if-eqz v0, :cond_7

    .line 378
    :goto_6
    return-void

    .line 347
    :cond_7
    iput-boolean v4, p0, Lcom/google/googlenav/mylocationnotifier/k;->e:Z

    .line 348
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/k;->d:Lan/s;

    .line 349
    const/16 v0, 0x76

    const-string v1, ""

    invoke-static {v0, p4, v1}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 353
    new-instance v1, Lcom/google/googlenav/friend/bi;

    invoke-direct {v1}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {p1}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {p1}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/friend/bi;->a(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    .line 361
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 362
    invoke-virtual {v1, p2}, Lcom/google/googlenav/friend/bi;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/bi;

    .line 364
    :cond_49
    invoke-virtual {p1}, Lan/s;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 365
    invoke-virtual {p1}, Lan/s;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->f(I)Lcom/google/googlenav/friend/bi;

    .line 367
    :cond_57
    invoke-virtual {p1}, Lan/s;->c()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 368
    invoke-virtual {p1}, Lan/s;->b()Ln/B;

    move-result-object v2

    invoke-virtual {v2}, Ln/B;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->c(I)Lcom/google/googlenav/friend/bi;

    .line 370
    :cond_68
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v2

    invoke-virtual {v2}, Las/f;->k()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 373
    invoke-virtual {v1, v4}, Lcom/google/googlenav/friend/bi;->c(Z)Lcom/google/googlenav/friend/bi;

    .line 375
    :cond_75
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v1

    invoke-virtual {v2, v1}, Lac/h;->c(Lac/g;)V

    .line 377
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_6
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;)Z

    .line 232
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->d:Lan/s;

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->b:Lan/s;

    .line 434
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/k;->c:Lcom/google/googlenav/ai;

    .line 435
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->e:Z

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_12

    .line 398
    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v1, p2, v0}, Lcom/google/googlenav/mylocationnotifier/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 402
    :cond_12
    return-void
.end method

.method public a(Lcom/google/googlenav/mylocationnotifier/a;)V
    .registers 4
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_1f

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-eqz v0, :cond_12

    .line 149
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/HeaderView;->setShouldDeactivateOnDetach(Z)V

    .line 151
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->l()V

    .line 157
    :goto_17
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->h()V

    .line 159
    return-void

    .line 155
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lan/h;->a(Lan/y;)V

    goto :goto_17
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Lan/s;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 245
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lan/s;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 246
    :cond_f
    const/4 v0, 0x0

    .line 321
    :goto_10
    return v0

    .line 250
    :cond_11
    invoke-static {p1}, Lan/s;->a(Landroid/location/Location;)I

    move-result v0

    sget v2, Lcom/google/googlenav/mylocationnotifier/k;->a:I

    if-ge v0, v2, :cond_6d

    .line 251
    invoke-static {p1}, Lan/s;->c(Landroid/location/Location;)I

    move-result v0

    sget v2, Lcom/google/googlenav/mylocationnotifier/k;->f:I

    if-ge v0, v2, :cond_69

    .line 253
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->b:Lan/s;

    if-eqz v0, :cond_3a

    .line 257
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->b:Lan/s;

    invoke-virtual {p1, v0}, Lan/s;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v3, Lcom/google/googlenav/mylocationnotifier/k;->g:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_38

    .line 258
    const-string v0, "o"

    invoke-virtual {p0, p1, v2, p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;Ljava/lang/String;Lcom/google/googlenav/friend/bh;Ljava/lang/String;)V

    :cond_38
    :goto_38
    move v0, v1

    .line 321
    goto :goto_10

    .line 263
    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    instance-of v0, v0, Lcom/google/googlenav/mylocationnotifier/i;

    if-eqz v0, :cond_46

    .line 266
    const-string v0, "m"

    invoke-virtual {p0, p1, v2, p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;Ljava/lang/String;Lcom/google/googlenav/friend/bh;Ljava/lang/String;)V

    goto :goto_38

    .line 268
    :cond_46
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    instance-of v0, v0, Lcom/google/googlenav/mylocationnotifier/l;

    if-eqz v0, :cond_38

    .line 276
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    check-cast v0, Lcom/google/googlenav/mylocationnotifier/l;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/l;->a()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->d:Lan/s;

    invoke-virtual {p1, v0}, Lan/s;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v3, Lcom/google/googlenav/mylocationnotifier/k;->g:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_38

    .line 279
    :cond_63
    const-string v0, "m"

    invoke-virtual {p0, p1, v2, p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;Ljava/lang/String;Lcom/google/googlenav/friend/bh;Ljava/lang/String;)V

    goto :goto_38

    .line 287
    :cond_69
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->c()V

    goto :goto_38

    .line 296
    :cond_6d
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->a()Z

    move-result v0

    if-nez v0, :cond_75

    move v0, v1

    .line 297
    goto :goto_10

    .line 304
    :cond_75
    iget-wide v2, p0, Lcom/google/googlenav/mylocationnotifier/k;->h:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v2, v4

    if-nez v0, :cond_90

    .line 305
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/googlenav/mylocationnotifier/k;->h:J

    goto :goto_38

    .line 307
    :cond_90
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/mylocationnotifier/k;->h:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_38

    .line 315
    const/16 v0, 0x2d2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->i()Lcom/google/googlenav/ui/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->c()V

    goto :goto_38
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_1a

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-eqz v0, :cond_12

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/HeaderView;->setShouldDeactivateOnDetach(Z)V

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->i()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    .line 135
    :cond_1a
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->h:J

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lan/h;->b(Lan/y;)V

    .line 139
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    .line 169
    :cond_9
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->k()V

    .line 178
    :cond_9
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->j:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/a;->l()V

    .line 187
    :cond_9
    return-void
.end method

.method public g()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/k;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->c:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_22

    .line 201
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/googlenav/mylocationnotifier/l;-><init>(Ljava/util/List;Lcom/google/googlenav/mylocationnotifier/k;Ljava/lang/String;Z)V

    .line 206
    new-instance v1, Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/k;->c:Lcom/google/googlenav/ai;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/google/googlenav/mylocationnotifier/d;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/mylocationnotifier/k;Lcom/google/googlenav/mylocationnotifier/l;Z)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    .line 223
    :goto_21
    return-void

    .line 212
    :cond_22
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/i;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/mylocationnotifier/i;-><init>(Lcom/google/googlenav/mylocationnotifier/k;Z)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    goto :goto_21

    .line 220
    :cond_2b
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;)Z

    goto :goto_21
.end method

.method public h()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->b:Lan/s;

    .line 423
    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->c:Lcom/google/googlenav/ai;

    .line 424
    return-void
.end method

.method i()Lcom/google/googlenav/ui/v;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/k;->i:Lcom/google/googlenav/ui/v;

    return-object v0
.end method
