.class final Lcom/google/common/collect/dh;
.super Lcom/google/common/collect/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ds;

.field final synthetic b:Lcom/google/common/collect/dg;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dg;Lcom/google/common/collect/ds;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/google/common/collect/dh;->b:Lcom/google/common/collect/dg;

    iput-object p2, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/ds;

    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    .line 792
    iget-object v1, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/ds;

    iput-object p1, v1, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    .line 793
    return-object v0
.end method
