.class Lcom/google/common/collect/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/common/collect/X;

.field final c:I

.field final d:Lcom/google/common/collect/au;

.field volatile e:Lcom/google/common/collect/aS;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    invoke-static {}, Lcom/google/common/collect/X;->f()Lcom/google/common/collect/aS;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aM;->e:Lcom/google/common/collect/aS;

    .line 858
    iput-object p1, p0, Lcom/google/common/collect/aM;->b:Lcom/google/common/collect/X;

    .line 859
    iput-object p2, p0, Lcom/google/common/collect/aM;->a:Ljava/lang/Object;

    .line 860
    iput p3, p0, Lcom/google/common/collect/aM;->c:I

    .line 861
    iput-object p4, p0, Lcom/google/common/collect/aM;->d:Lcom/google/common/collect/au;

    .line 862
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/aS;
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/collect/aM;->e:Lcom/google/common/collect/aS;

    return-object v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 879
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/common/collect/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/common/collect/aM;->e:Lcom/google/common/collect/aS;

    .line 933
    iput-object p1, p0, Lcom/google/common/collect/aM;->e:Lcom/google/common/collect/aS;

    .line 934
    invoke-interface {v0}, Lcom/google/common/collect/aS;->clear()V

    .line 935
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/common/collect/aM;->d:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/common/collect/aM;->b:Lcom/google/common/collect/X;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/aS;)V

    .line 939
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 897
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 942
    iget v0, p0, Lcom/google/common/collect/aM;->c:I

    return v0
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/common/collect/aM;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 916
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .registers 2

    .prologue
    .line 875
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 884
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 903
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 912
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
