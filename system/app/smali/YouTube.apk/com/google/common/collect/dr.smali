.class final Lcom/google/common/collect/dr;
.super Lcom/google/common/collect/fm;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/dq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dq;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/common/collect/dr;->b:Lcom/google/common/collect/dq;

    iput-object p2, p0, Lcom/google/common/collect/dr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/fm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/common/collect/dr;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/common/collect/dr;->b:Lcom/google/common/collect/dq;

    iget-object v0, v0, Lcom/google/common/collect/dq;->b:Lcom/google/common/collect/dp;

    iget-object v0, v0, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/dn;

    iget-object v0, v0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/dr;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/fj;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
