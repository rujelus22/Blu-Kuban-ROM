.class Lcom/google/common/base/g;
.super Lcom/google/common/base/b;
.source "SourceFile"


# instance fields
.field final synthetic p:Lcom/google/common/base/o;

.field final synthetic q:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Lcom/google/common/base/b;Lcom/google/common/base/o;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/common/base/g;->q:Lcom/google/common/base/b;

    iput-object p2, p0, Lcom/google/common/base/g;->p:Lcom/google/common/base/o;

    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/base/b;
    .registers 1

    .prologue
    .line 688
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 680
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/common/base/g;->p:Lcom/google/common/base/o;

    invoke-virtual {v0, p1}, Lcom/google/common/base/o;->b(C)Z

    move-result v0

    return v0
.end method
