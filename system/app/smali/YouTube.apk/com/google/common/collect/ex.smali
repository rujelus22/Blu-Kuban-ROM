.class final Lcom/google/common/collect/ex;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fk;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fk;)V
    .registers 2
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/google/common/collect/ex;->a:Lcom/google/common/collect/fk;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    .line 907
    iget-object v1, p0, Lcom/google/common/collect/ex;->a:Lcom/google/common/collect/fk;

    iput-object p1, v1, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    .line 908
    return-object v0
.end method
