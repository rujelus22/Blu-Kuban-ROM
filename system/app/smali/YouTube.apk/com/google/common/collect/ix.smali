.class final Lcom/google/common/collect/ix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final synthetic a:Lcom/google/common/collect/iw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iw;)V
    .registers 2
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/google/common/collect/ix;->a:Lcom/google/common/collect/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 824
    check-cast p1, Lcom/google/common/collect/ir;

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
