.class final Lcom/google/common/collect/ht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final synthetic a:Lcom/google/common/collect/hs;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hs;)V
    .registers 2
    .parameter

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/google/common/collect/ht;->a:Lcom/google/common/collect/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 2162
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
