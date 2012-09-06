.class Lcom/google/common/collect/aP;
.super Lcom/google/common/collect/aM;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field volatile f:J

.field g:Lcom/google/common/collect/au;

.field h:Lcom/google/common/collect/au;

.field i:Lcom/google/common/collect/au;

.field j:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aM;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 1033
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aP;->f:J

    .line 1043
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aP;->g:Lcom/google/common/collect/au;

    .line 1054
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aP;->h:Lcom/google/common/collect/au;

    .line 1067
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aP;->i:Lcom/google/common/collect/au;

    .line 1078
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aP;->j:Lcom/google/common/collect/au;

    .line 1029
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1040
    iput-wide p1, p0, Lcom/google/common/collect/aP;->f:J

    .line 1041
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/google/common/collect/aP;->g:Lcom/google/common/collect/au;

    .line 1052
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/google/common/collect/aP;->h:Lcom/google/common/collect/au;

    .line 1063
    return-void
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/google/common/collect/aP;->i:Lcom/google/common/collect/au;

    .line 1076
    return-void
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/google/common/collect/aP;->j:Lcom/google/common/collect/au;

    .line 1087
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 1036
    iget-wide v0, p0, Lcom/google/common/collect/aP;->f:J

    return-wide v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/common/collect/aP;->g:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/common/collect/aP;->h:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/common/collect/aP;->i:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/common/collect/aP;->j:Lcom/google/common/collect/au;

    return-object v0
.end method
