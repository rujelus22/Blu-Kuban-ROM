.class final Lcom/google/common/collect/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final synthetic a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/common/collect/cg;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/common/collect/cg;->a:Ljava/util/Collection;

    if-ne p1, v0, :cond_6

    const-string p1, "(this Collection)"

    :cond_6
    return-object p1
.end method
