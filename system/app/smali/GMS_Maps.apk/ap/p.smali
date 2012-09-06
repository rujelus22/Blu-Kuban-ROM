.class public LaP/p;
.super LaP/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lad/w;Lad/t;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LaP/n;-><init>(Lad/w;Lad/t;ILjava/util/List;)V

    .line 849
    invoke-virtual {p0}, LaP/p;->A()V

    .line 850
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    .prologue
    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaP/p;->a(I)V

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaP/p;->a(F)V

    .line 878
    return-void
.end method

.method public l()Ljava/util/Date;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, LaP/p;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, LaP/p;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->R()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public t()Lat/B;
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, LaP/p;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->aC()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, LaP/p;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->as()Lad/y;

    move-result-object v0

    invoke-static {v0}, LaP/p;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
