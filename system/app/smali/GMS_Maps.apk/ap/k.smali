.class public LaP/k;
.super LaP/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lad/w;Lad/t;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 967
    sget-object v1, LaP/q;->e:LaP/q;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LaP/h;-><init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V

    .line 968
    invoke-virtual {p0}, LaP/k;->A()V

    .line 969
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaP/k;->a(I)V

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaP/k;->a(F)V

    .line 1006
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 973
    iget-object v0, p0, LaP/k;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->as()Lad/y;

    move-result-object v0

    invoke-static {v0}, LaP/k;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, LaP/k;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    .prologue
    .line 998
    invoke-virtual {p0}, LaP/k;->l()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public s()Lat/B;
    .registers 2

    .prologue
    .line 983
    iget-object v0, p0, LaP/k;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->aC()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public t()Lat/B;
    .registers 2

    .prologue
    .line 988
    invoke-virtual {p0}, LaP/k;->s()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 978
    const/4 v0, 0x0

    return-object v0
.end method
