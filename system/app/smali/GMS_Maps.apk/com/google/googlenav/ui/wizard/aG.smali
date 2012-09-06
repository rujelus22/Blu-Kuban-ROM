.class public Lcom/google/googlenav/ui/wizard/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/H;

.field private final b:LaM/a;

.field private final c:Lcom/google/googlenav/android/Y;

.field private d:Lcom/google/googlenav/ui/wizard/ak;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/j;LaM/a;Lcom/google/googlenav/android/Y;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/google/googlenav/ui/wizard/H;

    invoke-direct {v0, p1, p3}, Lcom/google/googlenav/ui/wizard/H;-><init>(Lcom/google/googlenav/friend/j;Lcom/google/googlenav/android/Y;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/H;

    .line 121
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ag;->b:LaM/a;

    .line 122
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ag;->c:Lcom/google/googlenav/android/Y;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->d:Lcom/google/googlenav/ui/wizard/ak;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->c:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/ag;)LaM/a;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->b:LaM/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/H;->a()V

    .line 211
    return-void
.end method

.method public a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 187
    new-instance v0, Lat/B;

    invoke-direct {v0, p1, p2}, Lat/B;-><init>(II)V

    .line 188
    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/google/googlenav/aS;-><init>(Lat/B;III)V

    .line 190
    new-instance v0, Lcom/google/googlenav/ui/wizard/ah;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/ah;-><init>(Lcom/google/googlenav/ui/wizard/ag;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    .line 201
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 202
    return-void
.end method

.method public a(Lan/s;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    const-string v0, "cz"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->c(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 141
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

    invoke-virtual {v1, p2}, Lcom/google/googlenav/friend/bi;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/al;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/al;-><init>(Lcom/google/googlenav/ui/wizard/ag;Lcom/google/googlenav/ui/wizard/ah;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->g(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/friend/bi;->a(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/friend/bi;->b(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/friend/bi;->c(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lan/s;->c()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 155
    invoke-virtual {p1}, Lan/s;->b()Ln/B;

    move-result-object v2

    invoke-virtual {v2}, Ln/B;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->c(I)Lcom/google/googlenav/friend/bi;

    .line 157
    :cond_5e
    invoke-virtual {p1}, Lan/s;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 158
    invoke-virtual {p1}, Lan/s;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->f(I)Lcom/google/googlenav/friend/bi;

    .line 160
    :cond_6c
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 161
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 162
    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 234
    return-void
.end method

.method public a(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/google/googlenav/o;

    new-instance v1, Lcom/google/googlenav/ui/wizard/aj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/aj;-><init>(Lcom/google/googlenav/ui/wizard/ag;Lcom/google/googlenav/ui/wizard/ah;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/googlenav/o;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/r;)V

    .line 178
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 179
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ak;Lcom/google/googlenav/ui/wizard/L;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ag;->d:Lcom/google/googlenav/ui/wizard/ak;

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ag;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/ui/wizard/L;)V

    .line 132
    return-void
.end method

.method public a(Ljava/util/List;Lam/i;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Lam/a;

    invoke-direct {v0, p2}, Lam/a;-><init>(Lam/i;)V

    sget-object v1, Lam/h;->b:Lam/h;

    invoke-virtual {v0, v1}, Lam/a;->a(Lam/h;)Lam/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/a;->a(I)Lam/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lam/a;->a(Ljava/util/List;)Lam/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/ai;

    invoke-direct {v1, p0, p2}, Lcom/google/googlenav/ui/wizard/ai;-><init>(Lcom/google/googlenav/ui/wizard/ag;Lam/i;)V

    invoke-virtual {v0, v1}, Lam/a;->a(Lam/c;)Lam/a;

    move-result-object v0

    .line 261
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 262
    return-void
.end method
