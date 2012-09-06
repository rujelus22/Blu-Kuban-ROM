.class final Lcom/google/common/base/Receivers$4;
.super Ljava/lang/Object;
.source "Receivers.java"

# interfaces
.implements Lcom/google/common/base/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Receivers;->compose(Ljava/lang/Iterable;)Lcom/google/common/base/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Receiver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$receivers:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/common/base/Receivers$4;->val$receivers:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/google/common/base/Receivers$4;->val$receivers:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Receiver;

    .line 102
    .local v1, receiver:Lcom/google/common/base/Receiver;,"Lcom/google/common/base/Receiver<TT;>;"
    invoke-interface {v1, p1}, Lcom/google/common/base/Receiver;->accept(Ljava/lang/Object;)V

    goto :goto_6

    .line 104
    .end local v1           #receiver:Lcom/google/common/base/Receiver;,"Lcom/google/common/base/Receiver<TT;>;"
    :cond_16
    return-void
.end method
