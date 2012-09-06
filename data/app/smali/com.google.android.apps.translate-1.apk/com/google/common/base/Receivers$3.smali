.class final Lcom/google/common/base/Receivers$3;
.super Ljava/lang/Object;
.source "Receivers.java"

# interfaces
.implements Lcom/google/common/base/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Receivers;->compose([Lcom/google/common/base/Receiver;)Lcom/google/common/base/Receiver;
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
.field final synthetic val$receivers:[Lcom/google/common/base/Receiver;


# direct methods
.method constructor <init>([Lcom/google/common/base/Receiver;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/common/base/Receivers$3;->val$receivers:[Lcom/google/common/base/Receiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/base/Receivers$3;->val$receivers:[Lcom/google/common/base/Receiver;

    .local v0, arr$:[Lcom/google/common/base/Receiver;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 82
    .local v3, receiver:Lcom/google/common/base/Receiver;,"Lcom/google/common/base/Receiver<-TT;>;"
    invoke-interface {v3, p1}, Lcom/google/common/base/Receiver;->accept(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 84
    .end local v3           #receiver:Lcom/google/common/base/Receiver;,"Lcom/google/common/base/Receiver<-TT;>;"
    :cond_e
    return-void
.end method
