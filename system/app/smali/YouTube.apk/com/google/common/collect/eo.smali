.class final Lcom/google/common/collect/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/en;


# direct methods
.method constructor <init>(Lcom/google/common/collect/en;)V
    .registers 2
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/google/common/collect/eo;->a:Lcom/google/common/collect/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1297
    check-cast p1, Lcom/google/common/collect/jh;

    check-cast p2, Lcom/google/common/collect/jh;

    iget-object v0, p0, Lcom/google/common/collect/eo;->a:Lcom/google/common/collect/en;

    iget-object v0, v0, Lcom/google/common/collect/en;->b:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/jh;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/jh;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
