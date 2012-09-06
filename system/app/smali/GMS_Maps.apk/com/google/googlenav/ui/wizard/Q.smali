.class public Lcom/google/googlenav/ui/wizard/q;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/wizard/x;

.field private b:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ai;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 244
    new-instance v0, Lcom/google/googlenav/aS;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/googlenav/aS;-><init>(Lat/B;III)V

    .line 246
    new-instance v1, Lcom/google/googlenav/ui/wizard/s;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/s;-><init>(Lcom/google/googlenav/ui/wizard/q;Lcom/google/googlenav/ai;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    .line 279
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 280
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 421
    new-instance v0, Lcom/google/googlenav/h;

    invoke-direct {v0, p1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 422
    invoke-virtual {v0, p2}, Lcom/google/googlenav/h;->a(Z)V

    .line 423
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    if-eqz v1, :cond_23

    .line 424
    const-string v1, "x"

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/y;->a(Lcom/google/googlenav/h;)V

    .line 426
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    .line 428
    :cond_23
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->a()V

    .line 429
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/q;Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ai;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/q;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    return-void
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    .line 153
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->a()V

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/x;)V

    .line 155
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 176
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->h()V

    .line 177
    iget v0, p0, Lcom/google/googlenav/ui/wizard/q;->g:I

    .line 179
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/q;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/google/googlenav/ui/wizard/q;->g:I

    return v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 439
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/x;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    .line 122
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->j()V

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 289
    const/16 v0, 0x66

    const-string v1, "a"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 131
    new-instance v0, Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/e;-><init>(Lcom/google/googlenav/ui/wizard/q;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->show()V

    .line 133
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->i()V

    .line 134
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    if-eqz v0, :cond_15

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/y;->a()V

    .line 142
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    if-eqz v0, :cond_20

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->dismiss()V

    .line 144
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    .line 146
    :cond_20
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    .line 147
    return-void
.end method

.method public e()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    if-nez v0, :cond_6

    .line 230
    :goto_5
    return-void

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    if-eqz v0, :cond_69

    .line 200
    invoke-static {}, Lcom/google/googlenav/android/T;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/y;->a()V

    .line 202
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->a()V

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const-string v1, "GO AWAY MONKEY"

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 209
    :cond_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    if-eqz v0, :cond_79

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v4

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->d()Ljava/lang/String;

    move-result-object v5

    .line 213
    :goto_42
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/friend/l;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/e;->l()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/google/googlenav/ui/wizard/r;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/wizard/r;-><init>(Lcom/google/googlenav/ui/wizard/q;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/friend/l;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/friend/m;)V

    invoke-virtual {v7, v0}, Lac/h;->c(Lac/g;)V

    .line 228
    :cond_69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_79
    move-object v4, v5

    goto :goto_42
.end method

.method public f()V
    .registers 3

    .prologue
    .line 298
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->hide()V

    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/y;->b()V

    .line 302
    new-instance v0, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    .line 304
    const/16 v1, 0xd

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    .line 308
    const/16 v1, 0x510

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    .line 309
    new-instance v1, Lcom/google/googlenav/ui/wizard/t;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/t;-><init>(Lcom/google/googlenav/ui/wizard/q;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    .line 336
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 337
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 343
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->a()V

    .line 345
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    if-eqz v0, :cond_15

    .line 160
    sget-object v0, Lcom/google/googlenav/ui/wizard/w;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/e;->n()Lcom/google/googlenav/ui/wizard/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 169
    :cond_15
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/q;->a()V

    .line 171
    :goto_1d
    return-void

    .line 162
    :pswitch_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->i()V

    goto :goto_1d

    .line 160
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public i()V
    .registers 8

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/google/googlenav/ui/wizard/u;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/wizard/u;-><init>(Lcom/google/googlenav/ui/wizard/q;)V

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 411
    :goto_2a
    return-void

    .line 375
    :cond_2b
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/e;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/v;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/v;-><init>(Lcom/google/googlenav/ui/wizard/q;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/p;->a(Lat/B;Ljava/lang/String;Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bg;

    move-result-object v2

    .line 408
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    goto :goto_2a
.end method
