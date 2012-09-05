.class final Lcom/google/common/collect/eo;
.super Lcom/google/common/base/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/em;


# instance fields
.field final a:Lcom/google/common/collect/ee;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/ee;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1054
    sget-object v0, Lcom/google/common/collect/ed;->a:Lcom/google/common/base/d;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/j;-><init>(Ljava/lang/Object;Lcom/google/common/base/d;)V

    .line 1055
    iput-object p2, p0, Lcom/google/common/collect/eo;->a:Lcom/google/common/collect/ee;

    .line 1056
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;
    .registers 4
    .parameter

    .prologue
    .line 1064
    new-instance v0, Lcom/google/common/collect/eo;

    invoke-virtual {p0}, Lcom/google/common/collect/eo;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/eo;-><init>(Ljava/lang/Object;Lcom/google/common/collect/ee;)V

    return-object v0
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/eo;->a:Lcom/google/common/collect/ee;

    invoke-interface {v0}, Lcom/google/common/collect/ee;->d()V

    .line 1060
    return-void
.end method

.method public final n_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/google/common/collect/eo;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
