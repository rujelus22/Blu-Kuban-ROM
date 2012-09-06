.class Lcom/google/common/collect/aO;
.super Lcom/google/common/collect/aM;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field volatile f:J

.field g:Lcom/google/common/collect/au;

.field h:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 954
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aM;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 959
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aO;->f:J

    .line 969
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aO;->g:Lcom/google/common/collect/au;

    .line 980
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aO;->h:Lcom/google/common/collect/au;

    .line 955
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 966
    iput-wide p1, p0, Lcom/google/common/collect/aO;->f:J

    .line 967
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/google/common/collect/aO;->g:Lcom/google/common/collect/au;

    .line 978
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/common/collect/aO;->h:Lcom/google/common/collect/au;

    .line 989
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 962
    iget-wide v0, p0, Lcom/google/common/collect/aO;->f:J

    return-wide v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/common/collect/aO;->g:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/common/collect/aO;->h:Lcom/google/common/collect/au;

    return-object v0
.end method
