.class final Lcom/google/common/collect/bU;
.super Lcom/google/common/collect/bY;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/common/collect/bU;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/bY;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/common/collect/bU;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/bT;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/dE;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bZ;->d(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
