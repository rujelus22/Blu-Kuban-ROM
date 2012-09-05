.class final Lcom/google/common/collect/am;
.super Lcom/google/common/collect/ai;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/google/common/collect/am;->a:Lcom/google/common/collect/AbstractMultimap;

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/ai;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ai;)V

    .line 633
    return-void
.end method
