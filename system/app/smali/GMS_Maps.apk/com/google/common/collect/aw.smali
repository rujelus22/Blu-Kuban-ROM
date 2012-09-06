.class Lcom/google/common/collect/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/collect/av;


# direct methods
.method constructor <init>(Lcom/google/common/collect/av;)V
    .registers 2
    .parameter

    .prologue
    .line 2831
    iput-object p1, p0, Lcom/google/common/collect/aw;->a:Lcom/google/common/collect/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/google/common/collect/aw;->a:Lcom/google/common/collect/av;

    invoke-virtual {v0}, Lcom/google/common/collect/av;->j()V

    .line 2835
    return-void
.end method
