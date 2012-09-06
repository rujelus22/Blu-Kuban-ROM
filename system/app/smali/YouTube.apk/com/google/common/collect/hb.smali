.class final Lcom/google/common/collect/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/he;


# instance fields
.field final synthetic a:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Lcom/google/common/base/v;)V
    .registers 2
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/base/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/base/v;

    invoke-interface {v0, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
