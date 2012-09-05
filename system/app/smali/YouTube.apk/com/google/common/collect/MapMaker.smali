.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lcom/google/common/collect/em;


# instance fields
.field private a:Lcom/google/common/collect/MapMaker$Strength;

.field private b:Lcom/google/common/collect/MapMaker$Strength;

.field private c:J

.field private d:Z

.field private final e:Lcom/google/common/collect/ay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 774
    new-instance v0, Lcom/google/common/collect/dx;

    invoke-direct {v0}, Lcom/google/common/collect/dx;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/em;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapMaker$Strength;

    .line 100
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMaker$Strength;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->c:J

    .line 103
    new-instance v0, Lcom/google/common/collect/ay;

    invoke-direct {v0}, Lcom/google/common/collect/ay;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/ay;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/collect/em;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/em;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/MapMaker;)J
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->c:J

    return-wide v0
.end method

.method static synthetic c()Lcom/google/common/collect/em;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/em;

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/ay;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/ay;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/MapMaker;
    .registers 4

    .prologue
    .line 167
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->WEAK:Lcom/google/common/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapMaker$Strength;

    sget-object v2, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    if-eq v1, v2, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapMaker$Strength;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->d:Z

    return-object p0
.end method

.method public final a(Lcom/google/common/base/k;)Ljava/util/concurrent/ConcurrentMap;
    .registers 3
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/k;)V

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
