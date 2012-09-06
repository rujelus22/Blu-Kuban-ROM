.class final Lcom/google/common/base/Flags$4;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 463
    invoke-static {}, Lcom/google/common/base/Flags;->access$100()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Flag;

    .line 464
    .local v0, f:Lcom/google/common/base/Flag;
    invoke-virtual {v0}, Lcom/google/common/base/Flag;->setParsed()V

    goto :goto_8

    .line 465
    .end local v0           #f:Lcom/google/common/base/Flag;
    :cond_18
    return-void
.end method
