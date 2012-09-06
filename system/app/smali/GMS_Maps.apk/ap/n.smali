.class public abstract LaP/n;
.super LaP/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lad/w;Lad/t;ILjava/util/List;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    sget-object v1, LaP/q;->d:LaP/q;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LaP/s;-><init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V

    .line 814
    invoke-virtual {p2}, Lad/t;->b()Lad/v;

    move-result-object v0

    iput-object v0, p0, LaP/n;->d:Lad/v;

    .line 815
    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, LaP/n;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, LaP/n;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, LaP/n;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Lat/B;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, LaP/n;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->k()Lat/B;

    move-result-object v0

    return-object v0
.end method
