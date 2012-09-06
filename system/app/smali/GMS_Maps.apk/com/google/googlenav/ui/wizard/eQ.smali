.class public Lcom/google/googlenav/ui/wizard/eq;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Las/h;
.implements Law/b;


# instance fields
.field private final a:Lcom/google/googlenav/J;

.field private b:Law/a;

.field private c:[Law/c;

.field private i:[Law/c;

.field private j:J

.field private k:Lcom/google/googlenav/ui/wizard/es;

.field private l:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 62
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->c:[Law/c;

    .line 63
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->i:[Law/c;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/eq;->j:J

    .line 75
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eq;->a:Lcom/google/googlenav/J;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eq;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eq;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eq;->l:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eq;Lcom/google/googlenav/ui/wizard/es;)Lcom/google/googlenav/ui/wizard/es;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eq;->k:Lcom/google/googlenav/ui/wizard/es;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eq;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 265
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->a:Lcom/google/googlenav/J;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private a([Law/c;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 166
    if-eqz p1, :cond_18

    array-length v0, p1

    if-lez v0, :cond_18

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->k:Lcom/google/googlenav/ui/wizard/es;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/es;->add(Ljava/lang/Object;)V

    .line 168
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v2, p1, v0

    .line 169
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eq;->k:Lcom/google/googlenav/ui/wizard/es;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/es;->add(Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 172
    :cond_18
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eq;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eq;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/eq;)Lcom/google/googlenav/ui/wizard/es;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->k:Lcom/google/googlenav/ui/wizard/es;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->c:[Law/c;

    const/16 v1, 0x2dd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/eq;->a([Law/c;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->i:[Law/c;

    const/16 v1, 0x2de

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/eq;->a([Law/c;Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 1

    .prologue
    .line 332
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 339
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 346
    return-void
.end method

.method public L_()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->c:[Law/c;

    .line 323
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->i:[Law/c;

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/eq;->j:J

    .line 325
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 353
    return-void
.end method

.method public a([Law/c;[Law/c;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 288
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    .line 289
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eq;->c:[Law/c;

    .line 290
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eq;->i:[Law/c;

    .line 291
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/eq;->j:J

    .line 294
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eq;->j()V

    .line 295
    return-void
.end method

.method protected b()V
    .registers 8

    .prologue
    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/eq;->g:I

    .line 82
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/eq;->j:J

    sub-long/2addr v0, v2

    .line 83
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eq;->c:[Law/c;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eq;->i:[Law/c;

    if-eqz v2, :cond_21

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_55

    .line 85
    :cond_21
    new-instance v0, Law/a;

    invoke-direct {v0}, Law/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    invoke-virtual {v0, p0}, Law/a;->a(Law/b;)V

    .line 89
    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    const/16 v0, 0xc

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_48

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x263

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 97
    :cond_48
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eq;->a()V

    .line 105
    :goto_54
    return-void

    .line 102
    :cond_55
    new-instance v0, Lcom/google/googlenav/ui/wizard/eu;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eu;-><init>(Lcom/google/googlenav/ui/wizard/eq;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_54
.end method

.method public d()V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    invoke-virtual {v0}, Law/a;->l()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x2e3

    :goto_13
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    invoke-virtual {v1}, Law/a;->k()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 310
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Las/f;->a(I)V

    .line 314
    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eq;->b:Law/a;

    .line 315
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eq;->a:Lcom/google/googlenav/J;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 316
    return-void

    .line 304
    :cond_30
    const/16 v0, 0x2df

    goto :goto_13
.end method

.method public h()V
    .registers 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eq;->a()V

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/eq;->g:I

    .line 279
    return-void
.end method
