.class abstract Lcom/google/common/collect/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/bw;

.field private final b:Lcom/google/common/collect/cb;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/cb;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bw;

    iput-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/bw;

    .line 39
    iput-object p2, p0, Lcom/google/common/collect/cb;->b:Lcom/google/common/collect/cb;

    .line 40
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/collect/bw;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/bw;

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/cb;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/cb;->b:Lcom/google/common/collect/cb;

    return-object v0
.end method

.method public final d()Lcom/google/common/collect/cb;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/cb;->b:Lcom/google/common/collect/cb;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/common/collect/cb;->b:Lcom/google/common/collect/cb;

    return-object v0

    .line 71
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method
