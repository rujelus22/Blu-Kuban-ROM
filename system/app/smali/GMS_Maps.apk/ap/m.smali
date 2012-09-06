.class public LaP/m;
.super LaP/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lad/w;Lad/t;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 888
    invoke-direct {p0, p1, p2, p3, p4}, LaP/n;-><init>(Lad/w;Lad/t;ILjava/util/List;)V

    .line 889
    invoke-virtual {p0}, LaP/m;->A()V

    .line 890
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    .prologue
    .line 914
    iget-object v0, p0, LaP/m;->b:Lad/w;

    iget v1, p0, LaP/m;->c:I

    invoke-static {v0, v1, p0}, LaP/h;->b(Lad/w;ILaP/h;)V

    .line 915
    return-void
.end method

.method public l()Ljava/util/Date;
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, LaP/m;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    .prologue
    .line 909
    iget-object v0, p0, LaP/m;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->R()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public t()Lat/B;
    .registers 2

    .prologue
    .line 899
    iget-object v0, p0, LaP/m;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->aC()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 894
    iget-object v0, p0, LaP/m;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->as()Lad/y;

    move-result-object v0

    invoke-static {v0}, LaP/m;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
