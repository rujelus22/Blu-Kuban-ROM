.class final Lcom/google/common/collect/BstModificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/bw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/bw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/BstModificationResult$ModificationType;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult$ModificationType;)V
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/common/collect/BstModificationResult;->a:Lcom/google/common/collect/bw;

    .line 57
    iput-object p2, p0, Lcom/google/common/collect/BstModificationResult;->b:Lcom/google/common/collect/bw;

    .line 58
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModificationResult$ModificationType;

    iput-object v0, p0, Lcom/google/common/collect/BstModificationResult;->c:Lcom/google/common/collect/BstModificationResult$ModificationType;

    .line 59
    return-void
.end method

.method static a(Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 35
    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->IDENTITY:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method

.method static a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 40
    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method

.method static b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 46
    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBALANCING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/common/collect/bw;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->a:Lcom/google/common/collect/bw;

    return-object v0
.end method

.method final b()Lcom/google/common/collect/bw;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->b:Lcom/google/common/collect/bw;

    return-object v0
.end method

.method final c()Lcom/google/common/collect/BstModificationResult$ModificationType;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->c:Lcom/google/common/collect/BstModificationResult$ModificationType;

    return-object v0
.end method
