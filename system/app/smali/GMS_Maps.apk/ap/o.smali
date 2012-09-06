.class public LaP/o;
.super LaP/n;
.source "SourceFile"


# instance fields
.field private final e:Lad/t;


# direct methods
.method public constructor <init>(Lad/w;Lad/t;Lad/t;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 929
    invoke-direct {p0, p1, p2, p4, p5}, LaP/n;-><init>(Lad/w;Lad/t;ILjava/util/List;)V

    .line 930
    iput-object p3, p0, LaP/o;->e:Lad/t;

    .line 931
    invoke-virtual {p0}, LaP/o;->A()V

    .line 932
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    .prologue
    .line 960
    iget-object v0, p0, LaP/o;->b:Lad/w;

    iget v1, p0, LaP/o;->c:I

    invoke-static {v0, v1, p0}, LaP/h;->b(Lad/w;ILaP/h;)V

    .line 961
    return-void
.end method

.method public l()Ljava/util/Date;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, LaP/o;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, LaP/o;->e:Lad/t;

    invoke-virtual {v0}, Lad/t;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public t()Lat/B;
    .registers 2

    .prologue
    .line 941
    iget-object v0, p0, LaP/o;->e:Lad/t;

    invoke-virtual {v0}, Lad/t;->o()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, LaP/o;->e:Lad/t;

    invoke-virtual {v0}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
