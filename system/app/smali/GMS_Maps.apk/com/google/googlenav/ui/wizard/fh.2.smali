.class public Lcom/google/googlenav/ui/wizard/fH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/fJ;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fH;)Lcom/google/googlenav/ui/wizard/fJ;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ui/wizard/fJ;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 114
    new-instance v0, Lat/B;

    invoke-direct {v0, p1, p2}, Lat/B;-><init>(II)V

    .line 115
    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/google/googlenav/aS;-><init>(Lat/B;III)V

    .line 117
    new-instance v0, Lcom/google/googlenav/ui/wizard/fI;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fI;-><init>(Lcom/google/googlenav/ui/wizard/fH;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    .line 128
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 129
    return-void
.end method

.method public a(Lan/s;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    const-string v0, "cz"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->c(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 82
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

    new-instance v2, Lcom/google/googlenav/ui/wizard/fK;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/fK;-><init>(Lcom/google/googlenav/ui/wizard/fH;Lcom/google/googlenav/ui/wizard/fI;)V

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

    .line 98
    invoke-virtual {p1}, Lan/s;->c()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 99
    invoke-virtual {p1}, Lan/s;->b()Ln/B;

    move-result-object v2

    invoke-virtual {v2}, Ln/B;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->c(I)Lcom/google/googlenav/friend/bi;

    .line 101
    :cond_5e
    invoke-virtual {p1}, Lan/s;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 102
    invoke-virtual {p1}, Lan/s;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->f(I)Lcom/google/googlenav/friend/bi;

    .line 104
    :cond_6c
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 105
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 106
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/fJ;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ui/wizard/fJ;

    .line 73
    return-void
.end method
