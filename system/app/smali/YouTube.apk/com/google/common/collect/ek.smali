.class Lcom/google/common/collect/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ee;


# instance fields
.field final b:Ljava/lang/Object;

.field final c:Lcom/google/common/collect/bj;

.field final d:I

.field volatile e:Lcom/google/common/collect/em;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    invoke-static {}, Lcom/google/common/collect/MapMaker;->c()Lcom/google/common/collect/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ek;->e:Lcom/google/common/collect/em;

    .line 883
    iput-object p1, p0, Lcom/google/common/collect/ek;->c:Lcom/google/common/collect/bj;

    .line 884
    iput-object p2, p0, Lcom/google/common/collect/ek;->b:Ljava/lang/Object;

    .line 885
    iput p3, p0, Lcom/google/common/collect/ek;->d:I

    .line 886
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/em;)V
    .registers 2
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/google/common/collect/ek;->e:Lcom/google/common/collect/em;

    .line 904
    return-void
.end method

.method public b()Lcom/google/common/collect/ee;
    .registers 2

    .prologue
    .line 909
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/em;
    .registers 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/common/collect/ek;->e:Lcom/google/common/collect/em;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/common/collect/ek;->c:Lcom/google/common/collect/bj;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/bj;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 907
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 912
    iget v0, p0, Lcom/google/common/collect/ek;->d:I

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/collect/ek;->b:Ljava/lang/Object;

    return-object v0
.end method
