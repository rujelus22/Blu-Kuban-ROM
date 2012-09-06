.class final Lcom/google/common/base/Receivers$2;
.super Ljava/lang/Object;
.source "Receivers.java"

# interfaces
.implements Lcom/google/common/base/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Receivers;->collect(Ljava/util/Collection;)Lcom/google/common/base/Receiver;
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
.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/common/base/Receivers$2;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/base/Receivers$2;->val$collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
