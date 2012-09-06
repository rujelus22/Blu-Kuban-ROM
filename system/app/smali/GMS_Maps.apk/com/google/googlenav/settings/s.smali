.class public Lcom/google/googlenav/settings/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/settings/B;

.field private final b:Lcom/google/googlenav/friend/j;

.field private final c:Lcom/google/googlenav/settings/C;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/google/googlenav/friend/reporting/s;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/j;Landroid/os/Handler;Lcom/google/googlenav/friend/reporting/s;Lcom/google/googlenav/settings/B;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/friend/j;

    .line 173
    iput-object p4, p0, Lcom/google/googlenav/settings/s;->a:Lcom/google/googlenav/settings/B;

    .line 174
    new-instance v0, Lcom/google/googlenav/settings/C;

    invoke-direct {v0}, Lcom/google/googlenav/settings/C;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/settings/s;->c:Lcom/google/googlenav/settings/C;

    .line 175
    iput-object p2, p0, Lcom/google/googlenav/settings/s;->d:Landroid/os/Handler;

    .line 176
    iput-object p3, p0, Lcom/google/googlenav/settings/s;->e:Lcom/google/googlenav/friend/reporting/s;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/B;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->a:Lcom/google/googlenav/settings/B;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/friend/reporting/s;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->e:Lcom/google/googlenav/friend/reporting/s;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/friend/j;

    new-instance v1, Lcom/google/googlenav/settings/w;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/w;-><init>(Lcom/google/googlenav/settings/s;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/j;->b(Lcom/google/googlenav/friend/k;)V

    .line 292
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/C;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->c:Lcom/google/googlenav/settings/C;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 299
    new-instance v0, Lcom/google/googlenav/settings/y;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/settings/y;-><init>(Lcom/google/googlenav/settings/s;LY/c;)V

    .line 339
    invoke-virtual {v0}, LY/b;->g()V

    .line 340
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/friend/j;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/friend/j;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->c:Lcom/google/googlenav/settings/C;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/C;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 349
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->a:Lcom/google/googlenav/settings/B;

    iget-object v1, p0, Lcom/google/googlenav/settings/s;->c:Lcom/google/googlenav/settings/C;

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/B;->a(Lcom/google/googlenav/settings/C;)V

    .line 351
    :cond_f
    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/settings/s;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/googlenav/settings/s;->d()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/settings/s;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/settings/s;->c:Lcom/google/googlenav/settings/C;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/C;->d()V

    .line 184
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    .line 186
    if-eqz v0, :cond_12

    .line 187
    invoke-direct {p0}, Lcom/google/googlenav/settings/s;->b()V

    .line 189
    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/settings/s;->c()V

    .line 190
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/i;)V
    .registers 6
    .parameter

    .prologue
    .line 197
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/t;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/i;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/googlenav/settings/t;-><init>(Lcom/google/googlenav/settings/s;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;Lcom/google/googlenav/friend/i;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 207
    return-void
.end method

.method public a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 215
    new-instance v0, Lcom/google/googlenav/settings/u;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/settings/u;-><init>(Lcom/google/googlenav/settings/s;Z)V

    .line 233
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 234
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 235
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/friend/aO;

    invoke-direct {v3, v1, v0}, Lcom/google/googlenav/friend/aO;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/aP;)V

    invoke-virtual {v2, v3}, Lac/h;->c(Lac/g;)V

    .line 237
    return-void
.end method
