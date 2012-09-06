.class Lcom/google/common/base/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/google/common/base/Y;


# direct methods
.method constructor <init>(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/common/base/ab;->b:Lcom/google/common/base/Y;

    iput-object p2, p0, Lcom/google/common/base/ab;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/base/ab;->b:Lcom/google/common/base/Y;

    invoke-static {v0}, Lcom/google/common/base/Y;->a(Lcom/google/common/base/Y;)Lcom/google/common/base/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/ab;->b:Lcom/google/common/base/Y;

    iget-object v2, p0, Lcom/google/common/base/ab;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/google/common/base/ag;->b(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
