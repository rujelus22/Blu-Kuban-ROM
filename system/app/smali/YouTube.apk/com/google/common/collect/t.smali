.class final Lcom/google/common/collect/t;
.super Lcom/google/common/collect/hx;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/common/collect/t;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/hx;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/common/collect/t;->a:Lcom/google/common/collect/AbstractMultimap;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/common/collect/t;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->createEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
