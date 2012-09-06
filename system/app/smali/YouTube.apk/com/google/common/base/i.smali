.class final Lcom/google/common/base/i;
.super Lcom/google/common/base/d;
.source "SourceFile"


# instance fields
.field final synthetic o:Lcom/google/common/base/q;

.field final synthetic p:Lcom/google/common/base/d;


# direct methods
.method constructor <init>(Lcom/google/common/base/d;Lcom/google/common/base/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/common/base/i;->p:Lcom/google/common/base/d;

    iput-object p2, p0, Lcom/google/common/base/i;->o:Lcom/google/common/base/q;

    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/d;
    .registers 1

    .prologue
    .line 683
    return-object p0
.end method

.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 675
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 677
    iget-object v1, p0, Lcom/google/common/base/i;->o:Lcom/google/common/base/q;

    iget-object v1, v1, Lcom/google/common/base/q;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
