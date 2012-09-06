.class final Lcom/google/common/collect/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 142
    check-cast p1, Lcom/google/common/collect/ir;

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
