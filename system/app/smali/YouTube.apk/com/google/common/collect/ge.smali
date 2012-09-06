.class final Lcom/google/common/collect/ge;
.super Lcom/google/common/collect/gd;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 2
    .parameter

    .prologue
    .line 3753
    iput-object p1, p0, Lcom/google/common/collect/ge;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/gd;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3757
    invoke-virtual {p0}, Lcom/google/common/collect/ge;->a()Lcom/google/common/collect/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/gz;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
